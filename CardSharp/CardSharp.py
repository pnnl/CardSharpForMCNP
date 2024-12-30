# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================
"""
This file provides a class/methods for creating MCNP decks.
See the test scripts in the CardSharpTests folder for usage.

Most references to MCNP manual are to version 6.1. Some to 5.1 Vol II.
The two have a different style in terms of upper/lower case.

MOST ARGUMENTS TO THE FUNCTIONS HAVE SENSIBLE DEFAULT VALUES AND CAN BE IGNORED.
"""

import os
import numpy as np
import CardSharpMats as csmat
import sys
#############################################################################
show = False # Turn debug print statements on/off
identityRotMatrix = (0,90,90,   90,0,90,   90,90,0)
#############################################################################
def main():
  """
  """
  global show, stopOnError
  show = False

  #testToMCNP80String(); return
  stopOnError = False
  testSNCN(); return  
  #print(getSource_DiskWithAngularAndEnergyDistrib()); return
  #print(getSource_PointIsotropicWithEnergyDistrib()); return

  cd = CardDeck()
  cd.setParticlesList(['p', 'e'])  
  sn, cn = cd.insertMacroAndCellRpp(name='testRPP', xMinMax=(-1,1), yMinMax=(-20,20), 
                  zMinMax=(-20,20), shift=(10,0,0), matName='Air', density=0.001, surfaceNum=None, cellNum=None)

  sn, cn = cd.insertMacroAndCellRcc(name='testRCC', base=(0,0,0), axis=(0,0,1), radius=1, 
                  shift=(0,0,3), matName='Aluminum', density=-.5, surfaceNum=None, cellNum=None)  
  
  snList, cn = cd.insertMacroAndCellRppShell(name='testRppShell', innerXWidth=2,outerXWidth=4, 
                           innerYWidth=8,outerYWidth=10, innerZWidth=6,outerZWidth=8,
                           shift=(0,0,0), matName='Aluminum', density=-.5, 
                           surfaceNum1=1, surfaceNum2=2, cellNum=101) 

  sn, cn = cd.insertMacroAndCellSphere(name='testSphere', pos=(1,2,3), radius=10,
              matName='Aluminum', density=-.5, surfaceNum=None, cellNum=None)
#############################################################################
# Define classes for SurfaceNums and CellNums
# This is not a full OO design with all the details of the cell/surface geoemetry
# contained in the surface/cell class.
# This is a simple way to manage surfaceNums and cellNums as strings inside a
# custom class.
  
# The SN (surfaceNum) class supports facets and since surfaces are universe
# agnostic, there is no multi level complication.
# Instead of storing facets, one could simpl store the macrobody type.
# But the user interface seems to work well this way
  
# Cells can be nested multi level inside universes. 
# Will extend when a good use case comes up.
# The usage will be primarily when defining sources/tallies
# Also, making this more formal might make it harder to combine external pieces
# MCNP input decks with those produced by the library.
stopOnError = True
class SN():
  """
  A class to hold the surface number (and its facets if a macro)
  It is as transparent to use as an integer or string and supports unary negative.
  """
  def __init__(self, sn, uneg=False):
    # check that sn is either a positive integer, >0 
    # or a string with valid characters convertible to integer? (leading negative sign okay)
    try:
      if type(sn) is SN:
        self.sn = sn.sn
        self.uneg = sn.uneg
        self.facets = None # dictionary holding facets if a macro with facets
      elif type(sn) is str:
        # Don't check by casting to float, we don't want 1. (one dot)
        pcs = sn.split('.')
        for p in pcs:
          if len(p)<1 or p.startswith('0'):
            print('Error a, not a valid surfaceNum:', sn)
            if stopOnError: sys.exit(0)
          else:
            if int(p)<1:
              print('Error b, not a valid surfaceNum:', sn)
              if stopOnError: sys.exit(0)
        else:     
          self.sn = str(sn) # ******
          self.uneg = uneg
          self.facets = None
      elif type(sn) is int:
        t = int(sn)
        if t<1:
          print('Error, surface num <1:', sn)
          if stopOnError: sys.exit(0)
        else:
          self.sn = str(sn) # ******
          self.uneg = uneg
          self.facets = None
      else:
        print('sn must be input as int or str:', sn)
    except ValueError as e:
      print(e)
      print('Error c, not a legal surface number:', sn)
      if stopOnError: sys.exit(0)
    
  def __str__(self):
    if self.uneg:
      return '-'+self.sn
    else:
      return self.sn

  def __repr__(self): # should this also return any facets?
    if self.uneg:
      return '-'+self.sn
    else:
      return self.sn

  def __neg__(self): # unary negative operators
    temp = SN(self.sn, uneg=True) # create a new SN object with uneg=True, copy facets and return it
    temp.facets = self.facets
    return temp

  def __lt__(self, other): # to allow sorting of surfaces by sn
        if isinstance(other, SN):
            return self.sn < other.sn
        return NotImplemented

class CN():
  """
  A class to support cellNumbers. Cell numbers are generally integers but with
  universes and lattices it can become complicated enough that it is treated as
  a string.
  """
  def __init__(self, cn):
    try:
      # cn can be str or int
      if type(cn) is CN:
        self.cn = cn.cn  # ******
        self.children = None
      elif type(cn) is str:
        # Don't check for valid float, we don't want 1.
        pcs = cn.split('<')
        for p in pcs:
          if len(p)<1 or p.startswith('0'):
            print('Error a, not a valid cellNum:', cn)
            if stopOnError: sys.exit(0)
          else:
            if int(p)<1:
              print('Error b, not a valid surfaceNum:', cn)
              if stopOnError: sys.exit(0)
        else:     
          self.cn = str(cn) # ******
          self.children = None
      elif type(cn) is int:
        t = int(cn)
        if t<1:
          print('Error, cell num <1:', cn)
          if stopOnError: sys.exit(0)
        else:
          self.cn = str(cn) # ******
          self.children = None
      else:
        print('cn must be input as int or str:', cn)
    except ValueError as e:
      print(e)
      print('Error c, not a legal cell number:', cn)
      if stopOnError: sys.exit(0)

  def __str__(self):
    return self.cn

  def __repr__(self): # should this also return any child cells?
    return self.cn

  def __lt__(self, other):
    if isinstance(other, CN):
        return self.cn < other.cn
    return NotImplemented

def testSNCN():
  """
  """
  # Errors
  n = SN(0); print('------------')
  n = SN(-1); print('------------') 
  n = SN('01'); print('------------')
  n = SN('d42'); print('------------') 
  n = SN('5.'); print('------------')
  
  # Errors
  n = CN(0); print('------------')
  n = CN(-1); print('------------')
  n = CN('01'); print('------------')
  n = CN('d42'); print('------------')
  n = CN('5.'); print('------------')

  sn1 = SN(42); sn2=SN('43'); sn3=SN('43.1')
  print("%s %s %s"%(sn1, -sn2, -sn3))
  
  # to support sorting of surfaces/cells
  print(SN(3)<SN(4))
  print(CN(3)<CN(4))

  # making manual surfaces string  
  snList = [sn1, sn2]
  manualSurfacesString = f'({snList[0]}:{-sn2})'
  print(manualSurfacesString)
  
#############################################################################
class CardDeck:
  """
  Class representing an MCNP input deck/file.
  Instantiate an object of this class, then call methods to add surfaces, cell, materials,
  source, tallies, physics and output control cards. Finally write out the deck.
  """
  def __init__(self):

    self.particlesList = ['p', 'e'] # used by getModeString, getImpString

    self.nextSurfaceNum = 0 # SN(0) # Will start from 1
    self.nextCellNum = 0 # CN(0)
    self.nextTrNum = 0
    self.cellNumNameList = []

    self.collectedSurfaceStrings = ''
    self.collectedCellStrings = ''
    self.collectedTrStrings = ''
    self.collectedMatStrings = ''

    self.collectedSrcStrings = ''
    self.collectedTallyStrings = ''
    self.collectedPhysicsStrings = ''
    self.collectedOutputControlStrings = ''

    csmat.matClearAllAliases()
#############################################################################
  # Tally numbers and universe numbers are not auto assigned, yet.
  def _getNextSN(self):
    self.nextSurfaceNum += 1 # SN(1)
    return SN(self.nextSurfaceNum)
  
  def _getNextCN(self):
    self.nextCellNum += 1 # CN(1)
    return CN(self.nextCellNum)
  
  def _getNextTRN(self):
    self.nextTrNum += 1
    return self.nextTrNum
#############################################################################

#############################################################################
  ### !!!----------GEOMETRY FUNCTIONS----------
