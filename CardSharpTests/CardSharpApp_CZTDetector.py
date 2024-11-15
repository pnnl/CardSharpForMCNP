# Cardsharp for MCNP
# @author: Nikhil Deshmukh, Mital Zalavadia
#==============================================================================
import numpy as np
import matplotlib.pyplot as plt

import sys
sys.path.append('../CardSharp/')
import CardSharp as cs
import CardSharpMats as csmat
import CardSharpModelRun as csrun
import CardSharpMcTallyRead as cstal

"""
This file models a CZT detector and illustrates card sharp features.
"""
modeParticles = ['p']
nocoh = 0 # keep coherent scatter
ides = 0 # TTB
nodop = 1
cutn = 0.000 # default 0
cutp = 0.010 # default 1 keV, here 10 keV
cute = 0.020 # default 1 keV, here 20 keV
notrn = False
numParticles = int(1E6) # Relative error below 10%, preferably 5%

# Local Windows MCNP path
mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/"
mcnpDataPath="C:/MY_MCNP/MCNP_DATA/"
numTasks = 14
#############################################################################
def main():
  """ """
  runTestModel(buildOnly=False)
#############################################################################
def runTestModel(buildOnly=False):
  """ """
  #---------------------------------------
  baseFolder = '../CardSharpOutput/Tests/CardSharpApp_CZTDetector/'
  modelFolder = baseFolder + ''
  modelFilename = 'CZT_detector.i'
  tallyFile = modelFilename + 'm'
  
  cnDet = makeTestModel(modelFolder, modelFilename) #return
  if buildOnly:
    return
  #-------------------------------------------------------
  s = csrun.runMcnpModel(modelFolder, modelFilename, numTasks=numTasks); #return
  if s: 
    print(s)
  else: # If no error, do plot
    doPlots(modelFolder, tallyFile, cnDet)
#############################################################################
def makeTestModel(modelFolder, modelFilename, binSize=0.001): # 1 keV default
  """
  Make a model with a Co-60 source and four detectors around it.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(modeParticles)
  #===========MATERIALS START==============================
  customMatString = """\
