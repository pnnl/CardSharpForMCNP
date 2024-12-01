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

np.seterr(under='ignore', divide='ignore')

"""
This file develops an application to generate Bremmstrahlung spectra from 
transmission (Tx) or reflection (Rx) targets.
Uses an F5 point tally. Alternative, F1 tally.
"""

modeParticles = ['p','e'] #['p', 'e']
nocoh = 0 # 0 keep coherent scatter
# keep ides at 0 for bremmstrahlung. See Note 2, Page 3.74, MCNP 6.1 manual
ides = 0
nodop = 1
cutn = 0.000 # default 0
cutp = 0.001 # default 1 keV, 2keV for Tx, 12 keV for reflection removes low energy peaks
cute = 0.001 # default 1 keV
notrn = False # Does not work for source particle e ???

numParticles = int(1E3 * 1E2) # 1E8 for Tx target, 1E7 for Reflection target
worldSurfaceNum = 100
txTarget = True
gunVolt_kVp = 80 # kVp, converted to MVp later
binSize = 0.001/2 # in MeV (0.5 keV)

# Local Windows MCNP path
mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/"
mcnpDataPath="C:/MY_MCNP/MCNP_DATA/"
numTasks=14 # 14
#############################################################################
def main():
  """ """
  modelFolder = '../CardSharpOutput/Tests/CardSharpApp_Bremms/'
  modelFilename = 'bremms.i'
  tallyFilename = 'bremms.im'
  
  bremmsModel(modelFolder, modelFilename, binSize=binSize) 
  #return
  #-------------------------------------------------------
  # if the MCNP paths above are correct, comment out the return
  ret = csrun.runMcnpModel(modelFolder, modelFilename, 
                           mcnpCodePath=mcnpCodePath, mcnpDataPath=mcnpDataPath,
                           numTasks=numTasks); #return
  #-------------------------------------------------------
  # If no error, do plot
  if ret:
    print(ret)
  else:
    doPlotsF5(modelFolder, tallyFilename)
    #doPlotsF1(modelFolder, tallyFilename) # Needs many more histories than F5
  