#  MCNP file is strange in defining cells before macros, although cells depend
#  on macro definitions.
#############################################################################
#  SPH and RCC macro have position of base while RPP does not
#  Because instead of taking xDim/yDim/zDim it takes xMin/xMax and so on
#  The position is already included there
#  Why not assume it is at origin? Then use TRCL to translate?
#  Granted, the sphere has no orientation, but the RPP does?

  ### !!!-----SURFACES/CELL----------
  def insertSurface_CylinderAligned(self, name, axis='X', xyz=(0,0,0), radius=1.0, 
                                    surfaceNum=None, trNum=None):
    """
    Define an infinitely long cylindrical surface parallel to one of the three axes.
    If parallel to X axes, the YZ offsets are used.
    If parallel to Y axes, the XZ offsets are used and so on.

    The trNum can be obtained by first calling insertTRString.
    The same trNum can be used for multiple objects.
    
    In general, instantiate surfaces/cells at the origin and then apply
    TR/TRCL to rotate/translate.
    In all the geometry functions name is used only for the descriptive comment.

    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    if axis=='X':
      descrStr = '%s, surface:%s, trNum:%s, cylinder_%s Y:%.2f Z:%.2f R:%.2f'\
                     %(name, surfaceNum, trNumString, axis, xyz[1], xyz[2], radius)
    elif axis=='Y':
      descrStr = '%s, surface:%s, trNum:%s, cylinder_%s X:%.2f Z:%.2f R:%.2f'\
                     %(name, surfaceNum, trNumString, axis, xyz[0], xyz[2], radius)
    elif axis=='Z':
      descrStr = '%s, surface:%s, trNum:%s, cylinder_%s X:%.2f Y:%.2f R:%.2f'\
                     %(name, surfaceNum, trNumString, axis, xyz[0], xyz[1], radius)
      # ----macro--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))
    #c surface/macrobody number, transformation number optional, C/X, yPos,zPos, radius'
    #801 1 C/X 1 1 5
    if axis=='X':
      surfaceString += toMCNP80String('%s %s C/%s %.4f %.4f %.4f'%(surfaceNum, trNumString, axis, xyz[1], xyz[2], radius))
    elif axis=='Y':
      surfaceString += toMCNP80String('%s %s C/%s %.4f %.4f %.4f'%(surfaceNum, trNumString, axis, xyz[0], xyz[2], radius))
    elif axis=='Z':
      surfaceString += toMCNP80String('%s %s C/%s %.4f %.4f %.4f'%(surfaceNum, trNumString, axis, xyz[0], xyz[1], radius))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum
  
  def insertSurface_ConeAligned(self, name, axis='X', xyz=(0,0,0), tSqr=0.25, sheet=0, 
                                    surfaceNum=None, trNum=None):
    """
    Define a cone parallel to one of the three axes.
    tsqr is the sqr of tan of cone angle. sheet is...
    
    The trNum can be obtained by first calling insertTRString.
    The same trNum can be used for multiple objects.
    
    In general, instantiate surfaces/cells at the origin and then apply
    TR/TRCL to rotate/translate.
    In all the geometry functions name is used only for the descriptive comment.

    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    if sheet == 0:
      sheetSel = ''
    else:
      sheetSel = '%d'%(sheet)
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, cone_%s x:%.2f y:%.2f z:%.2f tSqr:%.2f sheetSel:%s'\
                     %(name, surfaceNum, trNumString, axis, xyz[0], xyz[1], xyz[2], tSqr, sheetSel)
      # ----macro--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))
    #c surface/macrobody number, transformation number optional, C/X, yPos,zPos, radius'
    #801 1 C/X 1 1 5
    surfaceString += toMCNP80String('%s %s K/%s %.4f %.4f %.4f %.4f %s'%(surfaceNum, trNumString, axis, xyz[0], xyz[1], xyz[2], tSqr, sheetSel))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_PlaneAligned(self, name, axis='X', D=1.0, surfaceNum=None, trNum=None):
    """
    Define a plane surface aligned with X or Y or Z axis.
    D refers to: PX, PY, PZ. 
    PX is normal to X axis.

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, plane %s D:%.2f'\
                     %(name, surfaceNum, trNumString, axis, D)
    # ----surface--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    surfaceString += toMCNP80String('%s %s P%s %.4f' %(surfaceNum, trNumString, axis, D))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_Plane(self, name, A=1.0, B=1.0, C=1.0, D=1.0, surfaceNum=None, trNum=None):
    """
    Define a plane surface aligned with equation: Ax + By + Cz -D = 0.
    Can also add a transform.

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, plane A:%.2f B:%.2f C:%.2f D:%.2f'\
                     %(name, surfaceNum, trNumString, A, B, C, D)
    # ----surface--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    surfaceString += toMCNP80String('%s %s P %.4f %.4f %.4f %.4f' %(surfaceNum, trNumString, A, B, C, D))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_Torus(self, name, axis='X', xyz=(0,1,1), ABC=(5,3,2), 
                                    surfaceNum=None, trNum=None):
    """
    Axis specifies the axis of rotation of the torus, TX,TY,TZ
    xyz is the center of the torus.
    The input parameters a b c specify the ellipse.
    a is the torus radius? b/c are the ellipse radii.
    if |a|< c, then the hole disappears.
    If b==c, then the torus cross section is a circle, instead of an ellipse.
    
    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, torus_%s x:%.2f y:%.2f z:%.2f  A:%.2f B:%.2f C:%.2f'\
                     %(name, surfaceNum, trNumString, axis, *xyz, *ABC)
      # ----macro--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))

    #c surface/macrobody number, transformation number optional, C/X, yPos,zPos, radius'
    surfaceString += toMCNP80String('%s %s T%s %.4f %.4f %.4f  %.4f %.4f %.4f'%(surfaceNum, trNumString, axis,  *xyz, *ABC))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_SQ(self, name, A=-0.0833, B=1, C=1, D=0, E=0,
                                   F=0, G=68.5, xyz=(-26.5,0,0),
                                   surfaceNum=None, trNum=None):
    """
    Special quadratic surface.
    A(x - x)**2 + B(y – y)**2 + C(z – z)**2 + 2D(x – x) + 2E(y – y) + 2F(z – z) + G = 0
    
    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, SQ A:%.2f B:%.2f C:%.2f  D:%.2f E:%.2f F:%.2f G:%.2f  x:%.2f y:%.2f z:%.2f'\
                     %(name, surfaceNum, trNumString, A,B,C,D,E,F,G,*xyz)
      # ----macro--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))

    #c surface/macrobody number, transformation number optional, C/X, yPos,zPos, radius'
    surfaceString += toMCNP80String('%s %s SQ %.4f %.4f %.4f  %.4f %.4f %.4f %.4f  %.4f %.4f %.4f'%(surfaceNum, trNumString, A,B,C,D,E,F,G,*xyz))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_GQ(self, name, A=1, B=0.25, C=0.75, D=0, E=-0.866,
                                   F=0, G=-12, H=-2, I=3.464, J=39,
                                   surfaceNum=None, trNum=None):
    """
    General quadratic surface.
    Ax2 + By2 + Cz2 + Dxy + Eyz + Fzx + Gx + Hy + Jz + K = 0
    
    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, GQ A:%.2f B:%.2f C:%.2f  D:%.2f E:%.2f F:%.2f G:%.2f H:%.2f'\
                     %(name, surfaceNum, trNumString, A,B,C,D,E,F,G,H)
      # ----macro--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))

    #c surface/macrobody number, transformation number optional, C/X, yPos,zPos, radius'
    surfaceString += toMCNP80String('%s %s GQ %.4f %.4f %.4f  %.4f %.4f %.4f %.4f  %.4f %.4f %.4f'%(surfaceNum, trNumString, A,B,C,D,E,F,G,H,I,J))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum

  def insertSurface_AxisSymmetricByPoints(self, name, axis='X', pointList=[], surfaceNum=None, trNum=None):
    """
    The surfaces described by these cards must be symmetric about the x-, y-, 
    or z-axis, respectively, and, if the surface consists of more than one
    sheet, the specified coordinate points must all be on the same sheet.
    
    Each of the coordinate pairs defines a geometrical point on the surface. 
    On the Y card, for example, the entries may be j Y y1 r1 y2 r2
    where ri = sqrt(xi**2 + yi**2)and yi is the coordinate of point i.
    If one coordinate pair is used, a plane (PX, PY, or PZ) is defined.
    If two coordinate pairs are used, a linear surface (PX, PY, PZ, CX, CY, CZ, 
    KX, KY, or KZ) is defined.
    If three coordinate pairs are used, a quadratic surface (PX, PY, PZ, 
    SO, SX, SY, SZ, CX, CY, CZ, KX, KY, KZ, or SQ) is defined.

    Returns assigned surface number.    
    """
    assert(len(pointList) in [2,4,6])
    assert(axis.lower() in ['x', 'y', 'z'])
    
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    pointString = ' '.join(map(str, pointList))

    surfaceString = ''
    descrStr = '%s, surface:%s, trNum:%s, AxisSymByPoints %s %s'\
                     %(name, surfaceNum, trNumString, axis, pointString)
    # ----surface--------
    surfaceString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    surfaceString += toMCNP80String('%s %s %s %s' %(surfaceNum, trNumString, axis, pointString))
  
    self.collectedSurfaceStrings += surfaceString
    
    printIfShow(surfaceString)
    return surfaceNum
      
  def insertCell(self, name, surfaceList=None, cellComplementList=None,
                     manualSurfacesString=None,
                     matName='Void', density=0,
                     shift=(0,0,0), rotMatrix=None, 
                     impString='', cellNum=None, uni=0, fill=0, 
                     latticeType=None, latticeIndices=None):
    """
    This function is used to insert a cell using surfaces (and cells) that have
    already been defined.
  
    The terms surface number/macro number/macro surface number are used interchangeably.
    
    surfaceList does intersection of positive/negative surfaces to define a volume. 
    The complement list is a list of other cells whose volume gets subtracted 
    from this one. This is sufficient for most geometries.
    
    For certain geometries, combinations of unions, intersections, complement,
    complement of unions etc might be needed and those can entered using the
    manualSurfacesList. and so on are too many.  If the user wants to do that, 
    they can enter the string manually.

    Either use surfaceList and cellComplementList, or use the manualSurfacesList.
    
    matName is the key to a material in the materials dictionary.
    density can be left at 0 to indicate using the default density from the dictionary.
    If you do specify density, pay attention to sign. MCNP uses negative values to mean g/cc

    The rotMatrix and shift add a TRCL string.
    
    By default all cells are instantiated with an importance string based on
    the particles list set before the call to the cell function.
    If a cell needs a different importance string from the default, use this
    option:
    impString: It should look like this: 'imp:p,e=1' or 'imp:p=1 imp:e=0' .

    latType - 1 (RPP).
    latType - 2 (Hexagonal prism).
    latIndices - Range specifying Imin/Imax, Jmin/Jmax, Kmin/Kmax of the lattice range.
    fill can be a single universe number or a list of universes in case of a lattice.
    """
    if surfaceList is not None:
      for sn in surfaceList:
        if (type(sn) not in [SN, int, str]):
          print('surfaceList should have only surface numbers')
          print('Got:', type(sn), sn)
          #print("use returned sn variable or cs.SN(42) or cs.SN('42') instead of int or str")
          assert(type(sn)==SN)

    if cellComplementList is not None:
      for cn in cellComplementList:
        if (type(cn) not in [CN, int, str]):
          print('cellComplementList should have only cell numbers')
          print('Got:', type(cn), cn)
          #print("use returned cn or cs.CN(42) or cs.CN('42') instead of int or str")
          assert(type(cn)==CN) # cs.CN(42) or cs.CN('42')  instead of int or str

    #if cellNum == None: cellNum = self._getNextCN()
    cellNum = self._getNextCN() if cellNum is None else CN(cellNum)
    
    #cellString = ''
    matNum, defaultDensity = csmat.matLookup(matName)
    if matName == 'Void':
      densityStr = '     ' 
    else:
      if density > 0:
        print('DENSITY IS POSITIVE: ARE YOU SURE YOU WANTED atoms/barn-cm, NOT g/cc? ', name)
      if density == 0: # use default density
        density = defaultDensity
      densityStr = '%.4f'%(density)
    #---------
    cellString = toMCNP80String('c ---%s----'%(name))
    
    surfacesString = ''
    if manualSurfacesString is not None or manualSurfacesString=='':
      surfacesString = " %s "%(manualSurfacesString) # add spaces around just in case
    else:
      if surfaceList is not None: # inside of negative surfaces, outside of positive surfaces
        for sn in surfaceList:
          surfacesString += " %s "%(sn)
      if cellComplementList is not None:
        for cn in cellComplementList:
          surfacesString += " #%s "%(cn)
    #---------
    uniString = ''; fillString = ''; latString = ''
  
    if uni != 0: uniString = 'U=%d'%(uni)
    if fill != 0:
      if latticeType is None:
        fillString = 'FILL=%d'%(fill)
      else:
        latString = 'LAT={:d}'.format(latticeType)
        if isinstance(fill, list):
          t = ' '.join(str(f) for f in fill)
        else:
          t = '%d'%(fill)
        fillString = 'FILL= {:d}:{:d} {:d}:{:d} {:d}:{:d} \n      {:s}'.format(*latticeIndices, t)
    #---------
    trclString = self.getTrclStringDeg(shift=shift, rotMatrix=rotMatrix)
    #---------
    if impString == '': impString = self.getImpString() #'imp:p,e=1'
    cs = '%s %d %s %s %s %s %s %s %s'%(cellNum, matNum, densityStr, surfacesString, 
                                 trclString, latString, impString, uniString, fillString)
    #---------
    cellString += toMCNP80String(cs)
  
    self.collectedCellStrings += cellString
    
    self.cellNumNameList.append((cellNum, name, matNum, uni))
  
    printIfShow(cellString)
    return cellNum

  def insertCellLike(self, name, oldCellNum, newCellNum=None, shift=None, 
                     rotMatrix=None, impString='', uni=0):
    """
    newCellNum will be auto assigned if left as None.
    impString: It should look like this: 'imp:p,e=1' or 'imp:p=1 IMP:e=0'.
    Any importances that are not specified are inherited from the old cell.
    
    What about matName, density? Should that be supported on this card?
    What about uni? The cell being cloned has to be in uni=0. Otherwise MCNP
    can't find it.

    Looks like the newCell can be in any universe, but defaults to 0 as expected.    
    """
    #if newCellNum == None: newCellNum = self._getNextCN()
    newCellNum = self._getNextCN() if newCellNum is None else CN(newCellNum)

    trclString = self.getTrclStringDeg(shift=shift, rotMatrix=rotMatrix)
    if impString == '': impString = self.getImpString()
    uniString = ''
    if uni != 0: uniString = 'U=%d'%(uni)
    
    cellString = '%s LIKE %d BUT %s %s %s'%(newCellNum, oldCellNum, trclString, \
                                         impString, uniString)
    #---------
    cellString = toMCNP80String(cellString)
  
    self.collectedCellStrings += cellString
    
    self.cellNumNameList.append((newCellNum, name, matNum, uni))
  
    printIfShow(cellString)
    return newCellNum

#############################################################################
  ### !!!-----MACRO SURFACES AND CELLS------
  def insertMacroSphere(self, name, pos=(0,0,0), radius=1, 
                        surfaceNum=None, trNum=None):
    """
    Insert a sphere macro at the given position and radius.
    Returns assigned macro surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, sphere macrobody:%s, trNum:%s, xPos:%.2f, yPos:%.2f, zPos:%.2f, radius:%.2f'\
                      %(name, surfaceNum, trNumString, *pos, radius)
  
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, rpp, x/y/z radius
    #801 1 sph 0 0 0  10 
    macroString += toMCNP80String('%s %s SPH %.4f %.4f %.4f  %.4f'
                                  %(surfaceNum, trNumString, *pos, radius))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

  def insertMacroAndCellSphere(self, name, pos=(0,0,0), radius=1, 
                       matName='Void', density=0,
                       shift=(0,0,0), rotMatrix=None, impString='',
                       surfaceNum=None, cellNum=None, uni=0):
    """
    Insert a sphere macro and a cell based on that macro.
    Sphere is different from other macrobodies in not ever needing an orientation
    matrix.
    
    Returns assigned macro surface number and cell number.
    """
    # ----macro--------
    surfaceNum = self.insertMacroSphere(name=name, pos=pos,
                                     radius=radius,
                                     surfaceNum=surfaceNum)
    # ----cellNum is not defined at this point
    descrStr = '%s, macrobody:%s, xPos:%.2f, yPos:%.2f, zPos:%.2f, radius:%.2f, matNum:%s, density:%.4f, xShift:%.2f, yShift:%.2f, zShift:%.2f'\
                  %(name, surfaceNum, *pos, radius, matName, density, *shift) 
  
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], cellComplementList=None,
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return surfaceNum, cellNum

  def insertMacroAndCellSphereShell(self, name,
                  pos=(0,0,0), radiusOuter=2, radiusInner=1,
                  matName='Void', density=0, 
                  shift=(0,0,0), rotMatrix=None, impString='',
                  surfaceNum1=None, surfaceNum2=None, cellNum=None,uni=0):
    """
    Uses two sphere macros to generate a shell.
    Returns a list of the two assigned macro surface numbers and the assigned cell number.
    """
    # ----macro--------    
    surfaceNum1 = self.insertMacroSphere(name=name, pos=pos,
                                  radius=radiusOuter, surfaceNum=surfaceNum1)  
  
    surfaceNum2 = self.insertMacroSphere(name=name, pos=pos,
                                  radius=radiusInner, surfaceNum=surfaceNum2)  
    # ----cell--------
    descrStr = '%s, macrobody:%s, macrobody:%s,\
    posX:%.2f, posY:%.2f, posZ:%.2f, radiusOuter:%.2f, radiusInner:%.2f,\
    matName:%s, density:%.4f, xShift:%.2f, yShift:%.2f, zShift:%.2f'\
                  %(name, surfaceNum1, surfaceNum2,
                    *pos, radiusOuter, radiusInner, 
                    matName, density, *shift)
    
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum1, surfaceNum2], # cellComplementList=None, 
                               matName=matName, density=density, 
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
    
    return (surfaceNum1, surfaceNum2), cellNum
  
#############################################################################
  ### !!!-----
  def insertMacroRcc(self, name, base=(0,0,0), axis=(0,0,1), radius=1, 
                     surfaceNum=None, trNum=None):
    """
    From MCNP manual: RCC vx vy vz hx hy hz r.
    vx/vy/vz - coordinates of center of base.
    hx/hy/hz - provide orientation and height of top (not the coordinates of center of top).
               If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top?
    
    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Cyl': SN(surfaceNum.sn+'.1'),
                         'Top': SN(surfaceNum.sn+'.2'),
                         'Base': SN(surfaceNum.sn+'.3')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, cylinder macrobody:%s, trNum:%s, baseX:%.2f, baseY:%.2f, baseZ:%.2f, axisX:%.2f, axisY:%.2f, axisZ:%.2f, radius:%.2f'\
                  %(name, surfaceNum, trNumString, *base, *axis,radius)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s RCC %.4f %.4f %.4f  %.4f %.4f %.4f  %.4f'\
                             %(surfaceNum, trNumString, *base, *axis, radius))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum
  
  def insertMacroAndCellRcc(self, name, base=(0,0,0), 
                 axis=(0,0,1), radius=1, 
                 matName='Void', density=0, 
                 shift=(0,0,0), rotMatrix=None, impString='',
                 surfaceNum=None, cellNum=None, uni=0):
    """
    Generates a RCC Right Circular Cylinder macro and a cell based on that macro.
    axisX/axisY/axisZ together given orientation and height of cyl.
    
    The cylinder is first instantiated at base, then optionally rotate by rotMatrix,
    then optionally moved by xShift/yShift/zShift
    
    Returns assigned surface number and cell number.
    """
    # ----macro--------
    surfaceNum = self.insertMacroRcc(name=name, base=base, axis=axis, 
                                  radius=radius, surfaceNum=surfaceNum)  
  
    # ----cell--------
    descrStr = '%s, macrobody:%s, baseX:%.2f, baseY:%.2f, baseZ:%.2f, axisX:%.2f, axisY:%.2f, axisZ:%.2f, radius:%.2f, matName:%s, density:%.4f, xShift:%.2f, yShift:%.2f, zShift:%.2f'\
                  %(name, surfaceNum, *base, *axis,
                    radius, matName, density, *shift)
  
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], #cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix, 
                               impString=impString, cellNum=cellNum, uni=uni)
   
    return surfaceNum, cellNum

  def insertMacroAndCellRccShell(self, name,
                  base1=(0,0,0), axis1=(0,0,1), radiusOuter=2,
                  base2=(0,0,0), axis2=(0,0,1), radiusInner=1,
                  matName='Void', density=0, 
                  shift=(0,0,0), rotMatrix=None, impString='',
                  surfaceNum1=None, surfaceNum2=None, cellNum=None,uni=0):
    """
    Uses two RCC macros to generate an annulus. FIRST one is the OUTER one.
    As it is currently, the center of the axis won't be at the origin unless
    the user makes it so.
    Any rotation applied by a TRCL will be around the origin.
    
    The two cylinders are defined by the base/axis/radius.
    xShift,yShift,zShift translates the annulus or RccShell
    
    The position can come from TRCL while instantiating the cell.

    Returns a list of the assigned macro numbers and the assigned cell number.
    """
    # ----macro--------    
    surfaceNum1 = self.insertMacroRcc(name=name, base=base1, axis=axis1,
                                  radius=radiusOuter, surfaceNum=surfaceNum1)  
  
    surfaceNum2 = self.insertMacroRcc(name=name, base=base2, axis=axis2,
                                  radius=radiusInner, surfaceNum=surfaceNum2)  
    # ----cell--------
    descrStr = '%s, macrobody1:%s, macrobody2:%s,\
    baseX1:%.2f, baseY1:%.2f, baseZ1:%.2f, axisX1:%.2f, axisY1:%.2f, axisZ1:%.2f, radiusOuter:%.2f,\
    baseX2:%.2f, baseY2:%.2f, baseZ2:%.2f, axisX2:%.2f, axisY2:%.2f, axisZ2:%.2f, radiusInner:%.2f,\
    matName:%s, density:%.4f, xShift:%.2f, yShift:%.2f, zShift:%.2f'\
                  %(name, surfaceNum1, surfaceNum2,
                    *base1, *axis1, radiusOuter, 
                    *base2, *axis2, radiusInner, 
                    matName, density, *shift)
    
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum1, surfaceNum2], # cellComplementList=None, 
                               matName=matName, density=density, 
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
    
    return (surfaceNum1, surfaceNum2), cellNum
#############################################################################
  ### !!!-----
  # RPP macro and RPP cell parameters allow direct positioning
  # RPP shell cell only has dimensions, the positioning is from the TRCL
  # This is a choice I made for ease of use of RPP shell
  # RCC shell on the other hand has positioning and orienting in the base params
  # That's just my choice
  def insertMacroRpp(self, name, xMinMax, yMinMax, zMinMax, surfaceNum=None, trNum=None):
    """
    xMinMax, yMinMax, zMinMax are tuples giving the upper/lower bounds of the RPP.

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Xmax': SN(surfaceNum.sn+'.1'),
                         'Xmin': SN(surfaceNum.sn+'.2'),
                         'Ymax': SN(surfaceNum.sn+'.3'),
                         'Ymin': SN(surfaceNum.sn+'.4'),
                         'Zmax': SN(surfaceNum.sn+'.5'),
                         'Zmin': SN(surfaceNum.sn+'.6')}

    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, macrobody:%s, trNum:%s, xMin:%.2f, xMax:%.2f, yMin:%.2f, yMax:%.2f, zMin:%.2f, zMax:%.2f'\
                  %(name, surfaceNum, trNumString, *xMinMax, *yMinMax, *zMinMax)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, rpp, xmin/xmax,    ymin/ymax, zmin/zmax'
    #801 1 rpp -0.0728   0.0728    -0.32      0.32     -3 3 
    macroString += toMCNP80String('%s %s RPP %.6f %.6f   %.6f %.6f    %.6f %.6f'\
                             %(surfaceNum, trNumString, *xMinMax, *yMinMax, *zMinMax))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

  def insertMacroAndCellRpp(self, name, xMinMax, yMinMax, zMinMax,
                matName='Void', density=0, 
                shift=(0,0,0), rotMatrix=None, impString='', 
                surfaceNum=None, cellNum=None, uni=0):
    """
    Generates a RPP Rect Parallelopipded macro and a cell based on that macro.

    Returns assigned surface number and cell number.    
    """
    # ----macro--------
    surfaceNum = self.insertMacroRpp(name=name, xMinMax=xMinMax, yMinMax=yMinMax, 
                                  zMinMax=zMinMax, surfaceNum=surfaceNum)
    # ----cell--------
    descrStr = '%s, Rect PPiped macrobody:%s, xMin:%.2f, xMax:%.2f, yMin:%.2f, yMax:%.2f, zMin:%.2f, zMax:%.2f, matName:%s, density:%.4f, xShift:%.2f, yShift:%.2f, zShift:%.2f'\
                  %(name, surfaceNum, *xMinMax, *yMinMax, *zMinMax, matName, density, *shift)
    
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], #cellComplementList=None,
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return surfaceNum, cellNum

  def insertMacroAndCellRppShell(self, name,
                 innerXWidth,outerXWidth, 
                 innerYWidth,outerYWidth, 
                 innerZWidth,outerZWidth,
                 matName, density=0,
                 shift=(0,0,0), rotMatrix=None, impString='',
                 surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):
    """
    Inserts two RPP macros to generate shell.
    Both macros are symmetrically placed around the origin before being shifted/rotated together.
    Returns a list of the assigned macro numbers and the assigned cell number.
    """
    # ----macro--------  
    #c surface/macrobody number, transformation number optional, rpp, xmin/xmax,    ymin/ymax, zmin/zmax'
    #801 1 rpp -0.0728   0.0728    -0.32      0.32     -3 3 
    xMin = -outerXWidth/2; xMax = -xMin
    yMin = -outerYWidth/2; yMax = -yMin
    zMin = -outerZWidth/2; zMax = -zMin
    surfaceNum1 = self.insertMacroRpp(name=name, xMinMax=(xMin, xMax), 
                                  yMinMax=(yMin, yMax), zMinMax=(zMin, zMax),
                                  surfaceNum=surfaceNum1)
  
    xMin = -innerXWidth/2; xMax = -xMin
    yMin = -innerYWidth/2; yMax = -yMin
    zMin = -innerZWidth/2; zMax = -zMin
    surfaceNum2 = self.insertMacroRpp(name=name, xMinMax=(xMin, xMax), 
                                  yMinMax=(yMin, yMax), zMinMax=(zMin, zMax),
                                  surfaceNum=surfaceNum2)
  
    # ----cell--------
    descrStr = '%s, macrobody1:%s, macrobody2:%s, outerXWidth:%.3f, innerXWidth:%.3f, outerYWidth:%.3f, innerYWidth:%.3f, outerZWidth:%.3f, innerZWidth:%.3f, xShift:%.2f, yShift:%.2f, zShift:%.2f, matName:%s, density:%.4f'\
                  %(name, surfaceNum1, surfaceNum2, outerXWidth,innerXWidth, outerYWidth,innerYWidth, outerZWidth,innerZWidth, *shift, matName, density)
            
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum1, surfaceNum2], #cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix, 
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return (surfaceNum1, surfaceNum2), cellNum

  def insertMacroAndCellRppShell2(self, name,
                xMinMaxOut, yMinMaxOut, zMinMaxOut,
                xMinMaxIn, yMinMaxIn, zMinMaxIn,
                matName, density=0,
                shift=(0,0,0), rotMatrix=None, impString='',
                surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):
    """
    Inserts two RPP macros to generate shell.
    This version allows you to place the two surfaces at arbitrary locations, whereas
    the other verison placed both surfaces symmetrically about the origin in all
    three directions.
    Returns a list of the assigned macro numbers and the assigned cell number.
    """
    # ----macro--------  
    #c surface/macrobody number, transformation number optional, rpp, xmin/xmax,    ymin/ymax, zmin/zmax'
    #801 1 rpp -0.0728   0.0728    -0.32      0.32     -3 3 
    surfaceNum1 = self.insertMacroRpp(name=name, xMinMax=xMinMaxOut, 
                                  yMinMax=yMinMaxOut, zMinMax=zMinMaxOut,
                                  surfaceNum=surfaceNum1)
  
    surfaceNum2 = self.insertMacroRpp(name=name, xMinMax=xMinMaxIn,
                                  yMinMax=yMinMaxIn, zMinMax=zMinMaxIn,
                                  surfaceNum=surfaceNum2)
  
    # ----cell--------
    descrStr = '%s, macrobody1:%s, macrobody2:%s, xMinOut:%.3f, xMaxOut:%.3f, yMinOut:%.3f, yMaxOut:%.3f, zMinOut:%.3f, zMaxOut:%.3f, xMinIn:%.3f, xMaxIn:%.3f, yMinIn:%.3f, yMaxIn:%.3f, zMinIn:%.3f, zMaxIn:%.3f,  xShift:%.2f, yShift:%.2f, zShift:%.2f, matName:%s, density:%.4f'\
                  %(name, surfaceNum1, surfaceNum2, *xMinMaxOut, *yMinMaxOut, *zMinMaxOut, *xMinMaxIn, *yMinMaxIn, *zMinMaxIn, *shift, matName, density)
            
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum1, surfaceNum2], #cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix, 
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return (surfaceNum1, surfaceNum2), cellNum
  
