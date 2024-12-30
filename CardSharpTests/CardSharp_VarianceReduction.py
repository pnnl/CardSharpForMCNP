# Cardsharp for MCNP
# @author: Nikhil Deshmukh
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
This file models geometry splitting as a variance reduction technique.
"""

modeParticles = ['p'] #['p', 'e']
nocoh = 0 # 0 keep coherent scatter
ides = 0
nodop = 1
cutn = 0.000 # default 0
cutp = 0.001 # default 1 keV
cute = 0.001 # default 1 keV
notrn = False #

worldSurfaceNum = 100
nps = 1E7

# Local Windows MCNP path
mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/"
mcnpDataPath="C:/MY_MCNP/MCNP_DATA/"
numTasks=14 # 14
#############################################################################
def main():
  """ """ 
  runGeomSplittingModel()
  
def runGeomSplittingModel():
  """
  """  
  modelFolder = '../CardSharpOutput/Tests/CardSharpApp_VarReduction/'
  modelFilename = 'variance_reduction.i'
  tallyFilename = 'variance_reduction.im'
  #outputFilename = 'variance_reduction.io'

  # The original jezebel reactor with correct thickness of Nickel
  geomSplittingModel(modelFolder, modelFilename)
  
  # Modifying jezebel with different reactors to see the effect of different materials
  
  #jezebelModel(modelFolder, modelFilename, reflectorMat='Void')
  #jezebelModel(modelFolder, modelFilename, reflectorMat='WaterLiquid', reflectorThickness=1)
  #jezebelModel(modelFolder, modelFilename, reflectorMat='Beryllium', reflectorThickness=1)
  #return
  #-------------------------------------------------------
  runSlurm = 0
  if runSlurm == 0: # local
    # if the MCNP paths above are correct, comment out the return
    s = csrun.runMcnpModel(modelFolder, modelFilename, 
                           mcnpCodePath=mcnpCodePath, mcnpDataPath=mcnpDataPath,
                           numTasks=numTasks); #return
  else: # slurm, run on constance/deception
    pass
    import slurmUtils as su
    localFolder = modelFolder # 'C:/Data/PNNL2/MyMCNP/code/ZOutput/OT&E/'
    inputFilename = modelFilename #
    remoteFolder = '/qfs/people/desh752/MyMCNP/ZOutput/Test/'
    su.slChoice = 'constance' # 'deception'
    # username/passwd in slurm file
    # if trying to follow up an already submitted job, folder name has to be correct
    # folder name can change with date!!!
    alreadySubmittedJobId = '' 
    s = su.runMcnpSlurm(localFolder, inputFilename, remoteFolder, alreadySubmittedJobId=alreadySubmittedJobId)
  #-------------------------------------------------------
  # If no error, do plot
  if s:
    print(s)
  else:
    #extractResult(modelFolder, outputFilename)
    doPlots(modelFolder, tallyFilename)
  
#############################################################################
def geomSplittingModel(modelFolder, modelFilename):
  """
  Object is to model a thick lead slab with a source on one side and a detector 
  on the other side.
  We set up the geometry with sides.
  On one side the lead slab is modeled as a single cell.
  On the other side the lead slab is modeled as three layers with each cell
  having a different importance.  
  """
  cd = cs.CardDeck()
  cd.setParticlesList(modeParticles)
  #===========MATERIALS START==============================
#  csmat.nextMatNum = 10 # if first few matNums need to be reserved for some imported model
#  csmat.reloadMatsDict()
#  csmat.matSearch('lanthanum'); return # search for material by partial name

  cd.insertMaterials(['Lead', 'SteelMediumCarbon1045', 'Aluminum'])
  #===========MATERIALS END==============================
  #===========GEOMETRY START==============================
  worldRadius = 60
  # Lead slab-----------------------------------------------------------
  thck = 6 # cm
  width = 20
  mat = 'Aluminum'
  sn1, cn1 = cd.insertMacroAndCellRpp(name='Block 1', xMinMax=(-thck/2, thck/2),
                    yMinMax=(-width/2, width/2), zMinMax=(-width/2, width/2), matName=mat,
                    shift=(0,-width/2,0))

  thck = thck/3
  sn2a, cn2a = cd.insertMacroAndCellRpp(name='Block 2a', xMinMax=(-thck/2, thck/2),
                    yMinMax=(-width/2, width/2), zMinMax=(-width/2, width/2), matName=mat,
                    shift=(-thck,width/2,0), impString='imp:p=1')
  sn2a, cn2a = cd.insertMacroAndCellRpp(name='Block 2b', xMinMax=(-thck/2, thck/2),
                    yMinMax=(-width/2, width/2), zMinMax=(-width/2, width/2), matName=mat,
                    shift=(0,width/2,0), impString='imp:p=5')
  sn2a, cn2a = cd.insertMacroAndCellRpp(name='Block 2c', xMinMax=(-thck/2, thck/2),
                    yMinMax=(-width/2, width/2), zMinMax=(-width/2, width/2), matName=mat,
                    shift=(thck,width/2,0), impString='imp:p=25')
                                     
  # insert sphere to indicate source/det positions
  sourcePos = (-40,0,0)
  detPos1=(40,-width,0); detPos2=(40,width,0)

  cd.insertMacroAndCellSphere(name='Source', pos=sourcePos, radius=1)
  cd.insertMacroAndCellSphere(name='Det 1', pos=detPos1, radius=1)
  cd.insertMacroAndCellSphere(name='Det 2', pos=detPos2, radius=1)
  
  # World-----------------------------------------------------------
  sn, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=worldRadius,
              worldMat='Void', worldDensity=0, worldSurfaceNum=worldSurfaceNum)

  #===========GEOMETRY END==============================
  #===========SOURCE START==============================
  en = 0.5 # MeV
  cd.insertSource_PointWithAngularAndEnergyDistrib(pos=sourcePos,
                dirDistrib='Restrict', vec=[1,0,0], coneHalfAngleDeg=45,
                ergDistrib='Discrete', eList=[en], relFq=[1],
                par='p')
  #===========SOURCE END==============================
  #===========TALLY START==============================
  eList = np.linspace(0, en, 20)
  cd.insertF5Tally(tallyNum=1, pos=detPos1, eList=eList, par='p')
  cd.insertF5Tally(tallyNum=2, pos=detPos2, eList=eList, par='p')
  #===========TALLY END==============================
  cd.insertPhysicsCard(nocoh=nocoh, ides=ides, nodop=nodop, cutp=cutp, cutn=cutn, cute=cute)
  cd.insertOutputControlCards(nps=nps, notrn=notrn)

  print('>>>>>> END DEBUG PRINTS >>>>>>>>>>\n\n')
  #=====================================================
  titleCard = 'Jezebel reactor'
  deckStr = cd.assembleDeck(titleCard=titleCard) #, matString=matString, 
                      #srcString=srcString, tallyString=tallyString, 
                      #physicsString=physicsString, outputControlString=outputControlString)

  cd.saveDeck(modelFolder, modelFilename, deckStr)
  print('----------------')
  return

#############################################################################
def doPlots(modelFolder, tallyFile):
  """
  Plot the spectrum and uncertainty seen by the two detectors.
  """
  #cstal.exploreMctalFile(modelFolder+tallyFile); return
  # read/plot the F5 tallies
  t_or_d = 0 # total or direct (uncollided)
  e1, s1, err1 = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=15, objectNum=0, t_or_d=0)
  e2, s2, err2 = cstal.getTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=25, objectNum=0, t_or_d=0)

  plt.plot(e1, s1, drawstyle='steps', label='No Variance Reduction', linewidth=1, alpha=.5)
  plt.plot(e2, s2, drawstyle='steps', label='With Variance Reduction', linewidth=.5)
  plt.semilogy()
  plt.title('VarRed '); plt.grid(); plt.legend(); plt.show()
  
  plt.plot(e1, err1, label='No Variance Reduction');
  plt.plot(e2, err2, label='With Variance Reduction');
  #plt.semilogy()
  plt.title('Rel Err'); plt.legend(); plt.grid(); plt.show()

#############################################################################
if __name__ == '__main__':
  main()

