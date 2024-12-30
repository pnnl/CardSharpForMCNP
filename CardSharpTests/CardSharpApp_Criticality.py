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
This file models the Jezebel reactor.
https://www.osti.gov/biblio/1344338

The Jezebel experiment of 1954-1955 was a very small, nearly-spherical, nearly-bare 
(unreflected), nearly-homogeneous assembly of plutonium alloyed with gallium. 
This experiment was used to determine the critical mass of spherical, bare, 
homogeneous Pu-alloy.   

A KCODE model to find the Keff value.
Keff - effective neutron multiplication factor

The average number of neutrons that cause new fission events is called the 
effective neutron multiplication factor, usually denoted by the symbols k-effective, 
k-eff or k. When k-effective is equal to 1, the assembly is called critical, if 
k-effective is less than 1 the assembly is said to be subcritical, and if k-effective 
is greater than 1 the assembly is called supercritical.
"""

modeParticles = ['n'] #['p', 'e']
nocoh = 0 # 0 keep coherent scatter
ides = 0
nodop = 1
cutn = 0.000 # default 0
cutp = 0.001 # default 1 keV
cute = 0.001 # default 1 keV
notrn = False #

worldSurfaceNum = 100

# Local Windows MCNP path
mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/"
mcnpDataPath="C:/MY_MCNP/MCNP_DATA/"
numTasks=14 # 14
#############################################################################
def main():
  """ """ 
  runJezebelModel()
  # modelWithReflector() # TODO
  
def runJezebelModel():
  """
  """  
  modelFolder = '../CardSharpOutput/Tests/CardSharpApp_Criticality/'
  modelFilename = 'critical.i'
  #tallyFilename = 'critical.im'
  outputFilename = 'critical.io'

  # The original jezebel reactor with correct thickness of Nickel
  jezebelModel(modelFolder, modelFilename, reflectorMat='Nickel', reflectorThickness=0.0127) # more Nickel increases Keff
  
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
#    import slurmUtils as su
#    localFolder = modelFolder # 'C:/Data/PNNL2/MyMCNP/code/ZOutput/OT&E/'
#    inputFilename = modelFilename #
#    remoteFolder = '/qfs/people/desh752/MyMCNP/ZOutput/Test/'
#    su.slChoice = 'constance' # 'deception'
#    # username/passwd in slurm file
#    # if trying to follow up an already submitted job, folder name has to be correct
#    # folder name can change with date!!!
#    alreadySubmittedJobId = '' 
#    s = su.runMcnpSlurm(localFolder, inputFilename, remoteFolder, alreadySubmittedJobId=alreadySubmittedJobId)
  #-------------------------------------------------------
  # If no error, do plot
  if s:
    print(s)
  else:
    extractResult(modelFolder, outputFilename)
  
#############################################################################
def jezebelModel(modelFolder, modelFilename, reflectorMat='Ni', reflectorThickness = 0.0127): # cm 0.005 inch
  """
  A neutron reflector is any material that reflects neutrons. This refers to 
  elastic scattering rather than to a specular reflection. The material may be 
  graphite, beryllium, steel, tungsten carbide, gold, or other materials. 
  A neutron reflector can make an otherwise subcritical mass of fissile material 
  critical, or increase the amount of nuclear fission that a critical or 
  supercritical mass will undergo.
  
  Absorber - A neutron absorber (also called a neutron poison) is a substance 
  with a large neutron absorption cross-section.
  
  MTm card is used for selecting different cross sections for a given material,
  depending upon the state of the material.  
  """
  cd = cs.CardDeck()
  cd.setParticlesList(modeParticles)
  #===========MATERIALS START==============================
#  csmat.nextMatNum = 10 # if first few matNums need to be reserved for some imported model
#  csmat.reloadMatsDict()
#  csmat.matSearch('lanthanum'); return # search for material by partial name

  csmat.matAddAlias('PlutoniumFuelGrade', 'Pu')
  cd.insertMaterials(['Pu', 'Nickel', 'WaterLiquid', 'Beryllium'])

  # for water and beryllium we have MT card cross section modifiers
  #cd.insertMTcard(matKey='WaterLiquid', sAlphaBetaList=['LWTR'])
  #cd.insertMTcard(matKey='Beryllium', sAlphaBetaList=['BE.60T'])
  
  #===========MATERIALS END==============================
  #===========GEOMETRY START==============================
  worldRadius = 50
  spherePos = (0,0,0); sphereRadius = 6.34 #6.38493 (6.38493 -critical) (3 is 0.51) (8 is 1.22)
  # Plutonium sphere-----------------------------------------------------------
  sn1, cn1 = cd.insertMacroAndCellSphere(name='Plutonium Sphere', surfaceNum=None, cellNum=None, radius=sphereRadius,
              pos=spherePos, matName='Pu', density=4.029E-2) # positive, atoms/barn-cm

  sn2 = cd.insertMacroSphere(name='Reflector shell', radius=sphereRadius+reflectorThickness)
  cn2 = cd.insertCell(name='Reflector shell', surfaceList=[-sn2, sn1], 
                      matName=reflectorMat)

  # World-----------------------------------------------------------
  sn, cellList = cd.insertWorldMacroAndCell(pos=spherePos, radius=worldRadius,
              worldMat='Void', worldDensity=0, worldSurfaceNum=worldSurfaceNum)

  #===========GEOMETRY END==============================
  #===========CRITICALITY SOURCE START==============================
  numHistoriesPerCycle = 1000
  initialK = 1.0
  cyclesToSkip = 25
  cyclesToDo = 125
  
  # For the first keff cycle, 1000 neutrons with a fission energy distribution 
  # will start at spherePos.
  cd.insertKCODEcard(numHistoriesPerCycle, initialK, cyclesToSkip, cyclesToDo)
  cd.insertKSRCcard(xyzList=[spherePos])  
  #---------------
  #===========CRITICALITY SOURCE END==============================
  cd.insertPhysicsCard(nocoh=nocoh, ides=ides, nodop=nodop, cutp=cutp, cutn=cutn, cute=cute)
  cd.insertOutputControlCards(nps=0, notrn=notrn)

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
def extractResult(modelFolder, outputFile):
  """
  """
  srchStr = 'the final estimated combined collision'
  with open(modelFolder+outputFile) as file:
    for line in file:
      if srchStr in line:
        print('Result:', line)
#############################################################################
if __name__ == '__main__':
  main()