#############################################################################
  ### !!!-----
  def insertMacroRhpHex(self, name, base=(0,0,0), axis=(0,0,1), r=(0,1,0),
                     surfaceNum=None, trNum=None):
    """
    From MCNP manual: RHP v1 v2 v3   h1 h2 h3  r1 r2 r3  s1 s2 s3  t1 t2 t3.
    RHP/HEX's side surface should be orthogonal to top/bottom.
    For RHP, acceptable numbers of arguments is {7, 9, 15}.
    Only the 9 arguments version is currently supported in CardSharp. This means
    that only regular hexagonal base is supported.

    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Rend': SN(surfaceNum.sn+'.1'),
                         'Rbegin': SN(surfaceNum.sn+'.2'),
                         'Send': SN(surfaceNum.sn+'.3'),
                         'Sbegin': SN(surfaceNum.sn+'.4'),
                         'Tend': SN(surfaceNum.sn+'.5'),
                         'Tbegin': SN(surfaceNum.sn+'.6'),
                         'Hend': SN(surfaceNum.sn+'.7'),
                         'Hbegin': SN(surfaceNum.sn+'.8')}
                         
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, Rhp/Hex macrobody:%s, trNum:%s, base:%.2f,%.2f,%.2f, axis:%.2f,:%.2f,%.2f, radius:%.2f,%.2f,%.2f'\
                  %(name, surfaceNum, trNumString, *base, *axis, *r)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s RHP %.4f %.4f %.4f  %.4f %.4f %.4f  %.4f %.4f %.4f'\
                             %(surfaceNum, trNumString, *base, *axis, *r))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

  def insertMacroAndCellRhpHex(self, name, base=(0,0,0), 
                 axis=(0,0,1), r=(0,1,0), 
                 matName='Void', density=0, 
                 shift=(0,0,0), rotMatrix=None, impString='',
                 surfaceNum=None, cellNum=None, uni=0):
    """
    Generates a RHP macro and a cell based on that macro.
    Returns assigned surface number and cell number.    
    """
    # ----macro--------
    surfaceNum = self.insertMacroRhpHex(name=name, base=base, axis=axis, 
                                  r=r, surfaceNum=surfaceNum)  
    # ----cell--------
    descrStr = '%s, macrobody:%s, base:%.2f,%.2f,%.2f, axis:%.2f,%.2f,%.2f, radius:%.2f,%.2f,%.2f, matName:%s, density:%.4f, shift:%.2f,%.2f,%.2f'\
                  %(name, surfaceNum, *base, *axis,
                    *r, matName, density, *shift)
  
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], #cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix, 
                               impString=impString, cellNum=cellNum, uni=uni)
   
    return surfaceNum, cellNum
  
  def insertMacroAndCellRhpHexShell(self, name, 
                 base1=(0,0,0), axis1=(0,0,1), r1=(0,1,0), 
                 base2=(0,0,0), axis2=(0,0,1), r2=(0,1,0), 
                 matName='Void', density=0, 
                 shift=(0,0,0), rotMatrix=None, impString='',
                 surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):
    """
    Uses two RHP macros to generate a shell.

    Returns a list of the assigned macro numbers and the assigned cell number.
    """
    # ----macro--------
    surfaceNum1 = self.insertMacroRhpHex(name=name,
                                           base=base1, axis=axis1, r=r1, 
                                           surfaceNum=surfaceNum1)
    surfaceNum2 = self.insertMacroRhpHex(name=name, 
                                           base=base2, axis=axis2, r=r2,
                                           surfaceNum=surfaceNum2)
    # ----cell--------
    descrStr = '%s, macrobody1:%s, macrobody2:%s,\
    base1:%.2f,%.2f,%.2f, axis1:%.2f,%.2f,%.2f, r1:%.2f,%.2f,%.2f,\
    base2:%.2f,%.2f,%.2f, axis2:%.2f,%.2f,%.2f, r2:%.2f,%.2f,%.2f,\
    matName:%s, density:%.4f, shift:%.2f,%.2f,%.2f'\
                  %(name, surfaceNum1, surfaceNum2,
                    *base1, *axis1, *r1, 
                    *base2, *axis2, *r2, 
                    matName, density, *shift)
  
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum1, surfaceNum2], # cellComplementList=None, 
                               matName=matName, density=density, 
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
    
    return (surfaceNum1, surfaceNum2), cellNum
#############################################################################
  ### !!!-----
  def insertMacroCone(self, name, base=(0,0,0), height=(0,0,1), radiusBase=2, radiusTop=1,
                    surfaceNum=None, trNum=None):
    """
    Cone has a base pos, height vector, base radius and top radius.
    radiusBase must be larger than radiusTop
    
    From MCNP manual: TRC vx vy vz    hx hy hz   r1 r2.
    vertexX, vertexY, vertexZ - are the coordinates of the base.
    hx/hy/hz - provide orientation and height of top corner.
               If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.
    r1 > r2 (base radius and top radius).

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Cone': SN(surfaceNum.sn+'.1'),
                         'Top': SN(surfaceNum.sn+'.2'),
                         'Base': SN(surfaceNum.sn+'.3')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, cone macrobody:%s, trNum:%s, baseX:%.4f, baseY:%.4f, baseZ:%.4f, heightX:%.4f, heightY:%.4f, heightZ:%.4f, radiusTop:%.4f, radiusBase:%.4f'\
                  %(name, surfaceNum, trNumString, *base, *height, radiusBase, radiusTop)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s TRC %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f %.4f'\
                             %(surfaceNum, trNumString, *base, *height, radiusBase, radiusTop))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

  def insertMacroAndCellCone(self, name, base=(0,0,0), height=(0,0,1),
                    radiusBase=2, radiusTop=1,
                    matName='Void', density=0, 
                    shift=(0,0,0), rotMatrix=None, impString='',
                    surfaceNum=None, cellNum=None, uni=0):
    """
    Generates a TRC truncated right angle cone macro and a cell based on that macro.
  
    The cone is first instantiated at 0/0/0, then optionally rotated by rotMatrix and
    then moved by shift.

    Returns assigned surface number and cell number.    
    """
    # ----macro--------
    surfaceNum = self.insertMacroCone(name=name, 
                                    base=base, height=height, 
                                    radiusBase=radiusBase, radiusTop=radiusTop,
                                    surfaceNum=surfaceNum)  
    # ----cell--------
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    descrStr = '%s, macrobody:%s, baseX:%.2f, baseY:%.2f, baseZ:%.2f, heightX:%.2f, heightY:%.2f, heightZ:%.2f, radiusBase:%.2f, radiusTop:%.2f, matName:%s, density:%.4f'\
                  %(name, surfaceNum, *base, *height,
                    radiusBase, radiusTop, matName, density)
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], # cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return surfaceNum, cellNum

    # Add convenience function cone shell when needed.
#############################################################################
  ### !!!-----
  def insertMacroWedge(self, name, vertex=(0,0,0), base1=(1,0,0),
                    base2=(0,1,0), height=(0,0,1), 
                    surfaceNum=None, trNum=None):
    """
    Wedge has a right angled triangle as base and a right angled prism above it.
      
    From MCNP manual: WED vx vy vz v1x v1y v1z v2x v2y v2z v3x v3y v3z.
    vertexX, vertexY, vertexZ - are the coordinates of the rt angle vertex of base.
    v1x/v1y/v1z - vector of one of the two rt angled sides of the base.
    v2x/v2y/v2z = vector of the second of the two rt angled sides of the base.
    hx/hy/hz - provide orientation and height of top corner.
               If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.
    
    But rotations generally need to be around the center of axis.

    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'SlantPlane': SN(surfaceNum.sn+'.1'),
                         'V2V3': SN(surfaceNum.sn+'.2'),
                         'V1V3': SN(surfaceNum.sn+'.2'),
                         'TopTri': SN(surfaceNum.sn+'.2'),
                         'BottomTri': SN(surfaceNum.sn+'.3')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, wedge macrobody:%s, trNum:%s, vertexX:%.2f, vertexY:%.2f, vertexZ:%.2f, base1X:%.2f, base1Y:%.2f, base1Z:%.2f, base2X:%.2f, base2Y:%.2f, base2Z:%.2f, heightX:%.2f, heightY:%.2f, heightZ:%.2f,'\
                  %(name, surfaceNum, trNumString, *vertex, *base1,
                    *base2, *height)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s WED %.4f %.4f %.4f   %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f %.4f %.4f'\
                             %(surfaceNum, trNumString, *vertex, *base1, *base2, *height))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

  def insertMacroAndCellWedge(self, name, vertex=(0,0,0), base1=(1,0,0),
                    base2=(0,1,0), height=(0,0,1), 
                    matName='Void', density=0, 
                    shift=(0,0,0), rotMatrix=None, impString='',
                    surfaceNum=None, cellNum=None, uni=0):
    """
    Generates a WED wedge macro and a cell based on that macro.
  
    The wedge is first instantiated at 0/0/0 and then moved by xShift/yShift/zShift.
    
    Returns assigned surface number and cell number.    
    """
    # ----macro--------
    surfaceNum = self.insertMacroWedge(name=name, 
                                    vertex=vertex, base1=base1, 
                                    base2=base2, height=height,
                                    surfaceNum=surfaceNum)  
    # ----cell--------
    if impString == '':
      impString = self.getImpString() #'imp:p=1'
  
    descrStr = '%s, macrobody:%s, vertexX:%.2f, vertexY:%.2f, vertexZ:%.2f, base1X:%.2f, base1Y:%.2f, base1Z:%.2f, base2X:%.2f, base2Y:%.2f, base2Z:%.2f, heightX:%.2f, heightY:%.2f, heightZ:%.2f, matName:%s, density:%.4f'\
                  %(name, surfaceNum, *vertex, *base1,
                    *base2, *height, matName, density)
  
    self.insertIntoCellSection('c '+descrStr)
    cellNum = self.insertCell(name=name, surfaceList=[-surfaceNum], # cellComplementList=None, 
                               matName=matName, density=density,
                               shift=shift, rotMatrix=rotMatrix,
                               impString=impString, cellNum=cellNum, uni=uni)
  
    return surfaceNum, cellNum
  
    # Add wedge shell when needed.
#############################################################################
  ### !!!-----
  def insertMacroBox(self, name, v=(-1,-1,-1), a1=(2,0,0), a2=(0,2,0), a3=(0,0,2), 
                    surfaceNum=None, trNum=None):
    """
    BOX Vx Vy Vz A1x A1y A1z A2x A2y A2z A3x A3y A3z
      where Vx Vy Vz = x,y,z coordinates of corner
    A1x A1y A1z = vector of first side
    A2x A2y A2z = vector of second side
    A2x A3y A3z = vector of third side

    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Xmax': SN(surfaceNum.sn+'.1'),
                         'Xmin': SN(surfaceNum.sn+'.2'),
                         'Ymax': SN(surfaceNum.sn+'.3'),
                         'Ymin': SN(surfaceNum.sn+'.4'),
                         'Zmax': SN(surfaceNum.sn+'.5'),
                         'Zmin': SN(surfaceNum.sn+'.6')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, wedge macrobody:%s, trNum:%s, vX:%.2f, vY:%.2f, vZ:%.2f, a1X:%.2f, a1Y:%.2f, a1Z:%.2f, a2X:%.2f, a2Y:%.2f, a2Z:%.2f, a3X:%.2f, a3Y:%.2f, a3Z:%.2f,'\
                  %(name, surfaceNum, trNumString, *v, *a1, *a2, *a3)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s BOX %.4f %.4f %.4f   %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f %.4f %.4f'\
                             %(surfaceNum, trNumString, *v, *a1, *a2, *a3))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum
    
