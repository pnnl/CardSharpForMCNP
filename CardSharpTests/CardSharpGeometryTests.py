# Cardsharp for MCNP
# @author: Nikhil Deshmukh, Mital Zalavadia
#==============================================================================
import sys

sys.path.append('../CardSharp/')
import CardSharp as cs
import CardSharpMats as csmat

cs.show = False # Turn off debug prints
"""
This file illustrates CardSharp geometry usage.
Copy this file, and use the tests as a template to create your own scripts.

The aim is not to provide full coverage of MCNP features or hide all the strange 
details of MCNP, but to make them easier to use.

Use GXSView's check-overlap-tool with Full Simulation volume option to debug
the geometry.
"""
#############################################################################
def main():
  """
  Do not mix auto numbering of surface/cell/TR numbers with manual numbering.

  If you do, use separate ranges for manual and auto and manage the cellNumList 
  for the final Universe cell generation.
  """
  testGeom0(); #return
  testGeom1(); #return
  testGeom2(); #return
  testGeom3(); #return
  testGeom4(); #return
  testGeom5(); #return

def testGeom0():
  """
  Minimal example.
  """
  # start creating the deck
  cd = cs.CardDeck()
  #--------------insert universe-----------
  # Universe macro number and all cells within are returned
  worldMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=25, worldMat='Void')

  cd.insertMaterialStrings(['Aluminum'])
  deckStr = cd.assembleDeck(titleCard='Title card: Test 0')
  print(deckStr)
  # Save file ---------------------------------------------------------
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest0/'
  modelFilename = "/test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

