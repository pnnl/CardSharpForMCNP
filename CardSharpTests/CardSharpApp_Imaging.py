# Cardsharp for MCNP
# @author: Nikhil Deshmukh, Mital Zalavadia
#==============================================================================
import numpy as np
import matplotlib.pyplot as plt

import sys
sys.path.append('../CardSharp/')
import CardSharp as cs
import CardSharpModelRun as csrun
import CardSharpMcTallyRead as cstal
"""
This file shows a basic Xray imaging application using CardSharp.

MCNP default units: cm, MeV, g/cc

MCNP uses a Right handed Coordinate system:
For example, in a model with a beam source and a an imaging detector,
one option would be:
Y into the screen, X going to the right, Z going up.
Beam goes: +Y
Detector:  Right is +X, Up is +Z

MCNP automatically decomposes the macrobody surface into surface equations and 
the facets are assigned identifying numbers according to a predetermined sequence. 
The assigned surface number consists of the macrobody identifier number follow 
by a decimal point and an integer 1, 2, . . . . For example in the RCC example above,
the cylindrical surface has the identifier 15.1, the plane of the top is 15.2

TRCL can only be applied to surfaces with numbers less than <1000 ie three digit.
This is because TRCL applied to a cell will create more surfaces with numbers
above 1000.

The number of the generated surface is equal to the number of the original 
surface plus 1000 times the number of the cell.

Every cell in the problem is either part of the real world (universe level 0) or 
part of some other universe, but the surfaces of a problem are virtual and can 
be used in any universe.

- The real world and the universes have the same coordinate system.
- The real world cell that is filled with a another universe basically opens a window
into the other universe where ever the real cell is instantiated, not considering 
any TRCL on the real cell. So if an rpp goes from X=6 to X=12, whatever is in 
that location in the other universe comes into the real world. 
- But any TRCL on the real world card also applies to the cells in the universe.
So the TRCL on a cell with FILL can be used to translate all the elements in the
cell used for filling.

Surfaces/macros don't belong to any universe.
Cell numbers need to be unique across universes. 

The idea is to generate one macrobody then use TRCL to generate many septa/cells         
TRCL can do both translate and rotate, but the macrobody can also have a     
transformation as the first arg before the name of macrobody                 
That transformation should not be used because it will happen before rotation
--------------------------
-Relative error to aim for? Page 3-175
These errors cannot be believed reliable (hence neither can the tally itself) 
unless the error is fairly low. Results with errors greater than 50% are useless, 
those with errors between 20% and 50% can be believed to within a factor of a few, 
those with errors between 10% and 20% are questionable, and results with errors 
less than 10% are generally (but not always) reliable, except for detectors. 
Detector results are generally reliable if their associated relative errors are 
below 5%.

DEBUG TIPS:
- Check/fix all warnings
- Check for geometry leaks using gxsview. Use GXSView's check-overlap-tool with 
Full Simulation volume option to debug the geometry.
- Suspect F5 or FIR5 detector tallies if they are close to other objects.
- Check Energy bins used

"""
# Local Windows MCNP path
mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/"
mcnpDataPath="C:/MY_MCNP/MCNP_DATA/"
numTasks = 4
###############################################################################
def main():
  """ """
  modelFolder = '../CardSharpOutput/Tests/CardSharpApp_Imaging/'
  modelFilename = 'test.i'
  tallyFilename = 'test.im'
  imagingApp(modelFolder, modelFilename) #
  #---------------------------  
#  modelFilename = 'test_manual.i'
#  tallyFilename = 'test_manual.im'  
#  imagingAppUsingManualStrings(modelFolder, modelFilename)
  #---------------------------
  #return
  # if the MCNP paths above are correct, comment out the return
  ret = csrun.runMcnpModel(modelFolder, modelFilename, 
                     mcnpCodePath=mcnpCodePath, mcnpDataPath=mcnpDataPath,
                     numTasks=numTasks); #return
  #-------------------------------------------------------
  # If no error, do plot
  if ret:
    print(ret)
  else:
    doPlots(modelFolder, tallyFilename)
  