#############################################################################
  ### !!!-----
  def insertMacroREC(self, name, v=(0,-5,0), h=(0,10,0), v1=(4,0,0), Rm=2,
                                        surfaceNum=None, trNum=None):
    """
    ??? only 10 entry version is supported
    
    Right Elliptical Cylinder
    REC Vx Vy Vz Hx Hy Hz V1z V1y V1z V2x V2y V2z
        where Vx Vy Vz = x,y,z coordinates of bottom cylinder
    Hx Hy Hz = cylinder axis height vector
    V1x V1y V1z = 2 ellipse major axis vector (normal to Hx Hy Hz)
    V2x V2y V2z = ellipse minor axis vector (orthogonal to H and V1)

    If there are ten entries instead of twelve, the tenth entry is the minor 
    axis radius, where the direction is determined from the cross product of 
    H and V1.

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'Cyl': SN(surfaceNum.sn+'.1'),
                         'Top': SN(surfaceNum.sn+'.2'),
                         'Base': SN(surfaceNum.sn+'.3')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, Right ellip cyl macrobody:%s, trNum:%s, vX:%.4f, vY:%.4f, vZ:%.4f, hX:%.4f, hY:%.4f, hZ:%.4f, v1X:%.4f, v1Y:%.4f, v1Z:%.4f, Rm:%.4f'\
                  %(name, surfaceNum, trNumString, *v, *h, *v1, Rm)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s REC %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f %.4f %.4f  %.4f'\
                             %(surfaceNum, trNumString, *v, *h, *v1, Rm))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum
#############################################################################
  ### !!!-----
  # Follownig macros don't have convenience functions yet
  # Will be added as needed
  def insertMacroEllipsoid(self, name, v1=(0,0,-2), v2=(0,0,2), Rm=6,
                                        surfaceNum=None, trNum=None):
    """
    ELL V1x V1y V1z V2x V2y V2z Rm
    If Rm > 0:
      V1x Vly V1z = first focus coordinate
      V2x V2y V2z = second focus coordinate
      Rm = length of major axis
    If Rm < 0:
      V1x Vly V1z = center of ellipsoid
      V2x V2y V2z = major axis vector (length = major radius)
      Rm = minor radius length

    Returns assigned surface number.    
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, ellipsoid macrobody:%s, trNum:%s, v1X:%.4f, v1Y:%.4f, v1Z:%.4f, v2X:%.4f, v2Y:%.4f, v2Z:%.4f, Rm:%.4f'\
                  %(name, surfaceNum, trNumString, *v1, *v2, Rm)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s ELL %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f'\
                             %(surfaceNum, trNumString, *v1, *v2, Rm))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum
#############################################################################
  ### !!!-----
  def insertMacroARB(self, name, a=(-5,-10,-5), b=(-5,-10,5), c=(5,-10,-5), d=(5,-10,5),
                     e=(0,12,0), f=(0,0,0), g=(0,0,0), h=(0,0,0),
                     N1=1234, N2=1250, N3=1350, N4=2450, N5=3450, N6=0,
                    surfaceNum=None, trNum=None):
    """
    ARB ax ay az bx by bz cx cy cz ... hx by hz N1 N2 N3 N4 N5 N6
    
    There must be eight triplets of entries input for the ARB to describe the 
    (x,y,z) of the corners, although some may not be used (just use zero triplets 
    of entries). These are followed by six more entries, N, which follow the 
    prescription: each entry is a four-digit integer that defines a side of the 
    ARB in terms of the corners for the side.

    ARB -5 -10 -5   -5 -10 5   5 -10 -5   5 -10 5   0 12 0   0 0 0
    0 0 0  0 0 0  1234 1250 1350 2450 3450 0

    A five-sided polyhedron with corners at x,y,z = (-5,-10,-5), (-5,-10,6),
    (5,-10,-5), (5,-10,5), (0,12,0), and planar facets are constructed from
    corners 1234, etc
    
    Returns assigned surface number.
    """
    surfaceNum = self._getNextSN() if surfaceNum == None else SN(surfaceNum)
    surfaceNum.facets = {'N1': SN(surfaceNum.sn+'.1'),
                         'N2': SN(surfaceNum.sn+'.2'),
                         'N3': SN(surfaceNum.sn+'.3'),
                         'N4': SN(surfaceNum.sn+'.4'),
                         'N5': SN(surfaceNum.sn+'.5'),
                         'N6': SN(surfaceNum.sn+'.6')}
    
    trNumString = '' if trNum==None else '%d'%(trNum)
    
    macroString = ''
    descrStr = '%s, ARB macrobody:%s, trNum:%s, \
                     aX:%.2f,aY:%.2f,aZ:%.2f, bX:%.2f,bY:%.2f,bZ:%.2f, \
                     cX:%.2f,cY:%.2f,cZ:%.2f, dX:%.2f,dY:%.2f,dZ:%.2f, \
                     eX:%.2f,eY:%.2f,eZ:%.2f, fX:%.2f,fY:%.2f,fZ:%.2f, \
                     gX:%.2f,gY:%.2f,gZ:%.2f, hX:%.2f,hY:%.2f,hZ:%.2f, \
                       N1:%d, N2:%d, N3:%d, N4:%d, N5:%d, N6:%d'\
                  %(name, surfaceNum, trNumString, *a, *b, *c, *d, *e, *f, *g, *h,
                            N1, N2, N3, N4, N5, N6)
    # ----macro--------
    macroString += toMCNP80String('c ---%s'%(descrStr))  
    #c surface/macrobody number, transformation number optional, RCC, xPos,yPos,zPos, axisX, axisY, axisZ, radius'
    #801 1 rcc 0  0  0  1  1  1  5
    macroString += toMCNP80String('%s %s ARB %.4f %.4f %.4f   %.4f %.4f %.4f \
                                  %.4f %.4f %.4f  %.4f %.4f %.4f  %.4f %.4f %.4f \
                                  %.4f %.4f %.4f   %.4f %.4f %.4f  %.4f %.4f %.4f  \
                                  %d  %d  %d  %d  %d  %d'\
                             %(surfaceNum, trNumString, *a, *b, *c, *d, *e, *f, *g, *h,
                            N1, N2, N3, N4, N5, N6))
  
    self.collectedSurfaceStrings += macroString
  
    printIfShow(macroString)
    return surfaceNum

#############################################################################
  ### !!!-----
  # ??? another function or parameter option to describe the world without
  # using complements? Using only surfaces?
  # User can do that themselves?
  def insertWorldMacroAndCell(self, pos=(0,0,0), radius=50, surfaceList=None,
                                 worldMat='Void',  worldDensity=0, 
                                 worldSurfaceNum=None, worldCellNum=None, graveyardCellNum=None):
    """
    This function inserts a sphere macro to define the world/graveyard.
    This can be done using using automatic cell complement. 
    If you would like to define the world without using complements, just provide
    a surfaceList which contains all the surfaces whose outside defines the world.
    The worldSurfaceNum will the surface whose inside will define the world.
    
    Only the radius needs to be specified.
    Define the world cell using a sphere macro.
    The outside of sphere is the graveyard cell and will be void.
    The inside of sphere with complement(#) of the cell list is the inside of the
    world.
    *** WARNING: The complement operator # assumes the following number is a cell number,
    but If the # is omitted, the cell number will be treated as a macro/surface
    number leading to unexpected results if such a macro/surface exists!!!
    """
#    if worldSurfaceNum == None: worldSurfaceNum = self._getNextSN()
#    if worldCellNum == None: worldCellNum = self._getNextCN()
#    if graveyardCellNum == None: graveyardCellNum = self._getNextCN()

    worldSurfaceNum = self._getNextSN() if worldSurfaceNum is None else SN(worldSurfaceNum)
    worldCellNum = self._getNextCN() if worldCellNum is None else CN(worldCellNum)
    graveyardCellNum = self._getNextCN() if graveyardCellNum is None else CN(graveyardCellNum)

    # ----macro--------
    # c -------World sphere macrobody-------------------------------------
    # 900   so 120  $ sphere at origin
    worldSurfaceNum = self.insertMacroSphere(name='Universe', pos=pos, radius=radius, 
                                          surfaceNum=worldSurfaceNum)
    
    # ----cell--------    
    descrStr = 'World cells---%s inside------------------'%(worldMat)
  
    imp1String = self.getImpString(1) #'imp:p=1'
    imp0String = self.getImpString(0) #'imp:p=1'
  
    if surfaceList is not None:
      # we are using the surfaceList to define the world
      cellsToComplement = None 
      surfaceList.append(-worldSurfaceNum)
    else:
      # we are using automatic cell complement list (along with worldSurfaceNum)
      cellsToComplement = None 
      surfaceList = [-worldSurfaceNum]
      uniZeroCellList = []
      for c in self.cellNumNameList:
        if c[3] == 0:
          uniZeroCellList.append(c[0])
      if len(uniZeroCellList) > 0: # incase there are no cells other than the universe
        cellsToComplement = uniZeroCellList
  
  # 900 124 -0.0012 -900 %s imp:p=1 $ Air inside
  # 999   0          900    imp:p=0 $ Void cell outside
  
  #  worldCell=\
  #"""c -------World cells-----------------------------------------------
  #%d  %d  %s -%d  #%s    %s $ Air inside
  #%d   0           %d    %s $ Void cell outside"""
  #
  #  if len(cellsToComplement) != 0:
  #    cellListString = ' #'.join(map(str, cellsToComplement))
  #  else:
  #    cellListString = ''
  #    
  #  worldCell = worldCell%(worldCellNum, matNum, uniDensityString, worldSurfaceNum, cellListString, imp1String,
  #                               graveyardCellNum, worldSurfaceNum, imp0String)
  #  cellString += toMCNP80String(universeCell)
  
    self.insertIntoCellSection('c '+descrStr)
    cn1 = self.insertCell(name='World', surfaceList=surfaceList, cellComplementList=cellsToComplement, 
                   matName=worldMat, density=worldDensity, 
                   impString=imp1String, cellNum=worldCellNum)
  
    cn2 = self.insertCell(name='Graveyard', surfaceList=[worldSurfaceNum], 
                           matName='Void', density=worldDensity, 
                           impString=imp0String, cellNum=graveyardCellNum)
    
    self.printCellNumNameList()
    
    return worldSurfaceNum, (cn1, cn2)

  def printCellNumNameList(self):
    """
    Prints out a list of all the cell numbers/names in the deck.
    Automatically called when the World macro/cell is instantiated since it is
    usually the last one to be instantiated.
    """
    print('---------Cell List------------')
    print('CellNum, name, MatNum, UniNum')
    numName = sorted(self.cellNumNameList, key=lambda tup: int(str(tup[0]))) # convert CN to int
    for n in numName:
      print(str(n[0]), '"'+n[1]+'"', csmat.matLookupByNum(n[2]), n[3])
    print('------------------------------')
    
  ### !!!----------TRANSLATE ROTATE FUNCTIONS----------
  def insertTRString(self, name, shift=(0,0,0), rotMatrix=None, trNum=None):
    """
    Used by insertMacro functions to insert a TRanslate/Rotate string.
    The rotation happens before the translate.
    """
    if trNum is None: trNum = self._getNextTRN()
    
    descrStr = '%s, shift: %.2f %.2f %.2f'%(name, *shift)
    trString = toMCNP80String('c ---%s'%(descrStr))  
   
    trTemplate = '*TR%d %.3f %.3f %.3f  %.3f %.3f %.3f   %.3f %.3f %.3f   %.3f %.3f %.3f\n' # * for degree
  #  if shift[0]==0 and shift[1]==0 and shift[2]==0 and rotMatrix is None:
  #    trString = ''
    if rotMatrix is None:
      s = '*TR%d  %.3f %.3f %.3f'%(trNum, *shift,)
    else:
      s = trTemplate%(trNum, *shift, *rotMatrix)
  
    trString += toMCNP80String(s)
  
    self.collectedTrStrings += trString
    return trNum

# The following get functions could be kept outside the class
# Do not depend on the object properties
# Kept here for a simpler interface
# Unlike the insert functions, the get functions do not add anything to the deck.
  def getTrString(self, shift=(0,0,0), rotMatrix=None, trNum=0):
    """
    The provided rotMatrix should be in cosines.
    """
    trStringDeg = self.getTrStringDeg(shift, rotMatrix, trNum)
    trString = trStringDeg.replace('*TR', 'TR')
    return trString

  def getTrStringDeg(self, shift=(0,0,0), rotMatrix=None, trNum=0):
    """
    The provided rotMatrix should be in degrees.
    """
    trTemplate = '*TR%d  %.3f %.3f %.3f  %.3f %.3f %.3f   %.3f %.3f %.3f   %.3f %.3f %.3f' # * for degree
    if shift[0]==0 and shift[1]==0 and shift[2]==0 and rotMatrix is None:
      trString = ''
    elif rotMatrix is None:
      trString = '*TR%d  %.6f %.6f %.6f'%(*shift,)
    else:
      trString = trTemplate%(trNum, *shift, *rotMatrix)

    return trString

  def getTrclStringDeg(self, shift=(0,0,0), rotMatrix=None):
    """ 
    Make as small a TRCL string as will do the job.
    Used with commands that insert CELL.
    TRCL does not have a trNum and has parentheses.
  
    The provided rotMatrix should be in degrees.  
    """
    trclTemplate = '*TRCL (%.3f %.3f %.3f  %.3f %.3f %.3f   %.3f %.3f %.3f   %.3f %.3f %.3f)' # * for degree

    if shift[0]==0 and shift[1]==0 and shift[2]==0 and rotMatrix is None:
      trclString = ''
    elif rotMatrix is None:
      trclString = '*TRCL (%.6f %.6f %.6f)'%(*shift,)
    else:
      trclString = trclTemplate%(*shift, *rotMatrix)
  
    return trclString

  def getRotationMatrix(self, rotationAxis='Z', angleDeg=0):
    """
    The rotation matrix in degrees, expects angles between 0-180 degrees!
    At least the note says so, but the example shows -45!
    This rotation matrix is in terms of cosines only, no sines.
    
    Does MCNP multiply with the matrix on the left or right?
    Seems like it does it with matrix on right!
    """
    #print('theta: ', theta)
    theta = angleDeg
    if theta == 0:
      return np.array(identityRotMatrix)
  
    """
    # cos(-theta) = cos(theta)
    # cos(180+theta) = -cos(theta)
    #sin(-theta) = -sin(theta)
    #cos(90-theta) = cos(theta-90) = sin(theta)
    #cos(90+theta) = -sin(theta)
    """
    if rotationAxis == 'X':
      m = [ 0,          90,         90,  
           90,       theta, (90+theta), 
           90,  (theta-90),     theta]
    elif rotationAxis == 'Y':
      m = [theta,      90,  (theta-90),  
              90,       0,          90,  
        90+theta,      90,      theta]
    elif rotationAxis == 'Z':
      m = [     theta, 90+theta, 90,  
           (theta-90),    theta, 90,  
                   90,       90,  0]
  
    # Bring angles between 0-180
    for i in range(9):
      if m[i]>360:
        m[i] -= 360
      if m[i]<0:
        m[i]=-m[i]
      if m[i]>180:
        m[i] = 360-m[i]
        
    m = np.array(m)
    #m = m.reshape((3,3)).transpose()
    
    return np.array(m)

  def getRotationMatrixArbitraryAxis(self, axis, angleDeg):
    """
    axis is a tuple (x,y,z).
    angleDeg is in degrees.
    """
    axis = np.array(axis)
    mag = np.sqrt(np.sum(axis**2)) 
    if np.isclose(mag, 0) or angleDeg == 0: 
      return np.cos(np.deg2rad(identityRotMatrix))
    
    axis = axis / mag  
    ux, uy, uz = axis
  
    cosT = np.cos(np.deg2rad(angleDeg))
    sinT = np.sin(np.deg2rad(angleDeg))
  
    R11 = cosT + ux*ux*(1-cosT)
    R12 = ux*uy*(1-cosT) - uz*sinT
    R13 = ux*uz*(1-cosT) + uy*sinT
    
    R21 = uy*ux*(1-cosT) + uz*sinT
    R22 = cosT + uy*uy*(1-cosT)
    R23 = uy*uz*(1-cosT) - ux*sinT
    
    R31 = uz*ux*(1-cosT) - uy*sinT
    R32 = uz*uy*(1-cosT) + ux*sinT
    R33 = cosT + uz*uz*(1-cosT)
  
    m = np.array([R11,R12,R13,  R21,R22,R23,  R31,R32,R33])
  
    return m
