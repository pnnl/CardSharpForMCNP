# Module: CardSharp.py
This file provides a class/methods for creating MCNP decks.
See the test scripts in the CardSharpTests folder for usage.

Most references to MCNP manual are to version 6.1. Some to 5.1 Vol II.
The two have a different style in terms of upper/lower case.

MOST ARGUMENTS TO THE FUNCTIONS HAVE SENSIBLE DEFAULT VALUES AND CAN BE IGNORED.

-----------------
-----------------
## Class: SN
A class to hold the surface number (and its facets if a macro)
It is as transparent to use as an integer or string and supports unary negative.

-----------------
## Class: CN
A class to support cellNumbers. Cell numbers are generally integers but with
universes and lattices it can become complicated enough that it is treated as
a string.

-----------------
## Function: testSNCN
():

  

-----------------
## Class: CardDeck
Class representing an MCNP input deck/file.
Instantiate an object of this class, then call methods to add surfaces, cell, materials,
source, tallies, physics and output control cards. Finally write out the deck.

### Method: CardDeck::insertSurface_CylinderAligned
(self, name, axis='X', xyz=(0,0,0), radius=1.0, surfaceNum=None, trNum=None):

Define an infinitely long cylindrical surface parallel to one of the three axes.
If parallel to X axes, the YZ offsets are used.
If parallel to Y axes, the XZ offsets are used and so on.

The trNum can be obtained by first calling insertTRString.
The same trNum can be used for multiple objects.

In general, instantiate surfaces/cells at the origin and then apply TR/TRCL to rotate/translate.
In all the geometry functions name is used only for the descriptive comment.

Returns assigned surface number.

### Method: CardDeck::insertSurface_ConeAligned
(self, name, axis='X', xyz=(0,0,0), tSqr=0.25, sheet=0, surfaceNum=None, trNum=None):

Define a cone parallel to one of the three axes.
tsqr is the sqr of tan of cone angle. sheet is...

The trNum can be obtained by first calling insertTRString.
The same trNum can be used for multiple objects.

In general, instantiate surfaces/cells at the origin and then apply TR/TRCL to rotate/translate.
In all the geometry functions name is used only for the descriptive comment.

Returns assigned surface number.

### Method: CardDeck::insertSurface_PlaneAligned
(self, name, axis='X', D=1.0, surfaceNum=None, trNum=None):

Define a plane surface aligned with X or Y or Z axis.
D refers to: PX, PY, PZ.  PX is normal to X axis.

Returns assigned surface number.    

### Method: CardDeck::insertSurface_Plane
Aligned(self, name, axis='X', D=1.0, surfaceNum=None, trNum=None):

Define a plane surface aligned with equation: Ax + By + Cz -D = 0.
Can also add a transform.

Returns assigned surface number.    

### Method: CardDeck::insertSurface_Torus
(self, name, axis='X', xyz=(0,1,1), ABC=(5,3,2), surfaceNum=None, trNum=None):

Axis specifies the axis of rotation of the torus, TX,TY,TZ xyz is the center of the torus.
The input parameters a b c specify the ellipse.
a is the torus radius? b/c are the ellipse radii.
if |a|< c, then the hole disappears.
If b==c, then the torus cross section is a circle, instead of an ellipse.

Returns assigned surface number.

### Method: CardDeck::insertSurface_SQ
(self, name, A=-0.0833, B=1, C=1, D=0, E=0, F=0, G=68.5, xyz=(-26.5,0,0), surfaceNum=None, trNum=None):

Special quadratic surface.
A(x - x)**2 + B(y – y)**2 + C(z – z)**2 + 2D(x – x) + 2E(y – y) + 2F(z – z) + G = 0 
Returns assigned surface number.

### Method: CardDeck::insertSurface_GQ
(self, name, A=1, B=0.25, C=0.75, D=0, E=-0.866, F=0, G=-12, H=-2, I=3.464, J=39, surfaceNum=None, trNum=None):

General quadratic surface.
Ax2 + By2 + Cz2 + Dxy + Eyz + Fzx + Gx + Hy + Jz + K = 0 
Returns assigned surface number.

### Method: CardDeck::insertSurface_AxisSymmetricByPoints
(self, name, axis='X', pointList=[], surfaceNum=None, trNum=None):

The surfaces described by these cards must be symmetric about the x-, y-,  or z-axis, respectively, and, if the surface consists of more than one sheet, the specified coordinate points must all be on the same sheet.

Each of the coordinate pairs defines a geometrical point on the surface.  On the Y card, for example, the entries may be j Y y1 r1 y2 r2 where ri = sqrt(xi**2 + yi**2)and yi is the coordinate of point i.
If one coordinate pair is used, a plane (PX, PY, or PZ) is defined.
If two coordinate pairs are used, a linear surface (PX, PY, PZ, CX, CY, CZ,  KX, KY, or KZ) is defined.
If three coordinate pairs are used, a quadratic surface (PX, PY, PZ,  SO, SX, SY, SZ, CX, CY, CZ, KX, KY, KZ, or SQ) is defined.

Returns assigned surface number.    