###############################################################################
def imagingApp(modelFolder, modelFilename):
  """
  Illustrate all steps: make geometry, source, tally, run. 
  """
  cd = cs.CardDeck()
  cd.setParticlesList(['p'])

  cd.insertMaterialStrings(['Aluminum', 'Air'])
      
  srcToOrigin = 10; detToOrigin = 10
  detWidth = 5; detNumPixels = 100 
  # source debug cell-----------------------------------------------------------
  sphereSn, sphereCn = cd.insertMacroAndCellSphere(name='source', pos=(-srcToOrigin,0,0), radius=.4,
               matName='Void', density=0, shift=(0,0,0)) # Density 0 means use the default density for this material

  # tally debug cell-----------------------------------------------------------
  tallySn, tallyCn = cd.insertMacroAndCellRpp(name='detector', yMinMax=(-detWidth/2-1, detWidth/2+1), 
    xMinMax=(-.2, .2), zMinMax=(-detWidth/2-1, detWidth/2+1), 
    matName='Void', density=0, shift=(detToOrigin,0,0) )

  # object being imaged
  coneSn, coneCn = cd.insertMacroAndCellCone(name='cone',
                base=(0,0,0), height=(0,0,.8), radius1=.6, radius2=.1,
                matName='Aluminum', density=0,
                shift=(0,0,0))
  
  # universe-----------------------------------------------------------
  #uniMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=150, uniMat='Void')
  worldMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=150, worldMat='Void')
  
#  srcString = cd.insertSource_PointIsotropicWithEnergyDistrib(pos=[-srcToOrigin,0,0], eList=[0, .2, .21], relFq=[0, .5, .5], distrib='Discrete')
#  trNum = cd.insertTRString(shift=(0,0,0), rotMatrix=None)
  srcString = cd.insertSource_SphereWithAngularBiasingAndEnergyDistrib(pos=[-srcToOrigin,0,0],
                radius=.2, vec=[1,0,0], coneHalfAngleDeg=5,
                eList=[.1, .2, .3], relFq=[.3, .4, .3], rejCell=sphereCn) #, trNum=trNum)

#  srcString = cd.insertSource_CylinderWithAngularAndEnergyDistrib(pos=[-srcToOrigin,0,-1.5],
#                radius=.4, axs=[0,0,1], thickness=3, vec=[1,0,0], coneHalfAngleDeg=.1,
#                eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4], rejCell=cn1) #, trNum=trNum)
  
  # s axis is Y, t axis is z
  cd.insertFIR5Tally(tallyNum=0, pos=(detToOrigin,0,0), normVec=(1,0,0), 
                sMin=-detWidth/2, sMax=detWidth/2, sbins=detNumPixels, 
                tMin=-detWidth/2, tMax=detWidth/2, tbins=detNumPixels)
  cd.insertF5Tally(tallyNum=1, pos=(-srcToOrigin,0,0), r=1, eList=np.linspace(.01, 2.5, 3))
  cd.insertF1Tally(tallyNum=1, surfListList=[sphereSn, (sphereSn, sphereSn)], eList=[0,1,2])
  cd.insertDebugTallyString(worldMacroNum=worldMacroNum)
  
  physicsString = cd.insertPhysicsCard(nocoh=0, ides=0, nodop=0)
  outputControlString = cd.insertOutputControlCards(nps=1E3)

  #---------------------------
  deckStr = cd.assembleDeck(titleCard='Imaging App')
#  outputStr = cd.assembleDeck(titleCard, macroString='Auto', cellString='Auto', trString='Auto', matString='Auto',  
#                 srcString='Auto', tallyString='Auto', physicsString='Auto', outputControlString='Auto')

  cd.saveDeck(modelFolder, modelFilename, deckStr)
  print('----------------')  
  return  