c     Cobalt 60
c     rho = 8.9 g/cc
m{}   60000   -1.0   $ CO"""
      
  # insert custom material into database
  csmat.matInsert(key='Co60', matString=customMatString, defaultDensity=-2.55)
  
  # Some materials from compendium need a shorter alias
  csmat.matAddAlias('CZT_fixed', 'CZT')
  csmat.matAddAlias('Polycarbonate', 'PC') # 1.2 g/cc
  # insert material into card deck
  cd.insertMaterialStrings(['Co60', 'Aluminum', 'CZT', 'Air', 'PC', 'FR4PCB'])
  #===========MATERIALS END/GEOMETRY START==============================
  worldRadius = 50
  # source cell cone------------------------------------------------------
  snSource, cnSource = cd.insertMacroAndCellCone(name='Source', base=(-2,0,0),
                  height=(3,0,0), radiusBase=1.0, radiusTop=0.5, matName='Co60')
  # detector block ------------  
  cnCryst, outerSurf = insertCZTDetector(cd, uni=1) # make detector model
  angles = [0, 90, 180, 270]; shifts = [(0,0,4), (0,4,0), (0,0,-4), (0,-4,0)]
  cnDetList=[]
  for i in range(4): # insert it multiple times
    rotMatrix=cd.getRotationMatrix(rotationAxis='X', angleDeg=angles[i])
    cn = cd.insertCellString(name='Detector from other uni', surfaceList=[-outerSurf], 
                             fill=1, shift=shifts[i], rotMatrix=rotMatrix)    
    cnDetList.append(cn)
  # World-----------------------------------------------------------
  worldSurfaceNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=worldRadius,
                               worldMat='Air')
  #===========GEOMETRY END/SOURCE START==============================  
  enLines = [1.17, 1.33]; lineWts = [0.998, 0.999] # Co 60  
  emissionXDim = emissionYDim = emissionZDim = 4 # Source sampling region
  cd.insertSource_BoxWithAngularAndEnergyDistrib(
                          xRange=(-emissionXDim/2, emissionXDim/2), 
                          yRange=(-emissionYDim/2, emissionYDim/2), 
                          zRange=(-emissionZDim/2, emissionZDim/2),
                          dirDistrib=None, vec=[0,0,1], coneHalfAngleDeg=0, # 180, 4pi
                          ergDistrib='Discrete', eList=enLines, relFq=lineWts,
                          rejCell=cnSource, eff=0.2 # reject if not inside conical source
                          )
  
  #===========SOURCE END/TALLY START==============================
  # F8 tally enclosing detector, zero/epsilon bins plus user bins
  eList = [0, 1E-5] + list(np.linspace(0.01, 2.0, 1024))
  cellUnionString = '(%d<(%d %d %d %d))'%(cnCryst, cnDetList[0], cnDetList[1], 
                     cnDetList[2], cnDetList[3]) # '(4<(15 16 17 18))'
  cd.insertF8Tally(tallyNum=1, cellInfo=cellUnionString, eList=eList, par='p')
  #===========TALLY END==============================
  cd.insertPhysicsCard(nocoh=nocoh, ides=ides, nodop=nodop, cutp=cutp, cutn=cutn, cute=cute)
  cd.insertOutputControlCards(nps=numParticles, notrn=notrn)

  print('>>>>>> END DEBUG PRINTS >>>>>>>>>>\n\n')
  #=====================================================
  titleCard = 'Modeling CZT detector'
  outputStr = cd.assembleDeck(titleCard=titleCard)

  # Save file ...
  print('Writing to:', modelFolder+modelFilename)
  with open(modelFolder+modelFilename, "w") as text_file:
    text_file.write(outputStr)
  print('----------------')
  return cellUnionString
#############################################################################
# Inserts detector geometry into another universe and return the cell number
# of the crystal which will be used for the F8 tallies?
def insertCZTDetector(cd, uni=1, shift=(0,0,0), rotMatrix=None):
  """
  Keep the front surface at Z=0. Easier to place into the world.
  Model the following pieces:
  -Outer tube - Square cross section, outer dimensions 25.4 mm
               Outer length - 61.72 mm
               Wall Thickness - 1.65 mm           
  -Front plate - Aluminum 1.14 mm thick
  -Polycarbonate cup, square cross section, square flange with circular hole
                  It is more of a square cross section ring and flange.
                  Cup wall thickness - 0.04 inch (1 mm)
                  Air around crystal - 1 mm ?
                  Flange thickness - 0.15*2.54=3.81 mm
  -CZT - 1 cm x 1 cm. Thickness - 1 cm
        Crystal face is 6.33 mm from body face
  -Aluminum separator between crystal and electronics
  -PCBs behind - 5 of them.
  -End wall after the PCBs with USB cutout.
  """
  detStr = 'CZT_det'
  bodyLength = 6.172 # cm
  bodyThickness = 0.165
  bodyWidth = 2.54
  worldWidth = 2.54 + .1
  minZExtent = 0
  maxZExtent = bodyLength
  
  capThickness = 0.134
  frontCapRecess = 0.114
  capToDetector = 0.439 # front of cap to front of detector
  crystWidth = 1
  # Base everything from the front face, which is Z=0, with increasing Z other components
  # The general pattern is to instantiate at origin and then shift
  # The shift is a sum of first shifting the feature's front face to zero and 
  # then the additional shift that is the features recess
  surfaceList, cnOuter = cd.insertMacroAndCellRppShell(name='OuterTube', 
                            innerXWidth=bodyWidth-2*bodyThickness, outerXWidth=bodyWidth,
                            innerYWidth=bodyWidth-2*bodyThickness, outerYWidth=bodyWidth,
                            innerZWidth=bodyLength,outerZWidth=bodyLength,
                            matName='Aluminum',
                            shift=(0,0,bodyLength/2), uni=uni)

  snFCap, cnFCap = cd.insertMacroAndCellRpp(name='Front cap',
                      xMinMax=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                      yMinMax=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                      zMinMax=(-capThickness/2, capThickness/2),
                      matName='Aluminum', 
                      shift=(0,0,capThickness/2+frontCapRecess), uni=uni)

  detectorRecess = frontCapRecess+capToDetector
  snCryst, cnCryst = cd.insertMacroAndCellRpp(name=detStr,
                               xMinMax=(-crystWidth/2, crystWidth/2),
                               yMinMax=(-crystWidth/2, crystWidth/2),
                               zMinMax=(-crystWidth/2, crystWidth/2),
                               matName='CZT', 
                               shift=(0,0,crystWidth/2+detectorRecess), uni=uni)
  # poly ring RPP shell  
  ringThickness = 0.1 # ImageJ scaled from drawing
  ringWidth = 1.392 # Scaled from drawing
  ringLength = 0.51 * 2.54 # email, inches
  polyRingRecess = detectorRecess-ringThickness
  surfaceList, cnPolyRing = cd.insertMacroAndCellRppShell(name='ring of poly cup', 
                               innerXWidth=ringWidth-2*ringThickness, outerXWidth=ringWidth,
                               innerYWidth=ringWidth-2*ringThickness, outerYWidth=ringWidth,
                               innerZWidth=ringLength,outerZWidth=ringLength,
                               matName='PC',
                               shift=(0,0,ringLength/2+polyRingRecess), uni=uni)
  # poly flange RPP minus RCC
  flangeWidth = 1.5 # Should be same as front cap width
  flangeHeight = .15 * 2.54 # email
  flangeRecess = polyRingRecess + ringLength
  snFlange = cd.insertMacroRpp(name='flange', xMinMax=(-flangeWidth/2, flangeWidth/2), 
                               yMinMax=(-flangeWidth/2, flangeWidth/2), 
                               zMinMax=(-flangeHeight/2, flangeHeight/2))
  flangeHoleDia = 1
  snFlangeHole = cd.insertMacroRcc(name='flange hole', base=(0,0,-flangeHeight/2), 
                                   axis=(0,0,flangeHeight), radius=flangeHoleDia/2)
  
  cnPolyFlange = cd.insertCellString(name='flange of cup', surfaceList = [-snFlange, snFlangeHole],
                    matName='PC', shift=(0,0,flangeHeight/2+flangeRecess), uni=uni)

  # Add aluminum wall separating crystal cavity 1.27 mm
  sepRecess = flangeRecess + flangeHeight + 0.2
  sepThickness = 0.127 # cm
  snSep, cnSep = cd.insertMacroAndCellRpp(name='Separator',
                    xMinMax=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                    yMinMax=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                    zMinMax=(-sepThickness/2, sepThickness/2),
                    matName='Aluminum', shift=(0,0,sepThickness/2+sepRecess), uni=uni)

  # Add five PCBs behind crystal
  pcbRecess = flangeRecess + flangeHeight + .5
  pcbXWidth = 1.0; pcbYWidth = 0.05
  pcbZLength = 2.8
  
  cnPcbList = []
  for i, yPos in enumerate([-0.6, -0.3, 0, 0.3, 0.6]):
    snPcb, cnPcb = cd.insertMacroAndCellRpp(name='PCB'+str(i),
                               xMinMax=(-pcbXWidth/2, pcbXWidth/2),
                               yMinMax=(-pcbYWidth/2, pcbYWidth/2),
                               zMinMax=(-pcbZLength/2, pcbZLength/2),
                               matName='FR4PCB',
                               shift=(0,yPos,pcbZLength/2+pcbRecess), uni=uni)
    cnPcbList.append(cnPcb)

  # Add backwall, 7 mm thick, with cavity of air (1.3cmx1cmx6mm)
  # Add aluminum wall separating crystal cavity 1.27 mm
  backWallRecess = pcbRecess + pcbZLength + 0.04
  backWallThickness = 0.7 # cm
  snBWall, cnBWall = cd.insertMacroAndCellRppShell2(name='BackWall',
                        xMinMaxOut=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                        yMinMaxOut=(-bodyWidth/2+bodyThickness, bodyWidth/2-bodyThickness),
                        zMinMaxOut=(-backWallThickness/2, backWallThickness/2),
                        xMinMaxIn=(-0.65, 0.65),
                        yMinMaxIn=(-0.5, 0.5),
                        zMinMaxIn=(backWallThickness/2-0.6, backWallThickness/2),
                        matName='Aluminum', 
                        shift=(0,0,backWallThickness/2+backWallRecess), uni=uni)

  # Air envelope
  snWorld = cd.insertMacroRpp(name='DetectorWorld',
                               xMinMax=(-worldWidth/2, worldWidth/2), 
                               yMinMax=(-worldWidth/2, worldWidth/2), 
                               zMinMax=(minZExtent-0.1, maxZExtent+0.1))
  cn = cd.insertCellString(name='DetectorWorld', 
                    #surfaceList=[-snWorld, snCryst],
                    cellComplementList = [cnOuter, cnFCap, cnCryst, cnPolyRing, 
                    cnPolyFlange, cnSep, cnBWall] + cnPcbList,
                    matName='Air', uni=uni)

  # outer surface to bring it into UNI=0
  outerSurf = cd.insertMacroRpp(name='UniBounding', 
                               xMinMax=(-worldWidth/2, worldWidth/2),
                               yMinMax=(-worldWidth/2, worldWidth/2),
                               zMinMax=(minZExtent-0.1, maxZExtent+.1))
                           
  return cnCryst, outerSurf
###############################################################################
def doPlots(modelFolder, tallyFile, cnDet):
  """
  cnDet is the cell number of the detector.
  detStr is used for plot title only.
  """
  # read/plot the F8 tally
  print('Plot for cnDet: ', cnDet)
  print('Object num:', cnDet)
  cnDet = None # take the first tally of the tallyNumWType
  t_or_d = 0 # total
  e, s, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=18, 
                  objectNum=cnDet, t_or_d=t_or_d)
  #----------------------------------------------------------------------------
  plt.figure(figsize=(6,4))
  plt.semilogy(e, s, drawstyle='steps', label=tallyFile, linewidth=1, alpha=.5)
  plt.title('CZT Detector'); plt.legend(); plt.grid(); plt.show()

  plt.figure(figsize=(6,4))
  plt.plot(e, err, drawstyle='steps', label=tallyFile, linewidth=1); 
  plt.title('Rel Err'); plt.legend(); plt.grid(); plt.show()
#############################################################################
if __name__ == '__main__':
  main()