### Method: CardDeck::insertCell
(self, name, surfaceList=None, cellComplementList=None, manualSurfacesString=None, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', cellNum=None, uni=0, fill=0, latticeType=None, latticeIndices=None):

This function is used to insert a cell using surfaces (and cells) that have already been defined.

The terms surface number/macro number/macro surface number are used interchangeably.

surfaceList does intersection of positive/negative surfaces to define a volume.  The complement list is a list of other cells whose volume gets subtracted  from this one. This is sufficient for most geometries.

For certain geometries, combinations of unions, intersections, complement, complement of unions etc might be needed and those can entered using the manualSurfacesList. and so on are too many.  If the user wants to do that,  they can enter the string manually.

Either use surfaceList and cellComplementList, or use the manualSurfacesList.

matName is the key to a material in the materials dictionary.
density can be left at 0 to indicate using the default density from the dictionary.
If you do specify density, pay attention to sign. MCNP uses negative values to mean g/cc 
The rotMatrix and shift add a TRCL string.

By default all cells are instantiated with an importance string based on the particles list set before the call to the cell function.
If a cell needs a different importance string from the default, use this option: impString: It should look like this: 'imp:p,e=1' or 'imp:p=1 imp:e=0' .

latType - 1 (RPP).
latType - 2 (Hexagonal prism).
latIndices - Range specifying Imin/Imax, Jmin/Jmax, Kmin/Kmax of the lattice range.
fill can be a single universe number or a list of universes in case of a lattice.

### Method: CardDeck::insertCellLike
(self, name, oldCellNum, newCellNum=None, shift=None, rotMatrix=None, impString='', uni=0):

newCellNum will be auto assigned if left as None.
impString: It should look like this: 'imp:p,e=1' or 'imp:p=1 IMP:e=0'.
Any importances that are not specified are inherited from the old cell.

What about matName, density? Should that be supported on this card?
What about uni? The cell being cloned has to be in uni=0. Otherwise MCNP can't find it.

Looks like the newCell can be in any universe, but defaults to 0 as expected.    

### Method: CardDeck::insertMacroSphere
(self, name, pos=(0,0,0), radius=1, surfaceNum=None, trNum=None):

Insert a sphere macro at the given position and radius.
Returns assigned macro surface number.

### Method: CardDeck::insertMacroAndCellSphere
(self, name, pos=(0,0,0), radius=1, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Insert a sphere macro and a cell based on that macro.
Sphere is different from other macrobodies in not ever needing an orientation matrix.

Returns assigned macro surface number and cell number.

### Method: CardDeck::insertMacroAndCellSphereShell
(self, name, pos=(0,0,0), radiusOuter=2, radiusInner=1, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum1=None, surfaceNum2=None, cellNum=None,uni=0):

Uses two sphere macros to generate a shell.
Returns a list of the two assigned macro surface numbers and the assigned cell number.

### Method: CardDeck::insertMacroRcc
(self, name, base=(0,0,0), axis=(0,0,1), radius=1, surfaceNum=None, trNum=None):

From MCNP manual: RCC vx vy vz hx hy hz r.
vx/vy/vz - coordinates of center of base.
hx/hy/hz - provide orientation and height of top (not the coordinates of center of top).
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top?

Returns assigned surface number.    

### Method: CardDeck::insertMacroAndCellRcc
(self, name, base=(0,0,0), axis=(0,0,1), radius=1, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Generates a RCC Right Circular Cylinder macro and a cell based on that macro.
axisX/axisY/axisZ together given orientation and height of cyl.

The cylinder is first instantiated at base, then optionally rotate by rotMatrix, then optionally moved by xShift/yShift/zShift 
Returns assigned surface number and cell number.

### Method: CardDeck::insertMacroAndCellRccShell
(self, name, base1=(0,0,0), axis1=(0,0,1), radiusOuter=2, base2=(0,0,0), axis2=(0,0,1), radiusInner=1, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum1=None, surfaceNum2=None, cellNum=None,uni=0):

Uses two RCC macros to generate an annulus. FIRST one is the OUTER one.
As it is currently, the center of the axis won't be at the origin unless the user makes it so.
Any rotation applied by a TRCL will be around the origin.

The two cylinders are defined by the base/axis/radius.
xShift,yShift,zShift translates the annulus or RccShell 
The position can come from TRCL while instantiating the cell.

Returns a list of the assigned macro numbers and the assigned cell number.

### Method: CardDeck::insertMacroRpp
(self, name, xMinMax, yMinMax, zMinMax, surfaceNum=None, trNum=None):

xMinMax, yMinMax, zMinMax are tuples giving the upper/lower bounds of the RPP.

Returns assigned surface number.    

### Method: CardDeck::insertMacroAndCellRpp
(self, name, xMinMax, yMinMax, zMinMax, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Generates a RPP Rect Parallelopipded macro and a cell based on that macro.

Returns assigned surface number and cell number.    

### Method: CardDeck::insertMacroAndCellRppShell
(self, name, innerXWidth,outerXWidth, innerYWidth,outerYWidth, innerZWidth,outerZWidth, matName, density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):

Inserts two RPP macros to generate shell.
Both macros are symmetrically placed around the origin before being shifted/rotated together.
Returns a list of the assigned macro numbers and the assigned cell number.

### Method: CardDeck::insertMacroAndCellRppShell2
(self, name, xMinMaxOut, yMinMaxOut, zMinMaxOut, xMinMaxIn, yMinMaxIn, zMinMaxIn, matName, density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):

Inserts two RPP macros to generate shell.
This version allows you to place the two surfaces at arbitrary locations, whereas the other verison placed both surfaces symmetrically about the origin in all three directions.
Returns a list of the assigned macro numbers and the assigned cell number.

### Method: CardDeck::insertMacroRhpHex
(self, name, base=(0,0,0), axis=(0,0,1), r=(0,1,0), surfaceNum=None, trNum=None):

From MCNP manual: RHP v1 v2 v3   h1 h2 h3  r1 r2 r3  s1 s2 s3  t1 t2 t3.
RHP/HEX's side surface should be orthogonal to top/bottom.
For RHP, acceptable numbers of arguments is {7, 9, 15}.
Only the 9 arguments version is currently supported in CardSharp. This means that only regular hexagonal base is supported.

Returns assigned surface number.

### Method: CardDeck::insertMacroAndCellRhpHex
(self, name, base=(0,0,0), axis=(0,0,1), r=(0,1,0), matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Generates a RHP macro and a cell based on that macro.
Returns assigned surface number and cell number.    

### Method: CardDeck::insertMacroAndCellRhpHexShell
(self, name, base1=(0,0,0), axis1=(0,0,1), r1=(0,1,0), base2=(0,0,0), axis2=(0,0,1), r2=(0,1,0), matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum1=None, surfaceNum2=None, cellNum=None, uni=0):

Uses two RHP macros to generate a shell.

Returns a list of the assigned macro numbers and the assigned cell number.

### Method: CardDeck::insertMacroCone
(self, name, base=(0,0,0), height=(0,0,1), radiusBase=2, radiusTop=1, surfaceNum=None, trNum=None):

Cone has a base pos, height vector, base radius and top radius.
radiusBase must be larger than radiusTop 
From MCNP manual: TRC vx vy vz    hx hy hz   r1 r2.
vertexX, vertexY, vertexZ - are the coordinates of the base.
hx/hy/hz - provide orientation and height of top corner.
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.
r1 > r2 (base radius and top radius).

Returns assigned surface number.    

### Method: CardDeck::insertMacroAndCellCone
(self, name, base=(0,0,0), height=(0,0,1), radiusBase=2, radiusTop=1, matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Generates a TRC truncated right angle cone macro and a cell based on that macro.

The cone is first instantiated at 0/0/0, then optionally rotated by rotMatrix and then moved by shift.

Returns assigned surface number and cell number.    

### Method: CardDeck::insertMacroWedge
(self, name, vertex=(0,0,0), base1=(1,0,0), base2=(0,1,0), height=(0,0,1), surfaceNum=None, trNum=None):

Wedge has a right angled triangle as base and a right angled prism above it.
   From MCNP manual: WED vx vy vz v1x v1y v1z v2x v2y v2z v3x v3y v3z.
vertexX, vertexY, vertexZ - are the coordinates of the rt angle vertex of base.
v1x/v1y/v1z - vector of one of the two rt angled sides of the base.
v2x/v2y/v2z = vector of the second of the two rt angled sides of the base.
hx/hy/hz - provide orientation and height of top corner.
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.

But rotations generally need to be around the center of axis.

Returns assigned surface number.

### Method: CardDeck::insertMacroAndCellWedge
(self, name, vertex=(0,0,0), base1=(1,0,0), base2=(0,1,0), height=(0,0,1), matName='Void', density=0, shift=(0,0,0), rotMatrix=None, impString='', surfaceNum=None, cellNum=None, uni=0):

Generates a WED wedge macro and a cell based on that macro.

The wedge is first instantiated at 0/0/0 and then moved by xShift/yShift/zShift.

Returns assigned surface number and cell number.    

### Method: CardDeck::insertMacroBox
(self, name, v=(-1,-1,-1), a1=(2,0,0), a2=(0,2,0), a3=(0,0,2), surfaceNum=None, trNum=None):

BOX Vx Vy Vz A1x A1y A1z A2x A2y A2z A3x A3y A3z   where Vx Vy Vz = x,y,z coordinates of corner A1x A1y A1z = vector of first side A2x A2y A2z = vector of second side A2x A3y A3z = vector of third side 
Returns assigned surface number.

### Method: CardDeck::insertMacroREC
(self, name, v=(0,-5,0), h=(0,10,0), v1=(4,0,0), Rm=2, surfaceNum=None, trNum=None):

??? only 10 entry version is supported 
Right Elliptical Cylinder REC Vx Vy Vz Hx Hy Hz V1z V1y V1z V2x V2y V2z     where Vx Vy Vz = x,y,z coordinates of bottom cylinder Hx Hy Hz = cylinder axis height vector V1x V1y V1z = 2 ellipse major axis vector (normal to Hx Hy Hz) V2x V2y V2z = ellipse minor axis vector (orthogonal to H and V1) 
If there are ten entries instead of twelve, the tenth entry is the minor  axis radius, where the direction is determined from the cross product of  H and V1.

Returns assigned surface number.    

### Method: CardDeck::insertMacroEllipsoid
(self, name, v1=(0,0,-2), v2=(0,0,2), Rm=6, surfaceNum=None, trNum=None):

ELL V1x V1y V1z V2x V2y V2z Rm If Rm > 0:   V1x Vly V1z = first focus coordinate   V2x V2y V2z = second focus coordinate   Rm = length of major axis If Rm < 0:   V1x Vly V1z = center of ellipsoid   V2x V2y V2z = major axis vector (length = major radius)   Rm = minor radius length 
Returns assigned surface number.    

### Method: CardDeck::insertMacroARB
(self, name, a=(-5,-10,-5), b=(-5,-10,5), c=(5,-10,-5), d=(5,-10,5), e=(0,12,0), f=(0,0,0), g=(0,0,0), h=(0,0,0), N1=1234, N2=1250, N3=1350, N4=2450, N5=3450, N6=0, surfaceNum=None, trNum=None):

ARB ax ay az bx by bz cx cy cz ... hx by hz N1 N2 N3 N4 N5 N6 
There must be eight triplets of entries input for the ARB to describe the  (x,y,z) of the corners, although some may not be used (just use zero triplets  of entries). These are followed by six more entries, N, which follow the  prescription: each entry is a four-digit integer that defines a side of the  ARB in terms of the corners for the side.

ARB -5 -10 -5   -5 -10 5   5 -10 -5   5 -10 5   0 12 0   0 0 0 0 0 0  0 0 0  1234 1250 1350 2450 3450 0 
A five-sided polyhedron with corners at x,y,z = (-5,-10,-5), (-5,-10,6), (5,-10,-5), (5,-10,5), (0,12,0), and planar facets are constructed from corners 1234, etc 
Returns assigned surface number.

### Method: CardDeck::insertWorldMacroAndCell
(self, pos=(0,0,0), radius=50, surfaceList=None, worldMat='Void', worldDensity=0, worldSurfaceNum=None, worldCellNum=None, graveyardCellNum=None):

This function inserts a sphere macro to define the world/graveyard.
This can be done using using automatic cell complement.  If you would like to define the world without using complements, just provide a surfaceList which contains all the surfaces whose outside defines the world.
The worldSurfaceNum will the surface whose inside will define the world.

Only the radius needs to be specified.
Define the world cell using a sphere macro.
The outside of sphere is the graveyard cell and will be void.
The inside of sphere with complement(#) of the cell list is the inside of the world.
*** WARNING: The complement operator # assumes the following number is a cell number, but If the # is omitted, the cell number will be treated as a macro/surface number leading to unexpected results if such a macro/surface exists!!!

### Method: CardDeck::printCellNumNameList
(self):

Prints out a list of all the cell numbers/names in the deck.
Automatically called when the World macro/cell is instantiated since it is usually the last one to be instantiated.

### Method: CardDeck::insertTRString
(self, name, shift=(0,0,0), rotMatrix=None, trNum=None):

Used by insertMacro functions to insert a TRanslate/Rotate string.
The rotation happens before the translate.

### Method: CardDeck::getTrString
(self, shift=(0,0,0), rotMatrix=None, trNum=0):

The provided rotMatrix should be in cosines.

### Method: CardDeck::getTrStringDeg
(self, shift=(0,0,0), rotMatrix=None, trNum=0):

The provided rotMatrix should be in degrees.

### Method: CardDeck::getTrclStringDeg
(self, shift=(0,0,0), rotMatrix=None):

Make as small a TRCL string as will do the job.
Used with commands that insert CELL.
TRCL does not have a trNum and has parentheses.

The provided rotMatrix should be in degrees.  

### Method: CardDeck::getRotationMatrix
(self, rotationAxis='Z', angleDeg=0):

The rotation matrix in degrees, expects angles between 0-180 degrees!
At least the note says so, but the example shows -45!
This rotation matrix is in terms of cosines only, no sines.

Does MCNP multiply with the matrix on the left or right?
Seems like it does it with matrix on right!

### Method: CardDeck::getRotationMatrixArbitraryAxis
(self, axis, angleDeg):

axis is a tuple (x,y,z).
angleDeg is in degrees.

### Method: CardDeck::insertMaterials
(self, matList):

These go in the data card section.

### Method: CardDeck::insertKCODEcard
(self, npsPerCycle=None, initialK=None, cyclesToSkip=None, totalCycles=None, storageFor=None, normBy=None, mrkp=None, avgOver=None):

KCODE NSRCK RKK IKZ KCT MSRK KNRM MRKP KC8 
NSRCK - Number of source histories per cycle RKK - initial guess for keff IKZ - number of cycles to skip before beginning tally accumulations KCT - number of cycles to be done MSRK - number of source points to allocate storage for KNRM - normalize tallies by 0=weight / 1=histories MRKP - maximum number of cycle values on MCTAL or RUNTPE KC8 - summary and tally information averaged over 0=all cycles/1=active cycles only Defaults: NSRCK=1000;  RKK=1.0; IKZ=30; KCT=IKZ+100;            MSRK=4500 or 2*NSRCK; KNRM=0; MRKP=6500; KC8=1 
A criticality source is different from a fixed source because the fission  source locations change from cycle to cycle. A cycle is the completion of  the number of histories requested by the first entry on the kcode card. The  initial ksrc source is used only for the first keff cycle. A new spatial  fission source is generated during each cycle and is used as the source for  the next cycle.

### Method: CardDeck::insertKSRCcard
(self, xyzList=[(0,0,0)]):

KSRC x1 y1 z1 x2 y2 z2 This card contains up to NSRCK (x,y,z) triplets that are locations of initial  source points for a KCODE calculation. At least one point must be in a cell  containing fissile material and points must be away from cell boundaries.  It is not necessary to input all NSRCK coordinate points. MCNP will start  approximately (NSRCK/number of points) particles at each point. Usually one  point in each fissile region is adequate, because MCNP will quickly calculate  and use the new fission source distribution. The energy of each particle in  the initial source is sampled from a Watt fission spectrum hardwired into  MCNP, with a = 0.965 MeV and b = 2.29 MeV−1.   
An SDEF card also can be used to sample initial source points in fissile  material regions. The SDEF card parameters applicable to volume sampling  can be used: CEL, POS, RAD, EXT, AXS, X, Y, Z; and CCC, ERG, and EFF. If a  uniform volume distribution is chosen, the early values of keff will likely  be low because too many particles are put near where they can escape, just  the opposite of the usual situation with the KSRC card. Do not change the  default value of WGT for a KCODE calculation.

### Method: CardDeck::insertSource_PointIsotropicWithEnergyDistrib
(self, pos=[0,0,0], ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], par='P', trNum=None):

First entry on SP card has to be zero for Continuous distribution only ???

### Method: CardDeck::insertSource_PointMonoDirWithEnergyDistrib
(self, pos=[0,0,0], vec=[0,1,0], ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], par='P', trNum=None):

Does not work???
Point source which is also monodirectional... has problems? Mainly with F5  kind of tallies???
With DIR=1, ARA is required.
Page 3-52: Area of surface (required only for direct contributions to point  detectors from plane surface source.) 
Since this is a point source, I am setting ARA to zero ???

### Method: CardDeck::insertSource_PointWithAngularAndEnergyDistrib
(self, pos=[0,0,0], dirDistrib=None, # None, Bias, Restrict vec=[0,1,0], coneHalfAngleDeg=25.8, ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[.2, .1, .3, .4], par='P', trNum=None):

ergDistrib - 'Discrete', 'Histogram', 'Continuous'     dirDistrib - None, 'Bias', 'Restrict' coneHalfAngleDeg - Ignored if dirDistrib is None 
Source is still isotropic but with Angular biasing.
So the values will be the same as with isotropic, but convergence should be faster.
coneHalfAngleDeg - Between 0 and 180 deg.

### Method: CardDeck::insertSource_SphereWithAngularAndEnergyDistrib
(self, pos=[0,0,0], radius=.05, dirDistrib=None, # None, Bias, Restrict vec=[0,1,0], coneHalfAngleDeg=1, eList=[.3, .5, 1.0, 2.5], # bin edges (first edge is 0) relFq=[0, .1, .3, .4], # values for bins, will be normalized ergDistrib='Discrete', # 'Histogram', 'Continuous' rejCell=None, eff=0.01, par='P', trNum=None):

This uses the POS, RAD for particle origin while the cylinder also uses the AXS and EXT.     Both use VEC and DIR for emission direction.

ergDistrib - 'Discrete', 'Histogram', 'Continuous' dirDistrib - None, 'Bias', 'Restrict' coneHalfAngleDeg - Ignored if dirDistrib is None

### Method: CardDeck::insertSource_CylinderWithAngularAndEnergyDistrib
(self, pos=[0,0,0], radius=.05, axs=[0,1,0], thickness=.1, dirDistrib=None, # None, Bias, Restrict vec=[0,1,0], coneHalfAngleDeg=1, ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4], rejCell=None, eff=0.01, par='P', trNum=None):

Can be used to create a disk source, pencil source with very small coneHalfAngle This is a volume source. The emission cone is along the cylinder axis.

Thickness goes to EXT: it is the height of the cylinder or thickness of disk conHalfAngle goes to DIR:     Actually EXT and RAD would only create a surface source at that distance unless a distribution with 0 as the lower range is used.
Get the user to provide a second radius and extent value?

The distribution numbers are hard coded, for eg energy is dist 2.
ergDistrib - 'Discrete', 'Histogram', 'Continuous' 
dirDistrib - None, 'Bias', 'Restrict' coneHalfAngleDeg - Ignored if dirDistrib is None 
The vertical entry format starting indicated by # is used for ease of  entry/debug.

The source variables VEC,DIR,SUR,NORM are used to determine the initial  direction of source-particle flight.

The source variables SUR, POS, RAD, EXT, AXS, X, Y, Z, and CCC are used in  various combinations to determine (x,y,z) of the starting positions of the  source particles.

Page 3-121 XXX, YYY, ZZZ (the position of the particle).
UUU, VVV, WWW (the direction of the flight of the particle).

POS - Reference point for position sampling in vector notation.
RAD - radial distance of the position from POS or AXS.
AXS - reference vector for EXT and RAD in vector notation.
EXT - for a volume source is the distance from POS along AXS.
    - for a surface source is the cosine of angle from AXS 
VEC - Reference vector for DIR in vector notation.
DIR - the cosine of the angle between VEC and UUU, VVV, WWW 
If DIR is set to a constant like 1 for monodirectional, be careful with  point detectors. They don't work with constant DIR.
DIR provides control over polar angle. The azimuthal angle is always 0-360.
This means that cone beam is easy, fan beam is not.

### Method: CardDeck::insertSource_BoxWithAngularAndEnergyDistrib
(self, xRange=[0,1], yRange=[0,1], zRange=[0,1], dirDistrib=None, # None, Bias, Restrict vec=[0,1,0], coneHalfAngleDeg=1, ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4], rejCell=None, eff=0.01, par='P', trNum=None):

ergDistrib - 'Discrete', 'Histogram', 'Continuous' 
dirDistrib - None, 'Bias', 'Restrict' coneHalfAngleDeg - Ignored if dirDistrib is None 
Page 12 of MCNP primer.
Volumetric box source is created using X/Y/Z keywords with each having.
a distribution that specifies the xrange/yrange/zrange.

### Method: CardDeck::insertSource_SphSurfaceWithCCC
(self, surNum=0, ergDistrib='Discrete', # 'Histogram', 'Continuous' eList=[.3, .5, 1.0, 2.5], relFq=[0, .1, .3, .4], trNum=None):

Experimental: Surface source To use this source, first define an emitting surface and optionally a cookie cutting cell for rejection.

Don't use for imaging?
Simplest solution for fan beam is to use the cone beam and use only the middle of the detector?

For a surface source, spherical surface is easier to understand, cylindrical is not.
The norm of the surface decides the VEC, but the spread around the VEC, ie DIR  is not mono directional by default. So a DIR distribution is needed.
Can't do a constant DIR=1 because point detectors don't like that.
   EFF is needed in case ccc rejection is too high With all of this, it works as a fan source, but still the convergence seems very slow, as if no variance reduction techniques that MCNP is known for were used.  The picture builds from individual dots. Not a good source for imaging?

------------------ Intent was to create a fan source from a cylindrical surface emitting normally.  That would mean all the particles will seem to come from the axis of the cylinder.
For a cylinder with very small height and part of the curved surface used, the  emission will look like a FAN beam?   
??? For the cylidrical surface source, MCNP gives an error "dir specified but vec absent"
vec is supposed to be the normal to the surface, but does not work for cylindrical, as it does for sphere. The manual hints at this.

See Example 9 from MCNP manual 6.1  

### Method: CardDeck::insertSource_CylinderMonoDirMonoEnergy
(self, pos=[0,0,0], radius=.05, axs=[0,1,0], thickness=.1, vec=[0,1,0], MeV=1, trNum=None):

Pencil beam, mono energetic.

### Method: CardDeck::getEnergyDistributionString
(self, distNum, eList, relFq, distrib='Discrete', vertString=True):

From MCNP primer by Shultis, Faw.
Point Isotropic Source with Discrete Energy Photons.
Tested with spectroscopic tally.

Horizontal: SI1 A .3 .5 1.0 2.5 SP1    0 .2  .3  .5 
How to add the A/L in the vertical/column mode?
If no A or L is used, what is the default?
Vertical with J to pad the second column??? Page 2-9 L blank : Error L J     : Error L D     : Works, D is the default #  SI1   SP1     A     J?
   .3     0    .5    .2   1.0    .3   2.5    .5

### Method: CardDeck::getAngularBiasingString
(self, distNum, coneHalfAngleDeg):

  Biasing speeds up convergence, but the results are the same as for   an isotropic source.
  For an anisotropic source, see getAngularDirectingString.
     MCNP Primer page 13.
  SI - source information.
  SP - source probability.
  SB - source biasing.
     Cosine(180): -1.
   Cosine(90):  0.
   Cosine(25): .9.
    Cosine(0):  1.
       This example first defines .05 of particles in the front 25.8 degrees and    the remaining .95 going backwards. This makes it isotropic.
  Because Fractional solid angle (fsa) = 2*pi*(1-cos(theta))   where theta is the one side angle of cone.
     2*pi*(1-cos(25.8)) = 0.62   fsa = 0.62/(4*pi) = .0493.

  Then we bias the forward bin.
  With this conical source, tally normalization is per source particle in    4*pi steradians.
   si4   -1.00   0.9    1.0     $ for DIR, histogram of cosine bin, two bins.
sp4    0.     0.95   0.05    $ fraction solid angle for each bin.
sb4    0.     0.     1.0     $ Source bias for each bin.

### Method: CardDeck::getAngularRestrictingString
(self, distNum, coneHalfAngleDeg):

The biasing string, biases an isotropic source.
The Restricting string, is creating an anisotropic source.
Primarily the difference between biasing vs restricting seems to only be in the absolute value of the tally since the tally is per photon.

### Method: CardDeck::getTallyEnergyCardArb
(self, tallyNumWType, eList):

E card. Arbitrary energy bins.
If all tallies in a problem have the same energy group structure, a single  card may be used, with En replaced by E0.
tallyNumWType can be 0 for the E0 card.

### Method: CardDeck::insertTallyE0Card
(self, eList):

An E0 card can be used to set up a default energy-bin structure for all tallies.  A specific En card will override the default structure for tally n.

### Method: CardDeck::getTallyEnergyMultiplierCard
(self, tallyNumWType, mList):

EM card.
Can be used with uniform energy bins or arbitrary energy bins?
This multiplies each energy bin by the given scalar.
Different from FM card.
The energy bins are the same as used on the energy card.

### Method: CardDeck::testGetTallySpecialTreatmentFTCard
(self):

GEB and SCX on the same FT card???

### Method: CardDeck::insertTallySpecialTreatmentFTCard
(self, tallyNumWType, treatmentKeyword, *args):

FT card can do many things ... Page 3-224, 225. CURRENTLY NOT USED.
SCX, GEB, ICD, SCD, INC, TAG.

??? It seems that GEB and SCX can go on the same FT card. Do all special  treatments go on one FT card?

SCX -  With parameters: 15  SCX 2 we get tallies binned by source bin.
FT15 SCX 2.
15 is the tally this card applies to.
2 is the number from a source distribution like SI2.
------------------ GEB - Gaussian Energy Broadening.
With parameters: 15 GEB 1 2 3 we get.
FT15 GEB 1 2 3.
GEB a b c (fwhm = a + b*sqrt(E + c*E*E) where E is the energy of the particle).
          (The energy stored is sampled from a Gaussian with this FWHM).
          Then it will be tallied into the correct bin???
------------------ ICD - The ICD keyword allows the user to create a separate bin for each cell,  and only contributions from one of the specified cells are scored.  Use FUn card to specify the cells.
------------------   SCD - The SCD option causes tallies to be binned according to which source  distribution was sampled.  Use FUn card to specify the distributions.
------------------ INC - Bin by number of collisions that have occured in the track.
Use FUn card to specify the details.
------------------   TAG - Tally tagging allows the user to separate a tally into components based  on how and where the scoring particle was produced. Page 3-235 Use FUn card to specify the details.

### Method: CardDeck::getFXTallySTring
(self, tallyNum, tallyType, cellSurfInfo, eList=None, mList=None, par='p'):

Don't call this function. Call the functions named with F1/2/4/6/7/8.
The cell or surface information can be provided in many different ways,  according to the MCNP manual.
The string is the most generic way to handle anything that MCNP supports.
An int or float can also be passed in for simpler cases.
If a list/tuple is passed, each element in it is converted to a string and wrapped with parentheses.

See Chapter 4, page 4–48, for a CAUTION when tallying a union of overlapping  regions. For unnormalized tallies (type 1, 8), the union is a sum. For  normalized tallies (type 2, 4, 6, 7), the union is an average.

When cell is given from another universe, (1<4), it is a string The string case can actually take care of the int/float also Page 3-19, MCNP 6.1: "Parentheses indicate that the tally is for the union  of the items within the parentheses.
Nested lists can get complicated so it is best to just use the string.

eList and mList can be a list of floats in MeV, or a string in MCNP format, possibly with the i operator. 0 10i 1 gives ten equi spaced numbers between 0 and 1 MeV.

### Method: CardDeck::insertF1Tally
(self, tallyNum, surfInfo, eList=None, mList=None, par='p'):

Current integrated over a surface. Units: particles.

### Method: CardDeck::insertF2Tally
(self, tallyNum, surfInfo, eList=None, mList=None, par='p'):

Flux averaged over a surface. Units: particles/cm2.
Depends on material behind the surface? Why?

### Method: CardDeck::insertF4Tally
(self, tallyNum, cellInfo, eList=None, mList=None, par='p'):

Track length estimate of flux averaged over a CELL. Units: particles/cm2 Depends on material in the cell.

### Method: CardDeck::insertF6Tally
(self, tallyNum, cellInfo, eList=None, mList=None, par='p'):

Track length estimate of energy deposition averaged over a CELL.  Units: MeV/g.
Cell material must not be void.

### Method: CardDeck::insertF7Tally
(self, tallyNum, cellInfo, eList=None, mList=None):

Track length estimate of fission energy deposition averaged over a CELL.  Units: MeV/g.
Only for neutrons.
??? Need to create a test case.

### Method: CardDeck::insertF8Tally
(self, tallyNum, cellInfo, eList=None, mList=None, par='p,e'):

Energy distribution of pulses created in a detector.

For pulse-height tallies photons/electrons are a special case: F8:P,E is the same  as F8:P and F8:E. Also, F8 tallies may have particle combinations such as F8:N,H.   
Pulse height tally in a cell. Energy deposited. Will depend upon material in cell.

The pulse height tally is a radical departure from other MCNP tallies.
For the pulse-height tally, microscopic events must be modeled much more realistically.

Page 3-189: MCNP6 users manual.
One common application of the F8 tally is simulation of the energy distribution of pulses created in a detector by radiation. The union of tallies produces a tally sum, not an average. Cell, user and energy bin cards are allowed. Flagging and  multiplier bins are not allowed. Segment, time, and cosine bins are permitted with ceratin FT options. Use of the dose energy (DE) and dose function (DF) cards is  also disallowed with the F8 tally.  
The energy bins in the F8 pulse-height tally are different from those of all  other tallies. Rather the particle energy at the time of scoring, the number of pulses depositing energy within the bins are tallied. That is, the meaning of the energy  bins of a pulse-height tally is the energy deposited in a cell bin by all the  physically associated tracks of a history. Care must be taken when selecting  energy bins for a pulse-height tally. It is recommended that a zero bin and an  epsilon bin be included.

The zero bin will catch non-analog knock-on electron negative scores. The epsilon bin will catch scores from particles that travel through the cell without depositing energy.
    The asterisk on a tally type 8 converts from a pulse-height tally to an energy  deposition tally. All of the units are shown in the above table.
Tally type 8 has many options. The standard F8 tally is a pulse-height tally  and the energy bins are no longer the energies of scoring events, but rather  the energy balance of all events in a history. In conjunction with the FT8 card  (Section 3.3.5.18), the F8 tally can be an anticoincidence pulse-height tally,  a neutron coincidence capture tally, or a residual nuclei production tally.

F8 tallies always tally both p and e.

### Method: CardDeck::insertF5Tally
(self, tallyNum, pos=(100,0,0), r=0, eList=None, mList=None, par='p'):

Flux at a point or ring detector. Units: particles/cm2.
Tally 5 is only available for neutrons and photons.
The F5 tally needs a point and an radius of sphere of exclusion.
Actually, it can take a list of points and radii which show as separate objects.
in the tally. But this can be done with separate F5 tallies so ignoring for now.

The radius of the sphere of exclusion, +/-roi, should be about 1/8 to 1/2 mean.
free path for particles of average energy at the sphere and *ZERO* in a void.
The exclusion sphere must not encompass more than one material. MCNP6 cannot  verify this and the consequences may be wrong answers.

### Method: CardDeck::insertFIR5Tally
(self, tallyNum, pos=(100,0,0), normVec=(1,0,0), sMin=-0.02, sMax=0.02, sbins=40, tMin=-0.02, tMax=0.02, tbins=60, eList=None, mList=None, par='p'):

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

### Method: CardDeck::getFIR5Tally
(self, t, pos, normVec, sMin, sMax, sbins, tMin, tMax, tbins, eList, mList, par):

Used by insertFIR5Tally.

### Method: CardDeck::insertDebugTallyString
(self, worldSurfaceNum):

Debug tally needs the worldSurfaceNum. (Works off surface, not cell).
This is a specific use of the F1 tally?

### Method: CardDeck::setParticlesList
(self, p=['p', 'e']):

Set particles to transport in the MCNP simulation.

MODE N - neutron transport only (default).
     N P - neutron and neutron-induced photon transport.
     P - photon transport only.
     E - electron transport only.
     P E - photon and electron transport.
     N P E - neutron, neutron-induced photon, and electron transport.        Note: Particles are separated by space.

### Method: CardDeck::getModeString
(self):

Generate mode string from the particlesList attribute and return it.

### Method: CardDeck::getImpString
(self, imp=1):

Get importance string based on the particles set in particle list.
Used while inserting cells.
IMP:p,e=1

### Method: CardDeck::insertMTcard
(self, matKey='WaterLiquid', sAlphaBetaList=['lwtr']):

Insert a MT card to change the neutron cross section used for a particular material.

matKey - The identifier used to insert a material into the CardDeck.
Ex. 'WaterLiquid' or 'Beryllium'... use csmat.matSearch to find 
sAlphaBetaList - A list of sAlphaBeta treatment strings.
If the material has more than one element, you can provide more than one string.
Ex. ['lwtr', 'GRPH.06T', 'BE.60T']

### Method: CardDeck::insertPhysicsCard
(self, nocoh=0, ides=0, nodop=0, cutn=0.0, cutp=0.001, cute=0.001):

This function inserts physics and mode cards.

MCNP5 5.1 Vol II Page 5-2 There are three possible physics treatments for photons. The first is the explicit p,e treatment (MODE P E) where photons generate electrons, which are tracked and generate photons (ad infinitum). This is the most accurate model but is costly in terms of run time.  
The second physics treatment is MODE P only that uses the default thick target bremsstrahlung (TTB) model where electrons are generated in the direction of the incident photon and are immediately annihilated after generating bremsstrahlung photons.  
The third photon physics treatment is a MODE P only with the TTB turned off  (IDES=1 on the PHYS card). Bremsstrahlung photons from electrons are completely ignored,  which is a poor approximation for a high Z material.

To turn off the production of secondary electrons generated by photons, the switch IDES can be set, either on the PHYS:P or on the PHYS:E card. If either of these cards sets IDES = 1, photons will NOT produce electrons, even if IDES = 0 is set on the other. In a photon-only problem, turning off secondary electrons causes the thick-target bremsstrahlung model to be bypassed. This option should be exercised only with great care because it alters the physics of the electron-photon cascade and will give erroneously low photon results when bremsstrahlung and electron transport are significant.

PHYS:p  emcpf  ides  nocoh  ispn  nodop Default: 100    0      0     0     0   emcpf- Upper energy limit for detailed photon physics treatment (default 100 MeV)   ides- default 0 Bremms is on. Don't set to 1   nocoh- Coherent/Thomson scattering (default 0/on) Notice the no in nocoh   ispn-  photon nuclear particle production (default 0/off)   nodop- photon doppler energy broadening (deafult 0/on) Notice the no in nodop          Doppler Energy Broadening defaults by version: MCNPX is off, MCNP5 is on, MCNP6 is on.

PHYS:e EMAX IDES IPHOT IBAD ISTRG BNUM XNUM RNOK ENUM NUMB Defaults: EMAX = 100 MeV;            IDES, IPHOT, IBAD, ISTRG = 0;           BNUM, XNUM, RNOK, ENUM = 1.,            NUMB = 0   emax - upper limit for electron energy in MeV   IDES = 0/1 = photons will/will not produce electrons.
  IPHOT = 0/1 = electrons will/will not produce photons.
   10 options

### Method: CardDeck::insertOutputControlCards
(self, nps=1000, debugN=None, notrn=False):

1) Tally Prnt Increment.
2) Dump to RUNTPE increment.  3) Create MCTAL file.
4) Max No. of Dumps on RUNTPE.  5) Controls Rendezvous points.
   Random number generator does not repeat when period is exceeded, but longer period generation (gen2,3) are preferred. Page 3-328 (6.1) 
??? DBCN ??? Comment nps if running a KCODE problem.    

### Method: CardDeck::insertIntoCellSection
(self, s):

Use this function to insert manually generated/unsupported cards into the  cell section.

### Method: CardDeck::insertIntoSurfaceSection
(self, s):

Use this function to insert manually generated/unsupported cards into the macros/surfaces section.

### Method: CardDeck::insertIntoSrcSection
(self, s):

Use this function to insert manually generated/unsupported cards into the data section. Could have gone into any of: collectedMatStrings, collectedTrStrings, collectedSrcStrings, collectedTallyStrings, collectedPhysicsStrings,  collectedOutputControlStrings which together comprise the data section.
But Mat has its own method. TR section is too simple to need one.

### Method: CardDeck::insertIntoMaterialSection
(self, s):



### Method: CardDeck::insertIntoTallySection
(self, s):



### Method: CardDeck::insertIntoPhysicsSection
(self, s):



### Method: CardDeck::insertIntoOutputSection
(self, s):



### Method: CardDeck::assembleDeck
(self, titleCard, macroString='Auto', cellString='Auto', trString='Auto', matString='Auto', srcString='Auto', tallyString='Auto', physicsString='Auto', outputControlString='Auto'):

All the arguments are optional since they will be generated from the information collected from calling the relevant methods.

Only provide those that you are manually generating.
The strings provided here will overwrite the ones that would otherwise be  generated internally.

This function takes multiple multi-line strings and combines them into a multiline string, following MCNP rules.
The provided strings should be multiline, wrapped to 80 characters with &.

cellString - A multi string representation of all cells (not universe cell) macroString - A multi string representation of all macros used by the cells (not universe macro).
cellList -  A list of integers that are the cellNums.
            The cellNums will be used to make a universe cell.

matString, trString, srcString, tallyString, physicsString, outputControlString go into data section.

### Method: CardDeck::saveDeck
(self, modelFolder, modelFilename, deckStr):

Save all the cards to an MCNP input deck (file).

-----------------
## Function: findLongestLineLen
(multilineString):

Find longest line in a multi line string.
Ignore $ comments at the end of a line to determine line length.

-----------------
## Function: toMCNP80String
(multilineString):

Convert a given multi line string to MCNP compatible strings with no lines longer than 80 characters.

-----------------
## Function: testToMCNP80String
():



-----------------
## Function: printIfShow
(*args, **kwargs):

Alternative to regular print so that debug prints can be turned on/off using a global variable for the file/module.