#############################################################################
  ### !!!---MATERIAL FUNCTIONS----------
  def insertMaterials(self, matList):
    """
    These go in the data card section.
    """
    matString = ''
    matString += toMCNP80String('c --%s--'%(matList))
    for mat in matList:
      matTemplate = csmat.matDict[mat][0]
      matNumber = csmat.matDict[mat][1]
      matString += matTemplate.format(matNumber) + '\n'
      print('Adding to deck, material ', mat, ' as: ', matNumber)
  
    self.collectedMatStrings += matString
    return  
#############################################################################
  ### !!!---SOURCE FUNCTIONS----------
  def insertKCODEcard(self, npsPerCycle=None, initialK=None, cyclesToSkip=None, 
                      totalCycles=None, storageFor=None, normBy=None, 
                      mrkp=None, avgOver=None):
    """
    KCODE NSRCK RKK IKZ KCT MSRK KNRM MRKP KC8
    
    NSRCK - Number of source histories per cycle
    RKK - initial guess for keff
    IKZ - number of cycles to skip before beginning tally accumulations
    KCT - number of cycles to be done
    MSRK - number of source points to allocate storage for
    KNRM - normalize tallies by 0=weight / 1=histories
    MRKP - maximum number of cycle values on MCTAL or RUNTPE
    KC8 - summary and tally information averaged over 0=all cycles/1=active cycles only
    Defaults: NSRCK=1000;  RKK=1.0; IKZ=30; KCT=IKZ+100; 
              MSRK=4500 or 2*NSRCK; KNRM=0; MRKP=6500; KC8=1
    
    A criticality source is different from a fixed source because the fission 
    source locations change from cycle to cycle. A cycle is the completion of 
    the number of histories requested by the first entry on the kcode card. The 
    initial ksrc source is used only for the first keff cycle. A new spatial 
    fission source is generated during each cycle and is used as the source for 
    the next cycle.
    """
    kcodeStr = 'KCODE ' # 1000 1.0 15 115' # Criticality source
  
    if npsPerCycle is None: kcodeStr += ' j'
    else: kcodeStr += ' %s '%npsPerCycle
    
    if initialK is None: kcodeStr += ' j'
    else: kcodeStr += ' %.6f '%initialK
  
    if cyclesToSkip is None: kcodeStr += ' j'
    else: kcodeStr += ' %s '%cyclesToSkip
  
    if totalCycles is None: kcodeStr += ' j'
    else: kcodeStr += ' %s '%totalCycles
  
    self.insertIntoMaterialSection(kcodeStr)
    return

  def insertKSRCcard(self, xyzList=[(0,0,0)]):
    """
     KSRC x1 y1 z1 x2 y2 z2
     This card contains up to NSRCK (x,y,z) triplets that are locations of initial 
     source points for a KCODE calculation. At least one point must be in a cell 
     containing fissile material and points must be away from cell boundaries. 
     It is not necessary to input all NSRCK coordinate points. MCNP will start 
     approximately (NSRCK/number of points) particles at each point. Usually one 
     point in each fissile region is adequate, because MCNP will quickly calculate 
     and use the new fission source distribution. The energy of each particle in 
     the initial source is sampled from a Watt fission spectrum hardwired into 
     MCNP, with a = 0.965 MeV and b = 2.29 MeV−1.  
    
     An SDEF card also can be used to sample initial source points in fissile 
     material regions. The SDEF card parameters applicable to volume sampling 
     can be used: CEL, POS, RAD, EXT, AXS, X, Y, Z; and CCC, ERG, and EFF. If a 
     uniform volume distribution is chosen, the early values of keff will likely 
     be low because too many particles are put near where they can escape, just 
     the opposite of the usual situation with the KSRC card. Do not change the 
     default value of WGT for a KCODE calculation.
    """
    
    ksrcStr = 'KSRC ' # spherePos Source Points for KCODE Calculation 
    for p in xyzList:
      ksrcStr += '  %.6f %.6f %.6f  '%(p[0], p[1], p[2])
      
    self.insertIntoMaterialSection(ksrcStr) # anywhere in data section would work
  
    return
  
  """    
  Only one SDEF card in a deck.
  The SDEF card is an extended source of weirdness.
  There are 24 different keyword/value sets that can go on the SDEF line:
  Equals sign between key and value is optional.
  MCNP 6.1 Page 3-122.

  If SDEF is not enough, look for SOURCE and SRCDX routine.

  Three types of volume sources: Spherical, cylindrical, box.
  Three types of surface sources: 
  SDEF (general source def) card is one of four available methods of defining 
  starting particles.
  (SSR, KCODE, user defined) Page 3-119

  ??? return dictionary of distribution numbers used?
  
  -----spatial origin of particles-----
  POS: Reference point for position sampling (Default 0 0 0)
  RAD: Radial distance of the position from POS or AXS. Default 0
  AXS: Reference vector for EXT and RAD in vector notation. Default None
  EXT: For a volume source is the distance from POS along AXS.
  CEL: Starting cell for the particles, or cell rejection
       When used as cell rejection, the space given by POS/AXS?RAD etc is sampled
       and then tested against CEL for rejection
  CCC: Cookie cutter cell, works the same as cell rejection. What's different???
  
  Only POS, gives a point source
  POS/RAD, gives a spherical source
  POS/RAD/AXS/EXT, gives a cylindrical source
  -----emitting direction (independent of spatial origin)
  VEC: Reference vector for DIR in vector notation
  DIR: Source solid angle. DIR=1 gives a mono-directional source in the direction of VEC.
  TR : Reposition/reorient source
  
  Only VEC without DIR gives a monodirectional beam
  ----------------
  PAR: (N or 1 for neutron, P or 2 for photon, etc, default N)
  ERG: Starting Kinetic energy of particle (Default 14 MeV)
  WGT: Starting weight of particle (Default 1)
  
  Firstly a scalar or vector constant.
  Secondly, a distribution.
  Thirdly a dependent distribution like FPOS or FCELL etc.
  
  The value for the different keywords is of different types.
  PAR=2 (Particle type 2, photon, PAR=p also works?)
  POS=1 2 3 (Position x/y/z coordinates)
  ERG=d1 (Energy is given by a distribution identified by label 1 on following lines)
  
  When the distribution is giving on the lines following the SDEF line, the distribution
  can be given in multiple ways and can take multiple lines.
  The distribution lines themselves have keywords of the form:
  SI2 : Source Information for distribution 2
  SP2 : Source Probability for distribution 2
  SB2 : Source Biasing for distribution 2
  SC2 : Source comment
  
  The first letter on the SI card being L/A/H specifies a Discrete/Continuous/Histogram 
  S allows sampling among distributions, one of which is chosen for further sampling
  
  There are two forms of the SP card. First letter after SP being positive or non numeric
  means that a SI/SP defines a distribution.
  In this case, first entry of SP should be zero. (But not so for discrete?)
  
  First thing being a negative number means a mathematical distribution is specified
  
  The source biasing distribution when applied to DIR keyword provides the
  distribution in terms of cosines which go from -1 to +1 (backscatter to forward)
  
  The two columns of the distribution can be given on two rows or as two columns,
  probably to deal with the 80 column limitation.
  
  FCELL: Function of cell
  FPOS: Function of position
  """
  ### !!!----Point sources
  def insertSource_PointIsotropicWithEnergyDistrib(self, pos=[0,0,0], 
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], 
                           par='P', trNum=None):
    """
    First entry on SP card has to be zero for Continuous distribution only ???
    """
    assert(len(eList) == len(relFq))
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)    

    top = """\
c ----- Source: 
SDEF POS=%.2f %.2f %.2f ERG=d1 PAR=%s %s $ energy distribution
"""
    #----------------------------------------------------------
    ergString = self.getEnergyDistributionString(distNum=1, eList=eList, relFq=relFq, 
                                            distrib=ergDistrib, vertString=True)
  
    sdefString = top%(*pos, par, trNumString) + ergString
  
    self.collectedSrcStrings = sdefString
    return sdefString

  def insertSource_PointMonoDirWithEnergyDistrib(self, pos=[0,0,0], vec=[0,1,0], 
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], 
                           par='P',  trNum=None):
    """
    Does not work???
    Point source which is also monodirectional... has problems? Mainly with F5 
    kind of tallies???
    With DIR=1, ARA is required.
    Page 3-52: Area of surface (required only for direct contributions to point 
    detectors from plane surface source.)
    
    Since this is a point source, I am setting ARA to zero ???
    """
    assert(len(eList) == len(relFq))
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)  
    
    top = """\
c ----- Source: point mono directional source with tabulated photon energy distribution
SDEF POS=%.2f %.2f %.2f  VEC=%.2f %.2f %.2f DIR=1 ARA=0 ERG=d1 PAR=%s %s $ energy distribution
"""
    # ??? Change to using .format
    #----------------------------------------------------------
    ergString = self.getEnergyDistributionString(distNum=1, eList=eList, relFq=relFq, 
                                            distrib=ergDistrib, vertString=True)
  
    sdefString = top%(*pos, *vec, par, trNumString) + ergString
  
    self.collectedSrcStrings = sdefString
    return sdefString

  def insertSource_PointWithAngularAndEnergyDistrib(self, pos=[0,0,0], 
                           dirDistrib=None, # None, Bias, Restrict
                           vec=[0,1,0], coneHalfAngleDeg=25.8,
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], 
                           par='P', trNum=None):
    """
    ergDistrib - 'Discrete', 'Histogram', 'Continuous'    
    dirDistrib - None, 'Bias', 'Restrict'
    coneHalfAngleDeg - Ignored if dirDistrib is None
    
    Source is still isotropic but with Angular biasing.
    So the values will be the same as with isotropic, but convergence should be faster.
    coneHalfAngleDeg - Between 0 and 180 deg.
    """
    assert(len(eList) == len(relFq))

    assert(len(eList) == len(relFq))

    ergDistNum = 1
    dirDistNum = 2 # angular biasing distribution of particle initial direction

    if dirDistrib is None or dirDistrib=='None':
      dirString = ''
      dirDistNumString = ''

    elif dirDistrib == 'Bias':
      dirString = self.getAngularBiasingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
    elif dirDistrib == 'Restrict':
      dirString = self.getAngularRestrictingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)

    ergString = self.getEnergyDistributionString(distNum=ergDistNum, eList=eList, relFq=relFq, 
                                            distrib=ergDistrib, vertString=True)

    trNumString = '' if trNum==None else 'TR=%d'%(trNum)    
  
    top = """\
c ----- Source: point source with biasing tabulated photon energy distribution
SDEF POS={posX:.2f} {posY:.2f} {posZ:.2f} VEC={vecX:.2f} {vecY:.2f} {vecZ:.2f} \
ERG=d{ergDistNum:d} {dirDistNumString} PAR={par} {trNumString} $ energy distribution
"""
    sdefString = top.format(posX=pos[0], posY=pos[1], posZ=pos[2],
                            vecX=vec[0], vecY=vec[1], vecZ=vec[2],
                            ergDistNum=ergDistNum,
                            dirDistNumString=dirDistNumString,
                            par=par, trNumString=trNumString)
    sdefString = sdefString + dirString + ergString
  
    self.collectedSrcStrings = sdefString
    return sdefString
  
  ### !!!---Volumetric sources
  def insertSource_SphereWithAngularAndEnergyDistrib(self, 
                           pos=[0,0,0], radius=.05,
                           dirDistrib=None, # None, Bias, Restrict
                           vec=[0,1,0], coneHalfAngleDeg=1, 
                           eList=[.3, .5, 1.0, 2.5], # bin edges (first edge is 0)
                           relFq=[0, .1, .3, .4], # values for bins, will be normalized
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           rejCell=None, eff=0.01, 
                           par='P', trNum=None):
    """
    This uses the POS, RAD for particle origin while the cylinder also uses
    the AXS and EXT.    
    Both use VEC and DIR for emission direction.

    ergDistrib - 'Discrete', 'Histogram', 'Continuous'
    dirDistrib - None, 'Bias', 'Restrict'
    coneHalfAngleDeg - Ignored if dirDistrib is None
    """
    assert(len(eList) == len(relFq))
          
    radDistNum = 1
    #extDistNum = 2
    ergDistNum = 3
    dirDistNum = 4 # angular biasing distribution of particle initial direction
    
    if rejCell == None:
      rejCellString = ''
    else:
      rejCellString = ' CEL=%s EFF=.0001'%(rejCell)

    if dirDistrib is None:
      dirString = ''
      dirDistNumString = ''
    elif dirDistrib == 'Bias':
      dirString = self.getAngularBiasingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
    elif dirDistrib == 'Restrict':
      dirString = self.getAngularRestrictingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
      
    ergDistribString = self.getEnergyDistributionString(distNum=ergDistNum, eList=eList, relFq=relFq,
                                                        distrib=ergDistrib)
  
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)
  
    top = """\
c ----- Volume Source: Sphere
SDEF POS={posX:.2f} {posY:.2f} {posZ:.2f} RAD=d{radDistNum:d} \
VEC={vecX:.2f} {vecY:.2f} {vecZ:.2f} ERG=d{ergDistNum:d} \
{dirDistNumString} PAR={par} {rejCellString} {trNumString}
si{radDistNum:d}    0   {radius:.4f}       $ Source information d1 RAD source radius wrt AXS (.05 is 1 mm dia spot)
sp{radDistNum:d}   -21  2          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)
"""
  #  top = """ """
    sdefString = top.format(posX=pos[0], posY=pos[1], posZ=pos[2], radius=radius,
                      vecX=vec[0], vecY=vec[1], vecZ=vec[2],                   
                      radDistNum=radDistNum,
                      ergDistNum=ergDistNum,
                      dirDistNumString=dirDistNumString,
                      rejCellString=rejCellString,
                      par=par, trNumString=trNumString)
  
    sdefString = sdefString + ergDistribString + dirString 
    sdefString = toMCNP80String(sdefString)
  
    self.collectedSrcStrings = sdefString
    return sdefString

  def insertSource_CylinderWithAngularAndEnergyDistrib(self,
                           pos=[0,0,0], radius=.05, 
                           axs=[0,1,0], thickness=.1, 
                           dirDistrib=None, # None, Bias, Restrict
                           vec=[0,1,0], coneHalfAngleDeg=1, 
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4],
                           rejCell=None, eff=0.01, 
                           par='P', trNum=None):
    """
    Can be used to create a disk source, pencil source with very small coneHalfAngle
    This is a volume source. The emission cone is along the cylinder axis.
    
    Thickness goes to EXT: it is the height of the cylinder or thickness of disk
    conHalfAngle goes to DIR: 
      
    Actually EXT and RAD would only create a surface source at that distance
    unless a distribution with 0 as the lower range is used.
    Get the user to provide a second radius and extent value?
    
    The distribution numbers are hard coded, for eg energy is dist 2.
    ergDistrib - 'Discrete', 'Histogram', 'Continuous'

    dirDistrib - None, 'Bias', 'Restrict'
    coneHalfAngleDeg - Ignored if dirDistrib is None
    
    The vertical entry format starting indicated by # is used for ease of 
    entry/debug.
    
    The source variables VEC,DIR,SUR,NORM are used to determine the initial 
    direction of source-particle flight.
    
    The source variables SUR, POS, RAD, EXT, AXS, X, Y, Z, and CCC are used in 
    various combinations to determine (x,y,z) of the starting positions of the 
    source particles.
  
    Page 3-121
    XXX, YYY, ZZZ (the position of the particle).
    UUU, VVV, WWW (the direction of the flight of the particle).
    
    POS - Reference point for position sampling in vector notation.
    RAD - radial distance of the position from POS or AXS.
    AXS - reference vector for EXT and RAD in vector notation.
    EXT - for a volume source is the distance from POS along AXS.
        - for a surface source is the cosine of angle from AXS
  
    VEC - Reference vector for DIR in vector notation.
    DIR - the cosine of the angle between VEC and UUU, VVV, WWW
  
    If DIR is set to a constant like 1 for monodirectional, be careful with 
    point detectors. They don't work with constant DIR.
    DIR provides control over polar angle. The azimuthal angle is always 0-360.
    This means that cone beam is easy, fan beam is not.
    """
    assert(len(eList) == len(relFq))
      
  #  enStr = '  '.join(['{:.2f}'.format(x) for x in eList])
  #  fqStr = '  '.join(['{:.2f}'.format(x) for x in relFq])
    
    radDistNum = 1
    extDistNum = 2
    ergDistNum = 3
    dirDistNum = 4 # angular biasing distribution of particle initial direction (DIR)

    if rejCell == None:
      rejCellString = ''
    else:
      rejCellString = ' CEL=%s EFF=.0001'%(rejCell)
  
    if dirDistrib is None:
      dirString = ''
      dirDistNumString = ''
    elif dirDistrib == 'Bias':
      dirString = self.getAngularBiasingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
    elif dirDistrib == 'Restrict':      
      dirString = self.getAngularRestrictingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
    
    ergDistribString = self.getEnergyDistributionString(distNum=ergDistNum, eList=eList, relFq=relFq,
                                                        distrib=ergDistrib)
  
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)
  
  #  top = """\
  #c ----- Source: Disk, tabulated photon energy distribution, disk source
  #SDEF POS=%.2f %.2f %.2f AXS=%.2f %.2f %.2f RAD=d%d VEC=%d %d %d EXT=d%d  DIR=d%d ERG=d%d PAR=2                   
  #si1    0   %.4f       $ Source information RAD source radius wrt AXS (.05 is 1 mm dia spot)
  #sp1   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)                                                
  #si3    0.0  %.4f      $ Source Information EXT source thickness from POS along AXS                                            
  #sp3    0    1         $ Source Probability uniform distribution between 0 and 1                          
  #"""
  #  sdefString = top%(*pos, *axs, radDistNum, *vec, extDistNum, dirDistNum, ergDistNum, radius, thickness) + dirDistribString + ergDistribString
  #                                          distrib='Discrete', vertString=True)
  
    top = """\
c ----- Volume Source: Cylinder
SDEF PAR=p POS={posX:.2f} {posY:.2f} {posZ:.2f} RAD=d{radDistNum:d} \
AXS={axsX:.2f} {axsY:.2f} {axsZ:.2f} EXT=d{extDistNum:d} \
VEC={vecX:.2f} {vecY:.2f} {vecZ:.2f} ERG=d{ergDistNum:d} \
{dirDistNumString} PAR={par} {rejCellString} {trNumString}
SI{radDistNum:d}    0   {radius:.4f}       $ Source information d1 RAD source radius wrt AXS (.05 is 1 mm dia spot)
SP{radDistNum:d}   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)
SI{extDistNum:d}    0.0  {ext:.4f}      $ Source Information d3 EXT source thickness from POS along AXS
SP{extDistNum:d}    0    1         $ Source Probability uniform distribution between 0 and 1
"""
  #  top = """ """
    sdefString = top.format(posX=pos[0], posY=pos[1], posZ=pos[2],
                      axsX=axs[0], axsY=axs[1], axsZ=axs[2],
                      vecX=vec[0], vecY=vec[1], vecZ=vec[2],
                      radius=radius, ext=thickness,
                      radDistNum=radDistNum,
                      extDistNum=extDistNum,
                      ergDistNum=ergDistNum, 
                      dirDistNumString=dirDistNumString,
                      rejCellString=rejCellString,
                      par=par, trNumString=trNumString)
  
    sdefString = sdefString + ergDistribString + dirString
    sdefString = toMCNP80String(sdefString)
  
    self.collectedSrcStrings = sdefString
    return sdefString

  def insertSource_BoxWithAngularAndEnergyDistrib(self,
                           xRange=[0,1], yRange=[0,1], zRange=[0,1],
                           dirDistrib=None, # None, Bias, Restrict
                           vec=[0,1,0], coneHalfAngleDeg=1, 
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'
                           eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4],
                           rejCell=None, eff=0.01, 
                           par='P', trNum=None):
    """
    ergDistrib - 'Discrete', 'Histogram', 'Continuous'

    dirDistrib - None, 'Bias', 'Restrict'
    coneHalfAngleDeg - Ignored if dirDistrib is None

    Page 12 of MCNP primer.
    Volumetric box source is created using X/Y/Z keywords with each having.
    a distribution that specifies the xrange/yrange/zrange.
    """
    assert(len(eList) == len(relFq))
          
    xDistNum = 1
    yDistNum = 2
    zDistNum = 3
    ergDistNum = 4
    dirDistNum = 5 # angular biasing distribution of particle initial direction
    
    if rejCell == None:
      rejCellString = ''
    else:
      rejCellString = ' CEL=%s EFF=.0001'%(rejCell)
  
    if dirDistrib is None:
      dirString = ''
      dirDistNumString = ''      
    elif dirDistrib == 'Bias':
      dirString = self.getAngularBiasingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)
    elif dirDistrib == 'Restrict':      
      dirString = self.getAngularRestrictingString(distNum=dirDistNum, coneHalfAngleDeg=coneHalfAngleDeg)
      dirDistNumString = "DIR=d%d"%(dirDistNum)

    ergDistribString = self.getEnergyDistributionString(distNum=ergDistNum, eList=eList, relFq=relFq,
                                                        distrib=ergDistrib)
  
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)
  
  #  top = """\
  #c ----- Source: Disk, tabulated photon energy distribution, disk source
  #SDEF POS=%.2f %.2f %.2f AXS=%.2f %.2f %.2f RAD=d%d VEC=%d %d %d EXT=d%d  DIR=d%d ERG=d%d PAR=2                   
  #si1    0   %.4f       $ Source information RAD source radius wrt AXS (.05 is 1 mm dia spot)
  #sp1   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)                                                
  #si3    0.0  %.4f      $ Source Information EXT source thickness from POS along AXS                                            
  #sp3    0    1         $ Source Probability uniform distribution between 0 and 1                          
  #"""
  #  sdefString = top%(*pos, *axs, radDistNum, *vec, extDistNum, dirDistNum, ergDistNum, radius, thickness) + dirDistribString + ergDistribString
  #                                          distrib='Discrete', vertString=True)
  
    top = """\
c ----- Volume Source: Box
SDEF PAR=p X=d{xDistNum:d} Y=d{yDistNum:d} Z=d{zDistNum:d} \
VEC={vecX:.2f} {vecY:.2f} {vecZ:.2f} ERG=d{ergDistNum:d} \
{dirDistNumString} PAR={par} {rejCellString} {trNumString}
SI{xDistNum:d} {xLo:.4f} {xHi:.4f}       $ Source information d1 x
SP{xDistNum:d}    0  1          $ Source Prob: constant 1
SI{yDistNum:d} {yLo:.4f} {yHi:.4f}       $ Source information d1 y
SP{yDistNum:d}    0  1          $ Source Prob: constant 1
SI{zDistNum:d} {zLo:.4f} {zHi:.4f}       $ Source information d1 z
SP{zDistNum:d}    0  1          $ Source Prob: constant 1
"""
  #  top = """ """
    sdefString = top.format(xDistNum=xDistNum, yDistNum=yDistNum, zDistNum=zDistNum,
                      xLo = xRange[0], xHi = xRange[1],
                      yLo = yRange[0], yHi = yRange[1],
                      zLo = zRange[0], zHi = zRange[1],
                      vecX=vec[0], vecY=vec[1], vecZ=vec[2],            
                      dirDistNum=dirDistNum,
                      ergDistNum=ergDistNum, 
                      dirDistNumString=dirDistNumString,
                      rejCellString=rejCellString, 
                      par=par, trNumString=trNumString)
  
    sdefString = sdefString + ergDistribString + dirString
    sdefString = toMCNP80String(sdefString)
  
    self.collectedSrcStrings = sdefString
    return sdefString

  ### !!!---Special case
  def insertSource_SphSurfaceWithCCC(self, surNum=0,
                           ergDistrib='Discrete', # 'Histogram', 'Continuous'                                     
                           eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4], 
                           trNum=None):
    """
    Experimental: Surface source
    To use this source, first define an emitting surface and optionally a cookie
    cutting cell for rejection.

    Don't use for imaging?
    Simplest solution for fan beam is to use the cone beam and use only the middle
    of the detector?
    
    For a surface source, spherical surface is easier to understand, cylindrical is not.
    The norm of the surface decides the VEC, but the spread around the VEC, ie DIR 
    is not mono directional by default. So a DIR distribution is needed.
    Can't do a constant DIR=1 because point detectors don't like that.
      
    EFF is needed in case ccc rejection is too high
    With all of this, it works as a fan source, but still the convergence seems very
    slow, as if no variance reduction techniques that MCNP is known for were used. 
    The picture builds from individual dots. Not a good source for imaging?
  
    ------------------
    Intent was to create a fan source from a cylindrical surface emitting normally. 
    That would mean all the particles will seem to come from the axis of the cylinder.
    For a cylinder with very small height and part of the curved surface used, the 
    emission will look like a FAN beam?  
    
    ??? For the cylidrical surface source, MCNP gives an error
    "dir specified but vec absent"
    vec is supposed to be the normal to the surface, but does not work for
    cylindrical, as it does for sphere. The manual hints at this.
  
    See Example 9 from MCNP manual 6.1  
    """
  
    top = """\
c ----- Source: 
#SDEF PAR=p SUR={surNum:d} DIR=d{dirDistNum:d} ccc=3 EFF=0.001 ERG=d{ergDistNum:d}
"""
  #SDEF PAR=p SUR={surNum:d} DIR=d{dirDistNum:d} NRM=1 ccc=3 ERG=d{ergDistNum:d}
    dirDistNum = 1 # angular biasing distribution of particle initial direction
    ergDistNum = 2
    
    dirDistribString = self.getAngularRestrictingString(distNum=dirDistNum, coneHalfAngleDeg=0.01)
    ergDistribString = self.getEnergyDistributionString(distNum=ergDistNum, eList=eList, relFq=relFq)
    
    sdefString = top.format(surNum=surNum, dirDistNum=dirDistNum, ergDistNum=ergDistNum)
  
    sdefString = sdefString + ergDistribString + dirDistribString
    sdefString = toMCNP80String(sdefString)
  
    self.collectedSrcStrings = sdefString
    return sdefString
  
  def insertSource_CylinderMonoDirMonoEnergy(self,
                          pos=[0,0,0], radius=.05, 
                          axs=[0,1,0], thickness=.1, 
                          vec=[0,1,0], MeV=1, 
                          trNum=None):
    """
    Pencil beam, mono energetic.
    """
    radDistNum = 1
    extDistNum = 2
    
    trNumString = '' if trNum==None else 'TR=%d'%(trNum)
  
  #  top = """\
  #c ----- Source: Disk, tabulated photon energy distribution, disk source
  #SDEF POS=%.2f %.2f %.2f AXS=%.2f %.2f %.2f RAD=d%d VEC=%d %d %d EXT=d%d  DIR=d%d ERG=d%d PAR=2                   
  #si1    0   %.4f       $ Source information RAD source radius wrt AXS (.05 is 1 mm dia spot)
  #sp1   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)                                                
  #si3    0.0  %.4f      $ Source Information EXT source thickness from POS along AXS                                            
  #sp3    0    1         $ Source Probability uniform distribution between 0 and 1                          
  #"""
  #  sdefString = top%(*pos, *axs, radDistNum, *vec, extDistNum, dirDistNum, ergDistNum, radius, thickness) + dirDistribString + ergDistribString
  #                                          distrib='Discrete', vertString=True)
  
    top = """\
c ----- Source: Pencil source
SDEF PAR=p POS={posX:.2f} {posY:.2f} {posZ:.2f} RAD=d{radDistNum:d} \
AXS={axsX:.2f} {axsY:.2f} {axsZ:.2f} EXT=d{extDistNum:d} \
VEC={vecX:.2f} {vecY:.2f} {vecZ:.2f} DIR=1 ERG={MeV:f} {trNumString}
SI{radDistNum:d}    0   {radius:.4f}       $ Source information d1 RAD source radius wrt AXS (.05 is 1 mm dia spot)
SP{radDistNum:d}   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)
SI{extDistNum:d}    0.0  {ext:.4f}      $ Source Information d3 EXT source thickness from POS along AXS
SP{extDistNum:d}    0    1         $ Source Probability uniform distribution between 0 and 1
"""
  #  top = """ """
    sdefString = top.format(posX=pos[0], posY=pos[1], posZ=pos[2],
                      axsX=axs[0], axsY=axs[1], axsZ=axs[2],
                      vecX=vec[0], vecY=vec[1], vecZ=vec[2],
                      radius=radius, ext=thickness,
                      radDistNum=radDistNum,
                      extDistNum=extDistNum,
                      MeV=MeV,
                      trNumString=trNumString)
  
    sdefString = sdefString
    sdefString = toMCNP80String(sdefString)
  
    self.collectedSrcStrings = sdefString
    return sdefString
  
  ### !!!---
  def getEnergyDistributionString(self, distNum, eList, relFq, distrib='Discrete', vertString=True):
    """
    From MCNP primer by Shultis, Faw.
    Point Isotropic Source with Discrete Energy Photons.
    Tested with spectroscopic tally.
    
    Horizontal:
    SI1 A .3 .5 1.0 2.5
    SP1    0 .2  .3  .5
    
    How to add the A/L in the vertical/column mode?
    If no A or L is used, what is the default?
    Vertical with J to pad the second column??? Page 2-9
    L blank : Error
    L J     : Error
    L D     : Works, D is the default
    #  SI1   SP1
        A     J?
       .3     0
       .5    .2
      1.0    .3
      2.5    .5
    """
    # page 3-138
    if distrib == 'Discrete': # discrete energies and probability, for eg Cobalt60 lines
      dStr = 'L'
    elif distrib == 'Continuous': # continuous distribution defined at certain points
      dStr = 'A'
    elif distrib == 'Histogram': # Histogram upper bins, lower of first is assumed zero.
      dStr = 'H'
    #--------------------------------------------------------------------------
    horizTemplate = """\
SI%d %s %s $ L for discrete or A for continuous, followed by the n energies (MeV)
SP%d    %s $ relative frequency of each energy
"""
    enStr = '  '.join(['{:.4E}'.format(x) for x in eList])
    fqStr = '  '.join(['{:.4E}'.format(x) for x in relFq])
  
    horizString = horizTemplate%(distNum, dStr, enStr, distNum, fqStr)
    #print(horizString)
    #--------------------------------------------------------------------------
    # Make sure the L/A/H on the second line is not in the first 5 columns
    vertTemplate = """\
  #     SI%d   SP%d
         %s    D 
  """
    listOfTuples = list(zip(eList, relFq))
    vertString = vertTemplate%(distNum, distNum, dStr)
    for t in listOfTuples:
      vertString+='   %.4E  %.4E\n'%(t[0], t[1])
    ergString = vertString
    
    #--------------------------------------------------------------------------
    if len(eList) < 6:
      ergString = horizString
    else:
      ergString = vertString
    #print(ergString)
    return ergString

  def getAngularBiasingString(self, distNum, coneHalfAngleDeg):
    """
    Biasing speeds up convergence, but the results are the same as for
    an isotropic source.
    For an anisotropic source, see getAngularDirectingString.
    
    MCNP Primer page 13.
    SI - source information.
    SP - source probability.
    SB - source biasing.
    
    Cosine(180): -1.
     Cosine(90):  0.
     Cosine(25): .9.
      Cosine(0):  1.
      
    This example first defines .05 of particles in the front 25.8 degrees and 
    the remaining .95 going backwards. This makes it isotropic.
    Because Fractional solid angle (fsa) = 2*pi*(1-cos(theta))
    where theta is the one side angle of cone.
    
    2*pi*(1-cos(25.8)) = 0.62
    fsa = 0.62/(4*pi) = .0493.
  
    Then we bias the forward bin.
    With this conical source, tally normalization is per source particle in 
    4*pi steradians.
    
  si4   -1.00   0.9    1.0     $ for DIR, histogram of cosine bin, two bins.
  sp4    0.     0.95   0.05    $ fraction solid angle for each bin.
  sb4    0.     0.     1.0     $ Source bias for each bin.
  """
    
    angularBiasingString = """\
SI%d   -1.00   %.18f   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=%.2f.
SP%d    0.     %.18f   %.18f   $ fraction solid angle for each bin.
SB%d    0.     0.     1.0      $ Source bias for each bin.
"""
  
    cosTheta = np.cos(np.deg2rad(coneHalfAngleDeg))
    fsa = .5 * (1-cosTheta)
  
    angularBiasingString = angularBiasingString%(distNum, cosTheta, coneHalfAngleDeg,
                                                 distNum, 1-fsa, fsa,
                                                 distNum)
    return angularBiasingString
  
  def getAngularRestrictingString(self, distNum, coneHalfAngleDeg):
    """
    The biasing string, biases an isotropic source.
    The Restricting string, is creating an anisotropic source.
    Primarily the difference between biasing vs restricting seems to only be
    in the absolute value of the tally since the tally is per photon.
    """
    angularRestrictingString = """\
SI%d   -1.00   %.18f   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=%.2f
SP%d    0.     0.     1.0      $ Source *probability* for each bin, integrated
"""
  
    cosTheta = np.cos(np.deg2rad(coneHalfAngleDeg))
    #fsa = .5 * (1-cosTheta)
  
    angularRestrictingString = angularRestrictingString%(distNum, cosTheta, coneHalfAngleDeg,
                                                 distNum)
    return angularRestrictingString