#############################################################################
def bremmsModel(modelFolder, modelFilename, binSize=0.001): # 1 keV default
  """  
  Don't mix auto numbering with manual numbering, unless you know what you are
  doing. Use separate ranges for manual and auto and manage the cellNumList 
  for the final Universe cell generation.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(modeParticles)
  #===========MATERIALS START==============================
  csmat.matAddAlias('Tungsten', 'W')
  cd.insertMaterialStrings(['W'])
  #csmat.matSearch('lanthanum'); return # search for material by partial name
#  csmat.nextMatNum = 10 # if first few matNums need to be reserved
#  csmat.reloadMatsDict()  
  #===========MATERIALS END==============================
 
  universeRadius = 70
  srcToOrigin = 5
  detToOrigin = 40
  #--------------------------------------------------
  # instantiate source debug cell, tally debug cell, target, optional filter
  # and the electron source
  # source debug cell-----------------------------------------------------------
  sn, cn = cd.insertMacroAndCellSphere(name='source', surfaceNum=None, cellNum=None, radius=0.5,
              pos=(0,-srcToOrigin,0), matName='Void', density=0)
  #cellString += cs; macroString += ms; cellList.append(cn)

  # tally debug cell RCC-----------------------------------------------------------
  snA, cn = cd.insertMacroAndCellRcc(name='Tx detector', base=(0,detToOrigin,0),
                              axis=(0,0.5,0), radius=1, matName='Void') # ***
  sn, cn = cd.insertMacroAndCellRcc(name='Tx detector', base=(0,detToOrigin,5),
                              axis=(0,0.5,0), radius=1, matName='Void') # ***
  sn, cn = cd.insertMacroAndCellRcc(name='Tx detector', base=(0,detToOrigin,10),
                              axis=(0,0.5,0), radius=1, matName='Void') # ***

  # tally debug cell RCC-----------------------------------------------------------
  snB, cn = cd.insertMacroAndCellRcc(name='Ref detector', base=(detToOrigin,0,0),
                              axis=(0.5,0,0), radius=1, matName='Void')
  sn, cn = cd.insertMacroAndCellRcc(name='Ref detector', base=(detToOrigin,0,5),
                              axis=(0.5,0,0), radius=1, matName='Void')
  sn, cn = cd.insertMacroAndCellRcc(name='Ref detector', base=(detToOrigin,0,10),
                              axis=(0.5,0,0), radius=1, matName='Void')
  
  if txTarget: # Tx target
    foilThicknessCm = 4*1E-6*100 # 4 micron to cm
    foilXDim = foilZDim = .01
    sn, cn = cd.insertMacroAndCellRpp(name='Tungsten', xMinMax=(-foilXDim/2, foilXDim/2), 
                                 yMinMax=(-foilThicknessCm/2, foilThicknessCm/2),
                  zMinMax=(-foilZDim/2, foilZDim/2), shift=(0,0,0), matName='W')
  else: # Rx target
#  rotMat_X45 = cd.getRotationMatrix(rotationAxis='X', angleDeg=45)
#  trNum = cd.insertTRString(name='RotateBy45', shift=(0,0,0), rotMatrix=rotMat_X45) # xPos here should be xShift???
    sn, cn = cd.insertMacroAndCellWedge(name='Reflection target', vertex=(0,0,0), 
                  base1=(1,0,0), base2=(0,-1,0), height=(0,0,1), 
                  matName='W', density=0, 
                  shift=(-0.5,0.5,-0.5), rotMatrix=None)
    
  # universe-----------------------------------------------------------
  sn, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=universeRadius,
              worldMat='Void', worldDensity=0, worldSurfaceNum=worldSurfaceNum)

  #===========GEOMETRY END==============================
  
  #===========SOURCE START==============================
  # Point source with angular biasing
  cd.insertSource_PointWithAngularAndEnergyDistrib(pos=[0,-srcToOrigin,0], 
        dirDistrib='Restrict', vec=[0,1,0], coneHalfAngleDeg=.01,
        ergDistrib='Discrete', eList=[gunVolt_kVp/1000], relFq=[1], par='e')  
  #===========SOURCE END==============================

  #===========DETECTOR START==============================
  # Tx detector
  #eList = np.linspace(0.000, 0.180, 181)
  eList = np.arange(0.000, gunVolt_kVp/1000+binSize, binSize) # 1 keV bins, explicit list
  numBins = gunVolt_kVp/1000/binSize
  eList = '0  1E-5  0.001  %di  %.4f'%(numBins, gunVolt_kVp/1000) # zero/epsion bins and i notation
  cd.insertF5Tally(tallyNum=11, pos=(0,detToOrigin,0), r=1, eList=eList, par='p')
  cd.insertF5Tally(tallyNum=12, pos=(0,detToOrigin,5), r=1, eList=eList, par='p')
  cd.insertF5Tally(tallyNum=13, pos=(0,detToOrigin,10), r=1, eList=eList, par='p')

  # Reflection detector
  cd.insertF5Tally(tallyNum=21, pos=(0,detToOrigin,0), r=1, eList=eList, par='p')
  cd.insertF5Tally(tallyNum=22, pos=(0,detToOrigin,5), r=1, eList=eList, par='p')
  cd.insertF5Tally(tallyNum=23, pos=(0,detToOrigin,10), r=1, eList=eList, par='p')

  #-------Insert F1 tallies for comparison
  # Can F1 tally on surface of the cylinder around detector do the same job as F5?
  # The dot 1, curved surface on cylinder gets no signal as expected.
  # The dot 2/3 surfaces on cylinder get some signal, they are the flat faces.
  # In any case, the F5 tally does much better, and with fewer histories

  surfNumTxDet = str(snA.facets['Top']) # snA + .2
  cd.insertF1Tally(tallyNum=3, surfInfo=surfNumTxDet, eList=eList, mList=None, par='p') # Flat surface

  surfNumRxDet = str(snB.facets['Top']) # snB + .2
  cd.insertF1Tally(tallyNum=4, surfInfo=surfNumRxDet, eList=eList, mList=None, par='p')
  #---------------
  cd.insertDebugTallyString(worldSurfaceNum=worldSurfaceNum)
  #===========DETECTOR END==============================
  
  cd.insertPhysicsCard(nocoh=nocoh, ides=ides, nodop=nodop, cutp=cutp, cutn=cutn, cute=cute)
  cd.insertOutputControlCards(nps=numParticles, notrn=notrn)

  print('>>>>>> END DEBUG PRINTS >>>>>>>>>>\n\n')
  #=====================================================
  titleCard = 'Bremmstrahlung Xray source, simple model.'
  deckStr = cd.assembleDeck(titleCard=titleCard) #, matString=matString, 
                      #srcString=srcString, tallyString=tallyString, 
                      #physicsString=physicsString, outputControlString=outputControlString)

  cd.saveDeck(modelFolder, modelFilename, deckStr)
  print('----------------')
  return  
#############################################################################
def doPlotsF5(modelFolder, tallyFile):
  """ 
  """
  # read/plot the F5 tallies
  specString = str(gunVolt_kVp)+'_kVp'
  if txTarget:
    t_or_d = 0 # 0 for total, 1 for direct/uncollided
    e, s, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=115, objectNum=0, t_or_d=t_or_d)
    e2, s2, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=125, objectNum=0, t_or_d=t_or_d)
    e3, s3, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=135, objectNum=0, t_or_d=t_or_d)
    plt.plot(e, s, drawstyle='steps', label='center', linewidth=2, alpha=.5)
    plt.plot(e, s2, drawstyle='steps', label='2', linewidth=.5)
    plt.plot(e, s3, drawstyle='steps', label='3', linewidth=.5)
    plt.title('Tx Bremms '+specString); plt.grid(); plt.legend()
    plt.semilogy()
    plt.show()
    plt.plot(e, err, drawstyle='steps'); plt.grid(); plt.title('Rel Err'); plt.show()
  else:
    t_or_d = 0 # 0 for total, 1 for direct/uncollided
    e, s, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=215, objectNum=0, t_or_d=t_or_d)
    e2, s2, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=225, objectNum=0, t_or_d=t_or_d)
    e3, s3, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=235, objectNum=0, t_or_d=t_or_d)
    plt.plot(e, s, drawstyle='steps', label='center', linewidth=2, alpha=.5)
    plt.plot(e, s2, drawstyle='steps', label='2', linewidth=.5)
    plt.plot(e, s3, drawstyle='steps', label='3', linewidth=.5)
    plt.title('Ref bremms '+specString);plt.grid(); plt.legend()
    plt.semilogy()
    plt.show()
    plt.plot(e, err, drawstyle='steps'); plt.grid(); plt.title('Rel Err'); plt.show()

  # save to file
  saveSpectrumToFile(e,s)
  
def doPlotsF1(modelFolder, tallyFile):
  """
  F1 requires many more histories compared to F5.
  """  
  cstal.exploreMctalFile(modelFolder+tallyFile); #return
  t_or_d = 0 # total
  if txTarget:
    e, s, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=31, 
                                        objectNum=2.2, t_or_d=t_or_d)
    plt.plot(e, s, label='Spectrum at Tx F1 tally surface 2.2')
    plt.legend(); plt.grid(); plt.show()
    plt.plot(e, err); plt.grid(); plt.title('Rel Err'); plt.show()
 
  else:
    #-------------------------------
    t_or_d = 0 # total
    e, s, err = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=41, 
                                        objectNum=5.2, t_or_d=t_or_d)
    plt.plot(e, s, label='Spectrum at Rx F1 tally 5.2')
    plt.legend(); plt.grid(); plt.show()
    plt.plot(e, err); plt.grid(); plt.title('Rel Err'); plt.show()
  
  return
#############################################################################
def saveSpectrumToFile(e,s):
  """ """
  if txTarget:
    filename = 'Tx_'+str(gunVolt_kVp)+'_kVp.txt'
  else:
    filename = 'Ref_'+str(gunVolt_kVp)+'_kVp.txt'
  
  print('Writing to:', filename)
  with open(filename, mode="wt") as f:
    f.write('Energy: '+str(list(e))+'\n\n') # make list so commas are printed
    f.write('Spectrum: '+str(list(s)))
#############################################################################
if __name__ == '__main__':
  main()