def testGeom1():
  """
  Short example with surfaces.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(['p', 'e']) # used for Mode card and IMP string

  # -------------insert surfaces----------------
  # Auto assigned surface number is returned
  sCyl = cd.insertSurface_CylinderAligned(name='cyl', axis='X', offset=(0,1,1), radius=1.0)
  sPL1 = cd.insertSurface_PlaneAligned(name='plane1', axis='X', D=2.0)
  sPL2 = cd.insertSurface_PlaneAligned(name='plane2', axis='X', D=-2.0)

  # -------------insert cell----------------
  # Auto assigned cell number is returned  
  cn = cd.insertCellString(name='Cylinder', surfaceList=[-sCyl, -sPL1, sPL2], matName='Aluminum')

  #--------------insert universe-----------
  # Universe macro number and world/graveyard cell numbers are returned
  # define world using automatic cell complement
  #worldMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=25, worldMat='Air')

  # define world using user supplied surface list
  worldMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=25, worldMat='Air',
                                                       surfaceList = [cn])
  # -------------insert materials----------  
  cd.insertMaterialStrings(['Aluminum', 'Air'])
  deckStr = cd.assembleDeck(titleCard='Title card: Test 1')
  #print(deckStr)
  # Save file ---------------------------------------------------------
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest1/'
  modelFilename = "/test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

def testGeom2():
  """
  Basic geometry test showing all basic shapes with macros, with auto numbering 
  of macro/surface/cell numbers.
  
  NOTICE: Unlinke MCNP, you can define surfaces/macros/cells in any order that makes
  sense, grouping relevant entities together etc.
  """
  # insert a material that isn't already in the CardSharp material's library
  # Or in case an application requires a dummy material
  dummyMatString = 'm{}   1  1' # see matString format in CardSharpMats.py for more examples
  matNum = csmat.matInsert('dummy1', dummyMatString, -2.7)
  print('Successfully inserted mat:', matNum) if matNum != 0 else print('Mat insertion failed')  
  #-------------------------------------
  cd = cs.CardDeck()
  cd.setParticlesList(['p', 'e']) # used for Mode card and IMP string

  csmat.matAddAlias('PolyethyleneNonborated', 'Poly')
  cd.insertMaterialStrings(['Aluminum', 'Tungsten', 'Lead', 'Poly'])  
  #--------------------------------------------------
  # Instantiate a sphere (macro and cell) ---------------------------------
  # For auto assignment of macrobodyNum and cellNum, set them to zero
  # The auto assigned cellNum and macroNum are returned (in case they are needed)
  # To use the default density of a material, set it to zero
  sphere_sn, cn = cd.insertMacroAndCellSphere(name='sphere1', radius=1.0, pos=(0,0,0), 
                                      matName='Air') #, macrobodyNum=0, cellNum=0)  
  #-----------------
  # use previous macrobody (known to be num 3) and some newly defined plane surfaces to make a truncated sphere cell
  plane1sn = cd.insertSurface_PlaneAligned('plane1', axis='X', D=0.7) #, surfaceNum=0)
  plane2sn = cd.insertSurface_PlaneAligned('plane2', axis='X', D=-0.7) #, surfaceNum=0)

  cn = cd.insertCellString(name='sphere minus plane1/plane2', matName='Aluminum', 
                         density=1, surfaceList=[-sphere_sn, -plane1sn, plane2sn], 
                         shift=(0,4,0)) # Will generating warning for positive density 
  #-----------------
  sn, cnList = cd.insertMacroAndCellSphereShell(name='Sphere Shell',
                pos=(0,0,0), radius1=1.0, radius2=0.8,
                matName='Lead', density=0,
                shift=(0,2,0),
                macrobodyNum1=0, macrobodyNum2=0, cellNum=0) # default density of mat
  #========================
  xdim = 1; ydim = 1.0; zdim = 0.5
  sn, cn = cd.insertMacroAndCellRpp(name='Box',  
                xMinMax=(-xdim, xdim), yMinMax=(-ydim, ydim), zMinMax=(-zdim, zdim),
                shift=(3,0,0), matName='Poly', density=0,
                macrobodyNum=0, cellNum=0)
  #-----------------
  xdim = 2; ydim = 2.0; zdim = 1
  snList, cn = cd.insertMacroAndCellRppShell(name='Box shell', macrobodyNum1=0, macrobodyNum2=0, cellNum=0, 
                innerXWidth=xdim-.5,outerXWidth=xdim, innerYWidth=ydim-.5,outerYWidth=ydim, innerZWidth=zdim-.5,outerZWidth=zdim,
                matName='Tungsten', density=0, shift=(3,3,0) )
  #=========================
  sn, cn = cd.insertMacroAndCellRcc(name='Cylinder', base=(0,0,0), axis=(0,2,0), radius=1,
                            matName='Copper', density=0,
                            shift=(6,0,0), macrobodyNum=0, cellNum=0)
  #-----------------
  sn, cnList = cd.insertMacroAndCellRccShell(name='Cyl Shell',
                base1=(0,0,0), axis1=(0,2,0), radius1=1.0,
                base2=(0,0,0), axis2=(0,2,0), radius2=0.8,
                matName='Lead', density=0,
                shift=(6,3,0),
                macrobodyNum1=0, macrobodyNum2=0, cellNum=0) # default density of mat

  #=========================
  sn, cnList = cd.insertMacroAndCellCone(name='Cone', base=(0,0,0), height=(0,1,0),
                  radius1=1, radius2=.2,
                  matName='Void', density=0, 
                  shift=(9,0,0), rotMatrix=None, 
                  macrobodyNum=0, cellNum=0, uni=0)
  #=========================
  xdim = 1; ydim = 2; zdim = 3
  sn, cn = cd.insertMacroAndCellWedge(name='Wedge',  
                           vertex=(0,0,0), base1=(xdim,0,0), base2=(0,ydim,0), height=(0,0,zdim),
                           shift=(11,0,0), matName='Poly', density=0,
                           macrobodyNum=0, cellNum=0) # default density
  #=========================
  xdim = 1; ydim = 2; zdim = 4
#  sn = cd.insertMacroRhpHex(name='RHP',  
#                           base=(0,0,0), axis=(0,0,zdim), r=(0,xdim,0))
#  cd.insertCellString('RHP', surfaceList=[-sn], shift=(9,3,0))

#  sn, cn = cd.insertMacroAndCellRhpHex(name='myRHP',
#                            base=(0,0,0), axis=(0,0,1), r=(0,1,0),
#                            matName='Poly', density=0,
#                            shift=(9,3,0))

  snList, cn = cd.insertMacroAndCellRhpHexShell(name='myRHPShell', 
                 base1=(0,0,-2), axis1=(0,0,zdim), r1=(0,xdim,0), 
                 base2=(0,0,0), axis2=(0,0,zdim), r2=(0,xdim-0.1,0), 
                 matName='Poly', density=0, 
                 shift=(9,3,0), rotMatrix=None,
                 macrobodyNum1=0, macrobodyNum2=0, cellNum=0, uni=0)
  
  #==========UNIVERSE==============
  worldMacroNum, cellList = cd.insertWorldMacroAndCell(pos=(0,0,0), radius=100, worldMat='Air')
  
  deckStr = cd.assembleDeck(titleCard='Title card: Test 2')
#  outputStr = assembleDeck(titleCard, cellString='', macroString='', matString='', trString='', 
#                 srcString='', tallyString='', physicsString='', outputControlString='')
#  print(deckStr);
  # Save file ---------------------------------------------------------
  baseFolder = "../CardSharpOutput/Tests/"
  modelFolder = baseFolder+'CardSharpGeomTest2/'
  modelFilename = "test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

def testGeom3():
  """
  Test for UNI and FILL with auto numbering.
  A truncated sphere cell using sphere/plane macros in uni=1
  An rpp filled with uni=1.
  The rpp just provides the limits for the universe. The rpp is not really
  drawn, does not really exist in the universe.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(['p', 'e'])

  csmat.matAddAlias('SteelStainless304', 'SS304')
  csmat.matAddAlias('PolyethyleneNonborated', 'Poly')
  cd.insertMaterialStrings(['Aluminum', 'Copper', 'Lead', 'Tungsten', 'Air', 'SS304', 'Poly'])
  #--------------------------------------------------
  # Surfaces (and macros) are independent of universes
  # First define some surfaces to create some cells in uni=1 which fully define a 
  # volume larger than or equal to the cell we will fill with this. 
  msph = cd.insertMacroSphere(name='sphere', pos=(0,0,0), radius=3)
  mp1 = cd.insertSurface_PlaneAligned('plane1', surfaceNum=0, axis='X', D=2.0)
  mp2 = cd.insertSurface_PlaneAligned('plane2', surfaceNum=0, axis='X', D=-2.0)

  # Now define UNI=1
  # Universe is basically a container and it should fully define the volume to be filled.
  # UNI=1 contains full sphere, truncated sphere, and a surrounding air region
  # in the shape of an RPP. The spheres are removed from RPP to avoid duplicate
  # definition. This removal can be done for the uncut and unshifted cell using
  # the surfacePosList, but for the cut/shifted one, it can only be done with the
  # cell complement list
  # rpp-----------------------------------------------------------
  mrpp = cd.insertMacroRpp(name='rpp', macrobodyNum=0, xMinMax=(-14,14), 
                                                       yMinMax=(-5,5), 
                                                       zMinMax=(-6,6))

  # insert uncut sphere cell in uni=1
  cn1 = cd.insertCellString(name='sphere uncut', surfaceList=[-msph],
                         matName='Lead', density=0, 
                         impString='', cellNum=0, uni=1)

  # insert cut sphere cell in uni=1
  cn2 = cd.insertCellString(name='sphere cut by two planes and shifted',  
                        surfaceList=[-msph, -mp1, mp2], matName='Lead', density=0, 
                         shift=(7,0,0), impString='', cellNum=0, uni=1)
  # rpp-----------------------------------------------------------
  # an rpp shaped cell with cn1 and cn2 removed
  # insert into uni=1, to completely define the rpp shaped region
  cn3 = cd.insertCellString(name='rpp',  surfaceList=[-mrpp],
                         cellComplementList = [cn1, cn2],
                         matName='Air', density=0,
                         impString='', cellNum=0, uni=1)
  # Done with defining uni=1 
  #----------------------------
  # Now define a surface (smaller rpp than uni=1) to insert stuff from uni=1 into
  # and bring into real world
  # This surface should be equal or small than the region defined by uni=1 otherwise
  # there will be undefined regions
  mrpp2 = cd.insertMacroRpp(name='rpp', xMinMax=(-13,13), 
                                        yMinMax=(-4,4), 
                                        zMinMax=(-5,5), macrobodyNum=0)

  # insert cell into real world with stuff selected 
  # While bringing u=1 into real world, shift it up in y direction
  # The material of the cell using FILL is not used at all???
  cn = cd.insertCellString(name='rpp', surfaceList=[-mrpp2], 
                           matName='Poly', density=0, # Material with density 0 does not get used ??? 
                           shift=(0,5,0), rotMatrix=cs.identityRotMatrix, 
                           impString='', cellNum=0, uni=0, fill=1) # fill with uni=1

  # universe-----------------------------------------------------------
  worldMacroNum, (cn1, cn2) = cd.insertWorldMacroAndCell(pos=(0,0,0),
                            radius=100, worldMat='Air')

  deckStr = cd.assembleDeck(titleCard='Title card: Test 3')