#############################################################################
  ### !!!---TALLY CARD CREATION FUNCTIONS----------
#  tallyNumWType - 15, 25
# tallyNumWType - Has num and type: 15, 25 etc
# The tallies can also take a energy card with energy bins
# But the tally energies don't follow the distribution style used for sources

# SURFACE AND CELL TALLIES (TALLY TYPES 1, 2, 4, 6, AND 7)
# F1 - Current integrated over a surface, particles/cm2
# F2 - Flux averaged over a surface, particles/cm2
#  F4 - Flux averaged over a cell, particles/cm2
# F6 - Energy deposition averaged over a cell, MeV/g
# F7 - Fission energy deposition averaged over a cell, MeV/g, N only
  
# F8 - PULSE-HEIGHT TALLY, cell, pulses
#  The standard F8 tally is a pulse-height tally and the energy bins
#  are no longer the energies of scoring events, but rather the energy balance 
#  of all events in a history.

# F5 - Point detector, flux, particles/cm2 (Point, ring, radiography tallies)

  def getTallyEnergyCardArb(self, tallyNumWType, eList):
    """
    E card. Arbitrary energy bins.
    If all tallies in a problem have the same energy group structure, a single 
    card may be used, with En replaced by E0.
    tallyNumWType can be 0 for the E0 card.
    """
    t = tallyNumWType
  
    eStr = ''
    if type(eList) is str:
      eStr = eList
    elif type(eList) in [list, np.ndarray]:
      for e in eList:
        eStr += '%.7E '%(e)
  
    enCardString = f"""\
c Energy bins
E{t}  {eStr}
"""  
    
    return toMCNP80String(enCardString)

  def insertTallyE0Card(self, eList):
    """
    An E0 card can be used to set up a default energy-bin structure for all tallies. 
    A specific En card will override the default structure for tally n.
    """
    
    e0String = self.getTallyEnergyCardArb(tallyNumWType=0, eList=eList)
    
    self.collectedTallyStrings += e0String
   
    return

  def getTallyEnergyMultiplierCard(self, tallyNumWType, mList):
    """
    EM card.
    Can be used with uniform energy bins or arbitrary energy bins?
    This multiplies each energy bin by the given scalar.
    Different from FM card.
    The energy bins are the same as used on the energy card.
    """
    t = tallyNumWType
  
    mStr = ''
    if type(mList) is str:
      mStr = mList
    elif type(mList) in [list, np.ndarray]:
      for m in mList:
        mStr += '%.6f '%(m)
    
    enMultCardString = f"""\
c Energy Multipliers
EM{t}  {mStr}
"""
    
    return toMCNP80String(enMultCardString)
  '''
  def getTallyMultiplierCard(self, tallyNumWType):
    """
    The FM card basically multiplies any tallied quantity (flux, current) by 
    any cross section to give nearly all reaction rates.
    Too many options!!!
    Which tallies can this be used with ???
    Used with FMESH tally, each tally in the mesh is multiplied by?
    """    
    pass
  
  def insertFMESHTally(self, ???):
    """
    Lots of options.
    Implement a few of the simple ones?
    """
    pass
  '''
  
  def testGetTallySpecialTreatmentFTCard(self):
    """
    GEB and SCX on the same FT card???
    """
    ftString = self.insertTallySpecialTreatmentFTCard(8, 'SCX', 1)
    print(ftString)
    
    ftString = self.insertTallySpecialTreatmentFTCard(8, 'GEB', 1, 2, 3)
    print(ftString)
  
  def insertTallySpecialTreatmentFTCard(self, tallyNumWType, treatmentKeyword, *args):
    """  
    FT card can do many things ... Page 3-224, 225. CURRENTLY NOT USED.
    SCX, GEB, ICD, SCD, INC, TAG.
    
    ??? It seems that GEB and SCX can go on the same FT card. Do all special 
    treatments go on one FT card?
    
    SCX - 
    With parameters: 15  SCX 2 we get tallies binned by source bin.
    FT15 SCX 2.
    15 is the tally this card applies to.
    2 is the number from a source distribution like SI2.
    ------------------
    GEB - Gaussian Energy Broadening.
    With parameters: 15 GEB 1 2 3 we get.
    FT15 GEB 1 2 3.
    GEB a b c (fwhm = a + b*sqrt(E + c*E*E) where E is the energy of the particle).
              (The energy stored is sampled from a Gaussian with this FWHM).
              Then it will be tallied into the correct bin???
    ------------------
    ICD - The ICD keyword allows the user to create a separate bin for each cell, 
    and only contributions from one of the specified cells are scored. 
    Use FUn card to specify the cells.
    ------------------  
    SCD - The SCD option causes tallies to be binned according to which source 
    distribution was sampled. 
    Use FUn card to specify the distributions.
    ------------------
    INC - Bin by number of collisions that have occured in the track.
    Use FUn card to specify the details.
    ------------------  
    TAG - Tally tagging allows the user to separate a tally into components based 
    on how and where the scoring particle was produced. Page 3-235
    Use FUn card to specify the details.
    """
    #Iterate over all args, convert them to str, and join them
    argsStr = ' '.join(map(str,args))
    
    ftString = f"""\
FT{tallyNumWType} {treatmentKeyword} {argsStr} 
"""
    self.collectedTallyStrings += ftString
    
    return

  def getFXTallySTring(self, tallyNum, tallyType, cellSurfInfo, eList=None, mList=None, par='p'):
    """
    Don't call this function. Call the functions named with F1/2/4/6/7/8.
    The cell or surface information can be provided in many different ways, 
    according to the MCNP manual.
    The string is the most generic way to handle anything that MCNP supports.
    An int or float can also be passed in for simpler cases.
    If a list/tuple is passed, each element in it is converted to a string and
    wrapped with parentheses.
    
    See Chapter 4, page 4–48, for a CAUTION when tallying a union of overlapping 
    regions. For unnormalized tallies (type 1, 8), the union is a sum. For 
    normalized tallies (type 2, 4, 6, 7), the union is an average.

    When cell is given from another universe, (1<4), it is a string
    The string case can actually take care of the int/float also
    Page 3-19, MCNP 6.1: "Parentheses indicate that the tally is for the union 
    of the items within the parentheses.
    Nested lists can get complicated so it is best to just use the string.
    
    eList and mList can be a list of floats in MeV, or a string in MCNP format,
    possibly with the i operator. 0 10i 1 gives ten equi spaced numbers between
    0 and 1 MeV.
    """
    tallyNumWType = t = tallyNum*10 + tallyType #'%d5'%(tallyNum)
  
    cellString = ''
    if type(cellSurfInfo) in [CN, SN]: 
      cellString += '%s '%(cellSurfInfo)
    elif type(cellSurfInfo) is str: 
      cellString += '%s '%(cellSurfInfo)
      # single cell or surface 
    elif type(cellSurfInfo) is int:
        cellString += '%s '%(cellSurfInfo)
      # Surface numbers can be given as 5.1
    elif type(cellSurfInfo) is float: 
        cellString += '%.1f '%(cellSurfInfo)
    elif type(cellSurfInfo) in (list, tuple):
        s = '('
        for c in cellSurfInfo:
          s+=' %s'%(str(c))
        s+=')'  
        cellString += '%s '%(s)
        
  #  global particlesList
  #  s = ' '.join(particlesList)
    
    fXTallyString = f"""\
c -- F{tallyType} Tally --
F{t}:{par}         $ pulse height tally
     {cellString}  $ cell/surface String
"""
    # Tally done, add energy and multiplier cards if needed
    if eList is not None:
      enCardString = self.getTallyEnergyCardArb(tallyNumWType, eList)
      fXTallyString += enCardString
  
    if mList is not None:
      enMultCardString = self.getTallyEnergyMultiplierCard(tallyNumWType, mList)
      fXTallyString += enMultCardString
  
    return tallyNumWType, fXTallyString

  ### !!!---Tallies
  def insertF1Tally(self, tallyNum, surfInfo, eList=None, mList=None, par='p'):
    """
    Current integrated over a surface. Units: particles.
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=1, cellSurfInfo=surfInfo, eList=eList, mList=mList, par=par)
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  def insertF2Tally(self, tallyNum, surfInfo, eList=None, mList=None, par='p'):
    """
    Flux averaged over a surface. Units: particles/cm2.
    Depends on material behind the surface? Why?
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=2, cellSurfInfo=surfInfo, eList=eList, mList=mList, par=par)
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  def insertF4Tally(self, tallyNum, cellInfo, eList=None, mList=None, par='p'):
    """
    Track length estimate of flux averaged over a CELL. Units: particles/cm2
    Depends on material in the cell.
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=4, cellSurfInfo=cellInfo, eList=eList, mList=mList, par=par)
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  def insertF6Tally(self, tallyNum, cellInfo, eList=None, mList=None, par='p'):
    """
    Track length estimate of energy deposition averaged over a CELL. 
    Units: MeV/g.
    Cell material must not be void.
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=6, cellSurfInfo=cellInfo, eList=eList, mList=mList, par=par)
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  def insertF7Tally(self, tallyNum, cellInfo, eList=None, mList=None):
    """
    Track length estimate of fission energy deposition averaged over a CELL. 
    Units: MeV/g.
    Only for neutrons.
    ??? Need to create a test case.
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=7, cellSurfInfo=cellInfo, eList=eList, mList=mList, par='n')
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  
  def insertF8Tally(self, tallyNum, cellInfo, eList=None, mList=None, par='p,e'):
    """
    Energy distribution of pulses created in a detector.
    
    For pulse-height tallies photons/electrons are a special case: F8:P,E is the same 
    as F8:P and F8:E. Also, F8 tallies may have particle combinations such as F8:N,H.  
  
    Pulse height tally in a cell. Energy deposited. Will depend upon material in cell.
  
    The pulse height tally is a radical departure from other MCNP tallies.
    For the pulse-height tally, microscopic events must be modeled much more realistically.
  
    Page 3-189: MCNP6 users manual.
    One common application of the F8 tally is simulation of the energy distribution
    of pulses created in a detector by radiation. The union of tallies produces a tally
    sum, not an average. Cell, user and energy bin cards are allowed. Flagging and 
    multiplier bins are not allowed. Segment, time, and cosine bins are permitted with
    ceratin FT options. Use of the dose energy (DE) and dose function (DF) cards is 
    also disallowed with the F8 tally. 
    
    The energy bins in the F8 pulse-height tally are different from those of all 
    other tallies. Rather the particle energy at the time of scoring, the number of pulses
    depositing energy within the bins are tallied. That is, the meaning of the energy 
    bins of a pulse-height tally is the energy deposited in a cell bin by all the 
    physically associated tracks of a history. Care must be taken when selecting 
    energy bins for a pulse-height tally. It is recommended that a zero bin and an 
    epsilon bin be included.
  
    The zero bin will catch non-analog knock-on electron negative scores. The epsilon
    bin will catch scores from particles that travel through the cell without depositing
    energy.
       
    The asterisk on a tally type 8 converts from a pulse-height tally to an energy 
    deposition tally. All of the units are shown in the above table.
    Tally type 8 has many options. The standard F8 tally is a pulse-height tally 
    and the energy bins are no longer the energies of scoring events, but rather 
    the energy balance of all events in a history. In conjunction with the FT8 card 
    (Section 3.3.5.18), the F8 tally can be an anticoincidence pulse-height tally, 
    a neutron coincidence capture tally, or a residual nuclei production tally.
  
    F8 tallies always tally both p and e.
    """
    tallyNumWType, s = self.getFXTallySTring(tallyNum=tallyNum, tallyType=8, cellSurfInfo=cellInfo, eList=eList, mList=mList, par=par)
  
    self.collectedTallyStrings += s
    return tallyNumWType
  
  def insertF5Tally(self, tallyNum, pos=(100,0,0), r=0, eList=None, mList=None, par='p'):
    """
    Flux at a point or ring detector. Units: particles/cm2.
    Tally 5 is only available for neutrons and photons.
    The F5 tally needs a point and an radius of sphere of exclusion.
    Actually, it can take a list of points and radii which show as separate objects.
    in the tally. But this can be done with separate F5 tallies so ignoring for now.
    
    The radius of the sphere of exclusion, +/-roi, should be about 1/8 to 1/2 mean.
    free path for particles of average energy at the sphere and *ZERO* in a void.
    The exclusion sphere must not encompass more than one material. MCNP6 cannot 
    verify this and the consequences may be wrong answers.
    """
    tallyNumWType = t = tallyNum*10 + 5 #'%d5'%(tallyNum)
    xPos, yPos, zPos = pos
    
    f5TallyString = f"""\