###############################################################################
def imagingAppUsingManualStrings(modelFolder, modelFilename):
  """
  Same as above but using manually inserted strings.
  If any section of the input deck is not doable using the library functions,
  one can do that section manually.
  Just be careful not to insert any unnecessary blank lines which can terminate
  an MCNP deck. (Yes, MCNP input syntax is not intuitive.)
  """
  cd = cs.CardDeck()
  #------------------------------------
  cellString = """\
1 0        -1    IMP:p=1
2 0        -2  *TRCL (10.000000 0.000000 0.000000)  IMP:p=1
3 13 -2.7000  -3    IMP:p=1
4 0        -4  #1  #2  #3    IMP:p=1
5 0        4    IMP:p=0
"""

  macroString = """\
1  SPH -10.0000 0.0000 0.0000  0.4000
2  RPP -0.200000 0.200000   -3.500000 3.500000    -3.500000 3.500000
3  TRC 0.0000 0.0000 0.0000   0.0000 0.0000 0.8000  0.6000 0.1000
4  SPH 0.0000 0.0000 0.0000  150.0000
"""

  matString = """\
m13   13027.      1      $ Al  usually 2.7  g/cc
m124    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
"""

  srcString = """\
SDEF PAR=p POS=-10.00 0.00 0.00 RAD=d1 VEC=1.00 0.00 0.00 DIR=d3 ERG=d4  &
         CEL=1 EFF=.0001
si1    0   0.2000       $ Source information d1 RAD source radius wrt AXS (.05 is 1 mm dia spot)
sp1   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)
SI3   -1.00   0.996194698091745545   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=5.00
SP3    0.     0.998097349045872773   0.001902650954127227   $ fraction solid angle for each bin
SB3    0.     0.     1.0      $ Source bias for each bin
SI4 L 1.0000E-01  2.0000E-01  3.0000E-01 $ L for discrete or A for continuous, followed by the n energies (MeV)
SP4    3.0000E-01  4.0000E-01  3.0000E-01 $ relative frequency of each energy
"""

  tallyString = """\
FC5 FIR 100  100
FIR5:p  10.000 0.000 0.000  0  11.000 0.000 0.000  0  0   0    $ 
FS5  -2.500 99i 2.500  $ S axis, smin, bins-1, smax numRows
C5   -2.500 99i 2.500  $ T axis, tmin, bins-1, tmax numCols                        
F15:p    $ Point detectors
     -10.00 0.00 0.00 1.00 $ x y z r
E15  0.0100 1.2550 2.5000
  F11:p         $ pulse height tally
       1 ( 1 1)   $ cellString
E11  0.0000 1.0000 2.0000
f1011:p 4              $ debug tally with universe surface to see if all particles come out
"""

  physicsString = """\
  c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
MODE p   $ particles to transport, default n (anti particles included)
CUT:n  j 0.0
CUT:p  j 0.001
CUT:e  j 0.001
PHYS:p 100 0 0 0 0 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 0 0 0 0 1 1 1 1 0
"""

  outputControlString = """\
  PRDMP   j   100    1    1    j  $ write MCTAL file                                 
  PRINT
  NPS 1000     $ stop after number of source particles have been run                 
"""
#---------------------------
#  deckStr = cd.assembleDeck(titleCard='Imaging App')
  deckStr = cd.assembleDeck(titleCard='Imaging App Manually', 
                              macroString=macroString, 
                              cellString=cellString, 
                              trString='Auto', 
                              matString=matString,  
                              srcString=srcString, 
                              tallyString=tallyString, 
                              physicsString=physicsString, 
                              outputControlString=outputControlString)
  
  cd.saveDeck(modelFolder, modelFilename, deckStr)

  return  

#############################################################################
def doPlots(modelFolder, tallyFile):
  """ """
  t_or_d = 1 # direct
  directTallyArray, directRelerr = cstal.getRadiographyTallyFromMctal(modelFolder+tallyFile, tallyNumWtype=5, t_or_d=t_or_d) # total
  
  plt.imshow(directTallyArray)
  plt.title('Direct')
  plt.show()
#############################################################################
if __name__ == '__main__':
  main()