#  outputStr = assembleDeck(titleCard, cellString='', macroString='', matString='', trString='', 
#                 srcString='', tallyString='', physicsString='', outputControlString='')
  #print(deckStr)
  # Save file ...
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest3/'
  modelFilename = "test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

def testGeom4():
  """
  Test for UNI, FILL, LAT (rectangular lattice)
  Use PRINT card to debug.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(['p', 'e'])

  csmat.matAddAlias('SteelStainless304', 'SS304')
  csmat.matAddAlias('PolyethyleneNonborated', 'Poly')
  cd.insertMaterialStrings(['Aluminum', 'Copper', 'Lead', 'Tungsten', 'Air', 'SS304', 'Poly'])  
  #---------------------------------
  # Define lattice cell in uni=1
  # Universe is basically a container and it should fully define the volume to be filled.
  # UNI=1 contains lead sphere, in an RPP shaped air region
  msph, cn1 = cd.insertMacroAndCellSphere(name='sphere', pos=(0,0,0), radius=3,
                              matName='Lead', uni=1)
#  mp1 = cd.insertSurface_PlaneAligned('plane1', surfaceNum=0, ori='X', D=2.0)
#  mp2 = cd.insertSurface_PlaneAligned('plane2', surfaceNum=0, ori='X', D=-2.0)
  mrpp = cd.insertMacroRpp(name='rpp', xMinMax=(-5,5), yMinMax=(-5,5), zMinMax=(-5,5))
  cn2 = cd.insertCellString(name='rpp_cell', surfaceList=[-mrpp, msph],
                                  matName='Air',
                                  uni=1)  
  # Done with defining cell in uni=1 
  #----------------------------
  # A lattice must be the only thing in its universe, so using an in between universe, uni=2
  cn = cd.insertCellString(name='rpp_lattice', surfaceList=[-mrpp], # surfaces giving boundary of one cell
                           matName='Void', density=0, # this material is completely ignored
                           impString='', 
                           cellNum=0, uni=2, latticeType=1, 
                           latticeIndices=(-1,1,-1,1,-1,1),
                           fill=[1]*27) # fill with uni=1
  #----------------------------
  # Now define a RPP surface to bring the lattice universe into uni=0 (the real world where particles run)
  mrpp2 = cd.insertMacroRpp(name='rpp', xMinMax=(-5*3,5*3),
                                        yMinMax=(-5*3,5*3),
                                        zMinMax=(-5*3,5*3))
  cn = cd.insertCellString(name='rpp', surfaceList=[-mrpp2], # surfaces giving outer limits of the full lattice
                           fill=2) # fill with uni=2
  # universe-----------------------------------------------------------
  worldMacroNum, (cn1, cn2) = cd.insertWorldMacroAndCell(pos=(0,0,0),
                            radius=200, worldMat='Air')
  #=============Add for debugging by running MCNP===========
#  srcToOrigin = 50; #detToOrigin = 50
#  #detWidth = 5; detNumPixels = 100 
#
#  # source debug cell-----------------------------------------------------------
#  srcString = cd.insertSource_SphereWithAngularBiasingAndEnergyDistrib(pos=[-srcToOrigin,0,0],
#                radius=.2, vec=[1,0,0], coneHalfAngleDeg=5,
#                eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4]) #, trNum=trNum)
#
#  cd.insertF5Tally(tallyNum=1, xPos=-srcToOrigin,yPos=0,zPos=0, r=1, eList=np.linspace(.01, .35, 5))
#
#  physicsString = cd.insertPhysicsCard(nocoh=0, ides=0, nodop=0)
#  outputControlString = cd.insertOutputControlCards(nps=1E1)
#  #===========================
  deckStr = cd.assembleDeck(titleCard='Title card: Test 4')
#  outputStr = assembleDeck(titleCard, cellString='', macroString='', matString='', trString='', 
#                 srcString='', tallyString='', physicsString='', outputControlString='')
#  #print(deckStr)
#  # Save file ...
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest4/'
  modelFilename = "test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

# ret = csrun.runMcnpModel(modelFolder, modelFilename, mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/", 
#                 mcnpDataPath="C:/MY_MCNP/MCNP_DATA/", numTasks=1); #return
#  if ret:
#    print('Run result:', ret)

def insertHexagonBoundingPlanes(cd, hexSide=1):
  """
  """
  intercept = hexSide * 0.866
  mpList = []
  angList = [0, 180, 60, 240, 120, 300] # parallel surfaces must be together
  for i,ang in enumerate(angList):
    rotMatrix=cd.getRotationMatrix(rotationAxis='Z', angleDeg=ang)
    trNum = cd.insertTRString(name='Hex%d'%(i+1), rotMatrix=rotMatrix)
    mp = cd.insertSurface_PlaneAligned('HexPlane%d'%(i+1), axis='Y', D=intercept, trNum=trNum)
    mpList.append(mp)
  
  # return surfaces with the correct orientations
  return -mpList[0], -mpList[1], -mpList[2], -mpList[3], -mpList[4], -mpList[5]

def testGeom5():
  """
  Test for UNI, FILL, LAT (Change to Hexagonal lattice)
  Use PRINT to debug.
  """
  cd = cs.CardDeck()
  cd.setParticlesList(['p', 'e'])

  csmat.matAddAlias('SteelStainless304', 'SS304')
  csmat.matAddAlias('PolyethyleneNonborated', 'Poly')
  cd.insertMaterialStrings(['Aluminum', 'Copper', 'Lead', 'Tungsten', 'Air', 'SS304', 'Poly'])  
  #---------------------------------
  # Define lattice cell in uni=1
  # Universe is basically a container and it should fully define the volume to be filled.
  # UNI=1 contains lead sphere, in an Hexagonal prism shaped air region
  mCyl, cn1 = cd.insertMacroAndCellRcc(name='Cyl', base=(0,0,-3), axis=(0,0,6),
                                       radius=0.5, matName='Lead', uni=1)
  
  # Insert hexagon bounding planes for cell
  mpTuple = insertHexagonBoundingPlanes(cd, hexSide=1.0)

  #mrpp = cd.insertMacroRpp(name='rpp', xMinMax=(-5,5), yMinMax=(-5,5), zMinMax=(-5,5))
  cn2 = cd.insertCellString(name='hex_cell', surfaceList=[*mpTuple, mCyl],
                                  matName='Air',
                                  uni=1)  
  # Done with defining cell in uni=1
  #----------------------------
  # A lattice must be the only thing in its universe, so using an in between universe, uni=2
  cn = cd.insertCellString(name='hex_lattice', surfaceList=[*mpTuple], # surfaces giving boundary of one cell
                           matName='Void', density=0, # this material is completely ignored
                           impString='', 
                           cellNum=0, uni=2, latticeType=2,
                           latticeIndices=(-2,2,-2,2,0,0),
                           fill=[1]*25) # fill with uni=1
  #----------------------------
  # Now define a RPP surface to bring the lattice universe into uni=0 (the real world where particles run)
  mpTuple = insertHexagonBoundingPlanes(cd, hexSide=4.0)
  plusZPlane = cd.insertSurface_PlaneAligned('PlusZ', axis='Z', D=4)
  minusZPlane = cd.insertSurface_PlaneAligned('MinusZ', axis='Z', D=-4)
  cn = cd.insertCellString(name='hex_lattice_to_Uni', surfaceList=[*mpTuple, -plusZPlane, minusZPlane], # surfaces giving outer limits of the full lattice
                           fill=2) # fill with uni=2
  # universe-----------------------------------------------------------
  worldMacroNum, (cn1, cn2) = cd.insertWorldMacroAndCell(pos=(0,0,0),
                            radius=200, worldMat='Air')
  #===========================
  srcToOrigin = 50; #detToOrigin = 50
  #detWidth = 5; detNumPixels = 100 

  # source debug cell-----------------------------------------------------------
#  srcString = cd.insertSource_SphereWithAngularBiasingAndEnergyDistrib(pos=[-srcToOrigin,0,0],
#                radius=.2, vec=[1,0,0], coneHalfAngleDeg=5,
#                eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4]) #, trNum=trNum)
#
#  cd.insertF5Tally(tallyNum=1, xPos=-srcToOrigin,yPos=0,zPos=0, r=1, eList=np.linspace(.01, .35, 5))
#
#  physicsString = cd.insertPhysicsString(nocoh=0, ides=0, nodop=0)
#  outputControlString = cd.insertOutputControlString(nps=1E1)
  #===========================
  deckStr = cd.assembleDeck(titleCard='Title card: Test 5')
#  outputStr = assembleDeck(titleCard, cellString='', macroString='', matString='', trString='', 
#                 srcString='', tallyString='', physicsString='', outputControlString='')
  #print(deckStr)
  # Save file ...
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest5/'
  modelFilename = "test.i"
  cd.saveDeck(modelFolder, modelFilename, deckStr)

#  csrun.runMcnpModel(modelFolder, modelFilename, mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/", 
#                 mcnpDataPath="C:/MY_MCNP/MCNP_DATA/", numTasks=1); #return

#############################################################################
if __name__ == '__main__':
  main()