c -- F5 Tally --
F{t}:{par}    $ Point detectors
     {xPos:.2f} {yPos:.2f} {zPos:.2f} {r:.2f} $ x y z r
"""
  
    # Tally done, add energy and multiplier cards if needed
    if eList is not None:
      enCardString = self.getTallyEnergyCardArb(tallyNumWType, eList)
      f5TallyString += enCardString
  
    if mList is not None:
      enMultCardString = self.getTallyEnergyMultiplierCard(tallyNumWType, mList)
      f5TallyString += enMultCardString
      
    self.collectedTallyStrings += f5TallyString
    
    return tallyNumWType
  
  def insertFIR5Tally(self, tallyNum, pos=(100,0,0), normVec=(1,0,0), 
                     sMin=-0.02, sMax=0.02, sbins=40, tMin=-0.02, tMax=0.02, tbins=60,
                     eList=None, mList=None, par='p'):
    """
    Tally 5 is only available for neutrons and photons.
    With Arbitrary width energy multiplier bins.
  
    pos - Tuple with x/y/z, Center of detector surface.
    xNorm/yNorm/zNorm - Actually norm->pos should be outward.
    s/t specify the extent from the center and numPixels in the rows/cols.
    sMin=-detWidth/2, sMax=detWidth/2, sbins=detNumPixels.
    tMin=-detWidth/2, tMax=detWidth/2, tbins=detNumPixels.
    
    eList: e1 e2 e3  (first bin from 0 to e1, total three bins).
    mList: m1 2 m3.
  
    Tally 5 is only available for neutrons and photons.
    With equally spaced energy multiplier bins.
    
    FIR5 tally, Flux Image? Radiography at given position with given orientation.
    Remember, the orientation vector that MCNP needs is from the source position.
    This function takes a regular normal vector (from origin) and adds to position vector.
    """
    tallyNumWType = t = tallyNum*10 + 5 #'%d5'%(tallyNum)
  
    fir5TallyString = self.getFIR5Tally(t, pos, normVec,
                     sMin, sMax, sbins, tMin, tMax, tbins,
                     eList, mList, par)
    
    self.collectedTallyStrings += fir5TallyString
    
    return tallyNumWType #+ debugTallyString
  
  def getFIR5Tally(self, t, pos, normVec, 
                     sMin, sMax, sbins, tMin, tMax, tbins,
                     eList, mList, par):
    """
    Used by insertFIR5Tally.
    """
    xPos, yPos, zPos = pos
    xNorm,yNorm,zNorm = normVec

    fir5TallyString = f"""\
c -- FluxImage Radiograph:photon (Array of point detectors)
c -- xyz position,       R0,   xyz out normal, f1/f2/f3
FC{t} FIR {sbins}  {tbins}
FIR{t}:{par}  {xPos:.3f} {yPos:.3f} {zPos:.3f}  0  {xPos+xNorm:.3f} {yPos+yNorm:.3f} {zPos+zNorm:.3f}  0  0   0    $ 
FS{t}  {sMin:.3f} {sbins-1}i {sMax:.3f}  $ S axis, smin, bins-1, smax numRows
C{t}   {tMin:.3f} {tbins-1}i {tMax:.3f}  $ T axis, tmin, bins-1, tmax numCols                        
"""
  
    # Tally done, add energy and multiplier cards if needed
    if eList is not None:
      enCardString = self.getTallyEnergyCardArb(t, eList)
      fir5TallyString += enCardString
  
    if mList is not None:
      enMultCardString = self.getTallyEnergyMultiplierCard(t, mList)
      fir5TallyString += enMultCardString
        
    return fir5TallyString
  
  #def getFmesh4TallyString():
  #  """ """
  #  pass # To be implemented

  def insertDebugTallyString(self, worldSurfaceNum):
    """
    Debug tally needs the worldSurfaceNum. (Works off surface, not cell).
    This is a specific use of the F1 tally?
    """
    debugTallyString = \
"""c -- Debug tally --
F1011:p %s              $ debug tally with universe surface to see if all particles come out
"""%(worldSurfaceNum)
  
    self.collectedTallyStrings += debugTallyString
  
    return debugTallyString
#############################################################################
  ### !!!---MISC FUNCTIONS----------
#############################################################################  

  # convenience function, global variable can be set directly
  def setParticlesList(self, p=['p', 'e']):
    """
    Set particles to transport in the MCNP simulation.

    MODE N - neutron transport only (default).
         N P - neutron and neutron-induced photon transport.
         P - photon transport only.
         E - electron transport only.
         P E - photon and electron transport.
         N P E - neutron, neutron-induced photon, and electron transport.  
         Note: Particles are separated by space.
    """
    self.particlesList = p
  
  def getModeString(self):
    """
    Generate mode string from the particlesList attribute and return it.
    """
    s = ' '.join(self.particlesList)
    s = 'MODE %s'%(s)
    return s
  
  def getImpString(self, imp=1):
    """
    Get importance string based on the particles set in particle list.
    Used while inserting cells.
    IMP:p,e=1
    """
    if self.particlesList == None:
      print('*** Particle list is not set ***')
      s = ''
    else:
      s = ','.join(self.particlesList)
      s = 'IMP:%s=%d'%(s,imp) # ??? Don't put a space after :
      
    return s

  def insertMTcard(self, matKey='WaterLiquid', sAlphaBetaList=['lwtr']):
    """
    Insert a MT card to change the neutron cross section used for a particular
    material.

    matKey - The identifier used to insert a material into the CardDeck.
    Ex. 'WaterLiquid' or 'Beryllium'... use csmat.matSearch to find
    
    sAlphaBetaList - A list of sAlphaBeta treatment strings.
    If the material has more than one element, you can provide more than one string.
    Ex. ['lwtr', 'GRPH.06T', 'BE.60T']
    """
    matNum, density = csmat.matLookup(matKey)
    
    fullMTstring = 'MT%d'%(matNum)
    for s in sAlphaBetaList:
      fullMTstring += ' %s '%(s)
    fullMTstring += ' $ %s'%(matKey)  
    self.insertIntoMaterialSection(fullMTstring)
  
  def insertPhysicsCard(self, nocoh=0, ides=0, nodop=0, cutn=0.0, cutp=0.001, cute=0.001):
    """
    This function inserts physics and mode cards.
    
    MCNP5 5.1 Vol II Page 5-2
    There are three possible physics treatments for photons. The first is the explicit p,e treatment
    (MODE P E) where photons generate electrons, which are tracked and generate photons (ad
    infinitum). This is the most accurate model but is costly in terms of run time. 
    
    The second physics treatment is MODE P only that uses the default thick target bremsstrahlung (TTB) model
    where electrons are generated in the direction of the incident photon and are immediately
    annihilated after generating bremsstrahlung photons. 
    
    The third photon physics treatment is a MODE P only with the TTB turned off 
    (IDES=1 on the PHYS card). Bremsstrahlung photons from electrons are completely ignored, 
    which is a poor approximation for a high Z material.
    
    To turn off the production of secondary electrons generated by photons, the switch IDES can be
    set, either on the PHYS:P or on the PHYS:E card. If either of these cards sets IDES = 1, photons
    will NOT produce electrons, even if IDES = 0 is set on the other. In a photon-only problem, turning
    off secondary electrons causes the thick-target bremsstrahlung model to be bypassed. This option
    should be exercised only with great care because it alters the physics of the electron-photon cascade
    and will give erroneously low photon results when bremsstrahlung and electron transport are
    significant.
  
    PHYS:p  emcpf  ides  nocoh  ispn  nodop
    Default: 100    0      0     0     0
      emcpf- Upper energy limit for detailed photon physics treatment (default 100 MeV)
      ides- default 0 Bremms is on. Don't set to 1
      nocoh- Coherent/Thomson scattering (default 0/on) Notice the no in nocoh
      ispn-  photon nuclear particle production (default 0/off)
      nodop- photon doppler energy broadening (deafult 0/on) Notice the no in nodop
             Doppler Energy Broadening defaults by version: MCNPX is off, MCNP5 is on, MCNP6 is on.
  
    PHYS:e EMAX IDES IPHOT IBAD ISTRG BNUM XNUM RNOK ENUM NUMB
    Defaults: EMAX = 100 MeV; 
              IDES, IPHOT, IBAD, ISTRG = 0;
              BNUM, XNUM, RNOK, ENUM = 1., 
              NUMB = 0
      emax - upper limit for electron energy in MeV
      IDES = 0/1 = photons will/will not produce electrons.
      IPHOT = 0/1 = electrons will/will not produce photons.
      
    10 options
    """
    modeString = self.getModeString()
  #  physicsString = \
  #"""c --mode, cut, phys --
  #MPHYS  OFF $ needed only when particles other than N P E are run                      
  #%s   $ particles to transport, default n (anti particles included)
  #CUT:p  j 0.01                                                                    
  #PHYS:p 100 0 %d 0 0 $ Physics card for photons
  #PHYS:e 100 0 0 0 0 1 1 1 1 0
  #"""%(s, nocoh)
  
    physicsString = f"""\
c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
{modeString}   $ particles to transport, default n (anti particles included)
CUT:n  j {cutn}
CUT:p  j {cutp}
CUT:e  j {cute}
PHYS:p 100 {ides} {nocoh} 0 {nodop} $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 {ides} 0 0 0 1 1 1 1 0
""" #.format(modeString, ides, nocoh, nodop)
  
    self.collectedPhysicsStrings = physicsString
    return physicsString

  def insertOutputControlCards(self, nps=1000, debugN=None, notrn=False):
    """
    1) Tally Prnt Increment.
    2) Dump to RUNTPE increment. 
    3) Create MCTAL file.
    4) Max No. of Dumps on RUNTPE. 
    5) Controls Rendezvous points.
      
    Random number generator does not repeat when period is exceeded, but longer
    period generation (gen2,3) are preferred. Page 3-328 (6.1)

    ??? DBCN
    ??? Comment nps if running a KCODE problem.    
    """
    nps = int(nps)
    if debugN is None:
      debugAfter = int(nps//10)
    if notrn == False:
      notrn = 'c '
    else:
      notrn = ''
    outputControlString = \
"""c --MCTAL nps --
{notrn:s}NOTRN                $ uncomment then you get ray tracing only, not scatter
c PRDMP NDP NDM MCT NDMP DMMP                                                   
PRDMP   j   {debugAfter:d}    1    1    j  $ write MCTAL file                                 
PRINT
c PRINT 40 $ For material normalization check, see .io file
c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommended!!!
c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.
c DBCN j {debugAfter:d} $ nj is jump over n options, debug print and multitasking are incompatible
NPS {nps:d}     $ stop after number of source particles have been run                 
c CTME 2.0 $ stop run after number of minutes
c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir)
""".format(notrn=notrn, debugAfter=debugAfter, nps=nps)
  
    self.collectedOutputControlStrings = outputControlString
    return outputControlString  

#############################################################################
  ### !!!---Manual card insertion
  def insertIntoCellSection(self, s):
    """
    Use this function to insert manually generated/unsupported cards into the 
    cell section.
    """
    self.collectedCellStrings += toMCNP80String(s)
    
  def insertIntoSurfaceSection(self, s):
    """
    Use this function to insert manually generated/unsupported cards into the
    macros/surfaces section.
    """
    self.collectedSurfaceStrings += toMCNP80String(s)

  def insertIntoSrcSection(self, s):
    """
    Use this function to insert manually generated/unsupported cards into the
    data section. Could have gone into any of: collectedMatStrings, collectedTrStrings,
    collectedSrcStrings, collectedTallyStrings, collectedPhysicsStrings, 
    collectedOutputControlStrings which together comprise the data section.
    But Mat has its own method. TR section is too simple to need one.
    """
    self.collectedSrcStrings += toMCNP80String(s)
  def insertIntoMaterialSection(self, s):
    """  """
    self.collectedMatStrings += toMCNP80String(s)
  def insertIntoTallySection(self, s):
    """  """
    self.collectedTallyStrings += toMCNP80String(s)
  def insertIntoPhysicsSection(self, s):
    """  """
    self.collectedPhysicsStrings += toMCNP80String(s)
  def insertIntoOutputSection(self, s):
    """  """
    self.collectedPhysicsStrings += toMCNP80String(s)
#############################################################################
  def assembleDeck(self, titleCard, macroString='Auto', cellString='Auto', trString='Auto', matString='Auto',  
                   srcString='Auto', tallyString='Auto', physicsString='Auto', outputControlString='Auto'):
    """
    All the arguments are optional since they will be generated from the information
    collected from calling the relevant methods.
    
    Only provide those that you are manually generating.
    The strings provided here will overwrite the ones that would otherwise be 
    generated internally.
    
    This function takes multiple multi-line strings and combines them into
    a multiline string, following MCNP rules.
    The provided strings should be multiline, wrapped to 80 characters with &.
    
    cellString - A multi string representation of all cells (not universe cell)
    macroString - A multi string representation of all macros used by the cells (not universe macro).
    cellList -  A list of integers that are the cellNums.
                The cellNums will be used to make a universe cell.
  
    matString, trString, srcString, tallyString, physicsString, outputControlString
    go into data section.
    """
    if cellString == 'Auto': cellString = self.collectedCellStrings
    if macroString == 'Auto': macroString = self.collectedSurfaceStrings
    if matString == 'Auto': matString = self.collectedMatStrings
    if trString == 'Auto': trString = self.collectedTrStrings
  
    if srcString == 'Auto': srcString = self.collectedSrcStrings
    if tallyString == 'Auto': tallyString = self.collectedTallyStrings
    if physicsString == 'Auto': physicsString = self.collectedPhysicsStrings
    if outputControlString == 'Auto': outputControlString = self.collectedOutputControlStrings
    # The multiline strings with """ """ carry newlines without needing \n
    # So what you get is what you see
    outputStr = ''
    # *** COMBINE ALL ***********************************
    titleCard = 'Generated using CardSharp:'+titleCard.strip()+'\n'
    outputStr += titleCard[0:maxStringLen-1] # LImit title card to 80, should not get split with continuation &
    printIfShow(titleCard, end=''); 
    
    cellsHeader =\
"""\
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
"""
    printIfShow(cellsHeader, end=''); outputStr += cellsHeader  
    printIfShow(cellString, end=''); outputStr += cellString
    macrosHeader =\
  """\
c =============Cells end: Next line must be completely blank==================
  
c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
"""
    printIfShow(macrosHeader, end=''); outputStr += macrosHeader
    printIfShow(macroString, end=''); outputStr += macroString
    macrosEnd =\
"""\
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
"""
    printIfShow(macrosEnd, end=''); outputStr += macrosEnd

    trHeader =\
"""\
c -----------------Transformations(* for degrees)--
"""
    printIfShow(trHeader, end=''); outputStr += trHeader
    printIfShow(trString, end=''); outputStr += trString
    matHeader =\
"""\
c -----------------Materials------------------
"""
    printIfShow(matHeader, end=''); outputStr += matHeader
    printIfShow(matString, end=''); outputStr += matString
    srcHeader =\
"""\
c -----------------Source---------------------
"""
    printIfShow(srcHeader, end=''); outputStr += srcHeader
    printIfShow(srcString, end=''); outputStr += srcString

    tallyHeader =\
"""\
c -----------------Tally----------------------
"""
    printIfShow(tallyHeader, end=''); outputStr += tallyHeader
    printIfShow(tallyString, end=''); outputStr += tallyString

    physicsHeader =\
"""\
c -----------------Physics -------------------
"""
    printIfShow(physicsHeader, end=''); outputStr += physicsHeader
    printIfShow(physicsString, end=''); outputStr += physicsString

    outputControlHeader =\
"""\
c -----------------Output Control-------------                     
"""
    printIfShow(outputControlHeader, end=''); outputStr += outputControlHeader
    printIfShow(outputControlString, end=''); outputStr += outputControlString

    outputStr = toMCNP80String(outputStr)
    return outputStr

  def saveDeck(self, modelFolder, modelFilename, deckStr):
    """
    Save all the cards to an MCNP input deck (file).
    """
    if not os.path.exists(modelFolder):
      os.makedirs(modelFolder)
      
    print('Writing to:', modelFolder+modelFilename)
    with open(modelFolder+modelFilename, "w") as text_file:
      text_file.write(deckStr)
#############################################################################
maxStringLen = 78 # new MCNP allows upto 126? ... but not VisEd
def findLongestLineLen(multilineString):
  """
  Find longest line in a multi line string.
  Ignore $ comments at the end of a line to determine line length.
  """
  lenList = []
  strList = multilineString.splitlines()
  
  for line in strList:
    if line.startswith(('c', 'C')) and len(line)>maxStringLen:
      #print('Ignoring c comment line with length:', len(line))
      continue

    if len(line)>maxStringLen:
      idx = line.find('$')
      if idx>-1 and idx < maxStringLen:
        #print('Ignoring $ comment line with length:', len(line))
        continue
        
    lenList.append(len(line))
  if len(lenList) == 0:
    printIfShow(multilineString)
  else:
    printIfShow('Max line length:', np.max(lenList))
  
def toMCNP80String(multilineString):
  """
  Convert a given multi line string to MCNP compatible strings with no lines
  longer than 80 characters.
  """
  printIfShow('Before fixing:')
  findLongestLineLen(multilineString)
  #-------------------
  lineList = multilineString.splitlines()
  outputList = []

  for currLine in lineList:    
    # don't bother fixing comment lines
    if currLine.startswith(('c', 'C')):
      outputList.append(currLine) 
      continue
    # if $ sign occurs before 80th character, don't bother fixing???
    idx = currLine.find('$')
    if idx>-1 and idx < maxStringLen:
      outputList.append(currLine) 
      continue

    longLine = currLine.rstrip()
    lineLen = len(longLine)
    if lineLen == 0:
      outputList.append('') # empty lines should not be dropped
      printIfShow('Keeping empty line')
      continue

    while lineLen > 0:
      if lineLen < maxStringLen:
        outputList.append(longLine)
        longLine = ''; lineLen = 0
        
      else: # break at whitespace
        printIfShow('Fixing:')
        printIfShow(longLine)
        brkPt = maxStringLen - 4
        while(longLine[brkPt] != ' '): # walk back till you find space
          brkPt -= 1
        outputList.append(longLine[:brkPt] + ' &')
        longLine = ' '*8 + longLine[brkPt:]
        lineLen = len(longLine)
  
  outputStr = '\n'.join(outputList)+'\n'
  printIfShow('After fixing:')
  findLongestLineLen(outputStr)

  return outputStr
#############################################################################
def testToMCNP80String():
  """ """
  print('Test1')
  inp = """\
---------*---------*---------*---------*---------*-------- *-------- *-------- *-----"""
  print(inp)
  print('===============')
  print(toMCNP80String(inp))
  print('===============')

  inp = """\
---------*---------*---------*---------*---------*-------- *-------- *-------- *-----

---------*---------*---------*---------*---------*-------- *-------- *-------- *-----"""
  print('Test2')
  print(inp)
  print('===============')
  print(toMCNP80String(inp))
  print('===============')
#############################################################################
def printIfShow(*args, **kwargs):
  """
  Alternative to regular print so that debug prints can be turned on/off using
  a global variable for the file/module.
  """
  global show
  if show:
    print(*args, **kwargs)

#############################################################################
if __name__ == '__main__':
  main()