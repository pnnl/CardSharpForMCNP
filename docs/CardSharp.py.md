# Module: CardSharp.py
This file provides a class/methods for creating MCNP decks.
See the test scripts in the CardSharpTests folder for usage.

Most refereces to MCNP manual are to version 6.1. Some to 5.1 Vol II.
The two have a different style in terms of upper/lower case.

MOST ARGUMENTS TO THE FUNCTIONS HAVE SENSIBLE DEFAULT VALUES.
-----------------
-----------------
## Class: CardDeck
Class representing an MCNP input deck/file.
Instantiate an object of this class, then call methods to add surfaces, cell, materials, source, tallies, physics and output control cards. Finally write out the deck.
### Method: CardDeck::insertCellString
Args: (name, surfaceList, cellComplementList, manualSurfacesString, matName, density, shift, rotMatrix, impString, cellNum, uni, fill, latticeType, latticeIndices).

This function is used to insert a cell using surfaces and cell that have already been defined.

surfaceList simply supports positive/negative surfaces. The complement list  is a list of cells which get subtracted.

The possible combinations with unions, intersections, complement, complement of unions and so on are too many.  If the user wants to do that,  they can enter the string manually.

Either use surfaceList and cellComplementList, or use the manualSurfacesList.

The rotMatrix and shift add a TRCL string.

By default all cells are instantiated with an importance string based on the particles list set before the call to the cell function.
If a cell needs a different importance string from the default, use this option: impString: It should look like this: 'imp:p,e=1' 
latType - 1 (RPP) latType - 2 (Hexagonal prism) latIndices - Range specifying Imin/Imax, Jmin/Jmax, Kmin/Kmax of the lattice range fill can be a single universe number or a list of universes in case of a lattice
### Method: CardDeck::insertSurface_CylinderAligned
Args: (name, axis, offset, radius, surfaceNum, trNum).

Define a cylinder parallel to one of the three axes.
If parallel to X axes, the YZ offsets are used.
If parallel to Y axes, the XZ offsets are used and so on.

Returns assigned surface number.
### Method: CardDeck::insertSurface_Plane
Args: (name, A, B, C, D, surfaceNum, trNum).

Define a plane surface aligned with equation: Ax + By + Cz -D = 0.
Can also add a transform.

Returns assigned surface number.    
### Method: CardDeck::insertSurface_PlaneAligned
Args: (name, axis, D, surfaceNum, trNum).

Define a plane surface aligned with X or Y or Z axis.
D refers to: PX, PY, PZ.  PX is normal to X axis.

Returns assigned surface number.    
### Method: CardDeck::insertMacroSphere
Args: (name, pos, radius, macrobodyNum, trNum).

name is only for the comment.
In general, instantiate surfaces/cells at the origin and then apply TR/TRCL to rotate/translate.

Returns assigned surface number.
### Method: CardDeck::insertMacroAndCellSphere
Args: (name, pos, radius, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Insert a sphere macro and a cell based on that macro.
Also includes a comment string.
Sphere is different from other macrobodies in not ever needing an orientation matrix.

Returns assigned surface number and cell number.
### Method: CardDeck::insertMacroAndCellSphereShell
Args: (name, pos, radius1, radius2, matName, density, shift, rotMatrix, macrobodyNum1, macrobodyNum2, cellNum, uni).

Uses two sphere macros to generate a shell.

Returns a list of the assigned macro numbers and the assigned cell number.
### Method: CardDeck::insertMacroRhpHex
Args: (name, base, axis, r, macrobodyNum, trNum).

From MCNP manual: RHP v1 v2 v3   h1 h2 h3  r1 r2 r3  s1 s2 s3  t1 t2 t3.
RHP/HEX's side surface should be orthogonal to top/bottom.
For RHP, acceptable numbers of arguments is {7, 9, 15}.
Only the 9 arguments is currently supported in CardSharp. This means that only regular hexagonal base is supported.

Returns assigned surface number.
### Method: CardDeck::insertMacroAndCellRhpHex
Args: (name, base, axis, r, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Generates a RHP macro and a cell based on that macro.
Returns assigned surface number and cell number.    
### Method: CardDeck::insertMacroAndCellRhpHexShell
Args: (name, base1, axis1, r1, base2, axis2, r2, matName, density, shift, rotMatrix, macrobodyNum1, macrobodyNum2, cellNum, uni).

Uses two RHP macros to generate a shell.

Returns a list of the assigned macro numbers and the assigned cell number.
### Method: CardDeck::insertMacroRcc
Args: (name, base, axis, radius, macrobodyNum, trNum).

name is only for the comment.
From MCNP manual: RCC vx vy vz hx hy hz r.
vx/vy/vz - coordinates of center of base.
hx/hy/hz - provide orientation and height of top (not the coordinates of center of top).
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top?

But rotations generally need to be around the center of axis.

Returns assigned surface number.    
### Method: CardDeck::insertMacroAndCellRcc
Args: (name, base, axis, radius, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Generates a RCC Right Circular Cylinder macro and a cell based on that macro.
axisX/axisY/axisZ together given orientation and height of cyl.
The cylinder is first instantiated at 0/0/0 and then moved by xShift/yShift/zShift Also includes a comment string.

Returns assigned surface number and cell number.
### Method: CardDeck::insertMacroAndCellRccShell
Args: (name, base1, axis1, radius1, base2, axis2, radius2, matName, density, shift, rotMatrix, macrobodyNum1, macrobodyNum2, cellNum, uni).

Uses two RCC macros to generate an annulus. FIRST one is the OUTER one.
As it is currently, the center of the axis won't be at the origin unless the user makes it so.
Any rotation applied by a TRCL will be around the origin.

The two cylinders are defined by the base/axis/radius.
xShift,yShift,zShift translates the annulus or RccShell 
The position can come from TRCL while instantiating the cell.

Returns a list of the assigned macro numbers and the assigned cell number.
### Method: CardDeck::insertMacroRpp
Args: (name, xMinMax, yMinMax, zMinMax, macrobodyNum, trNum).

name is only for the comment.
xMinMax, yMinMax, zMinMax are tuples giving the upper/lower bounds of the RPP.

Returns assigned surface number.    
### Method: CardDeck::insertMacroAndCellRpp
Args: (name, xMinMax, yMinMax, zMinMax, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Generates a RPP Rect Parallelopipded macro and a cell based on that macro.
Also includes a comment string.

Returns assigned surface number and cell number.    
### Method: CardDeck::insertMacroAndCellRppShell
Args: (name, innerXWidth, outerXWidth, innerYWidth, outerYWidth, innerZWidth, outerZWidth, matName, density, shift, rotMatrix, macrobodyNum1, macrobodyNum2, cellNum, uni).

Inserts two RPP macros to generate shell.

Returns a list of the assigned macro numbers and the assigned cell number.
### Method: CardDeck::insertMacroWedge
Args: (name, vertex, base1, base2, height, macrobodyNum, trNum).

name is only for the comment Wedge has a right angled triangle as base and a right angled prism above it.
   From MCNP manual: WED vx vy vz v1x v1y v1z v2x v2y v2z v3x v3y v3z.
vertexX, vertexY, vertexZ - are the coordinates of the rt angle vertex of base.
v1x/v1y/v1z - vector of one of the two rt angled sides of the base.
v2x/v2y/v2z = vector of the second of the two rt angled sides of the base.
hx/hy/hz - provide orientation and height of top corner.
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.

But rotations generally need to be around the center of axis.

Returns assigned surface number.
### Method: CardDeck::insertMacroAndCellWedge
Args: (name, vertex, base1, base2, height, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Generates a WED wedge macro and a cell based on that macro.

The wedge is first instantiated at 0/0/0 and then moved by xShift/yShift/zShift.
Also includes a comment string.

Returns assigned surface number and cell number.    
### Method: CardDeck::insertMacroCone
Args: (name, base, height, radius1, radius2, macrobodyNum, trNum).

name is only for the comment.
Cone has a base pos, height vector, base radius and top radius.
radius1 is base radius.

From MCNP manual: TRC vx vy vz    hx hy hz   r1 r2.
vertexX, vertexY, vertexZ - are the coordinates of the base.
hx/hy/hz - provide orientation and height of top corner.
           If the base is at 0,0,0 the hx/hy/hz would be the coordinates of top corner.
r1 > r2 (base radius and top radius).

Returns assigned surface number.    
### Method: CardDeck::insertMacroAndCellCone
Args: (name, base, height, radius1, radius2, matName, density, shift, rotMatrix, macrobodyNum, cellNum, uni).

Generates a TRC truncated right angle cone macro and a cell based on that macro.

The cone is first instantiated at 0/0/0, then optionally rotated by rotMatrix and then moved by shift.
Also includes a comment string.

Returns assigned surface number and cell number.    
### Method: CardDeck::insertWorldMacroAndCell
Args: (pos, radius, surfaceList, worldMat, worldDensity, worldMacroNum, worldCellNum, graveyardCellNum).

This function inserts a macro to define the world/graveyard.
This can be done using using automatic cell complement.  If you would like to define the world without using complements, just provide a surfaceList which contains all the surfaces whose outside defines the world.
The worldMacroNum will the surface whose inside will define the world.

Only the radius needs to be specified.
Define the world cell using a sphere macro.
The outside of sphere is the graveyard cell and will be void.
The inside of sphere with complement(#) of the cell list is the inside of the world.
*** WARNING: The complement operator # assumes the following number is a cell number, but If the # is omitted, the cell number will be treated as a macro/surface number leading to unexpected results if such a macro/surface exists!!!
### Method: CardDeck::printCellNumNameList
Args: ().

Prints out a list of all the cell numbers/names in the deck.
Automatically called when the World macro/cell is instantiated since it is usually the last one to be instantiated.
### Method: CardDeck::insertTRString
Args: (name, shift, rotMatrix, trNum).

Used by insertMacro functions to insert a TRanslate/Rotate string.
The rotation happens before the translate.
### Method: CardDeck::getTrString
Args: (shift, rotMatrix, trNum).

The provided rotMatrix should be in cosines.
### Method: CardDeck::getTrStringDeg
Args: (shift, rotMatrix, trNum).

The provided rotMatrix should be in degrees.
### Method: CardDeck::getTrclStringDeg
Args: (shift, rotMatrix).

Make as small a TRCL string as will do the job.
Used with commands that insert CELL.
TRCL does not have a trNum and has parentheses.

The provided rotMatrix should be in degrees.  
### Method: CardDeck::getRotationMatrix
Args: (rotationAxis, angleDeg).

The rotation matrix in degrees, expects angles between 0-180 degrees!
At least the note says so, but the example shows -45!
This rotation matrix is in terms of cosines only, no sines.

Does MCNP multiply with the matrix on the left or right?
Seems like it does it with matrix on right!
### Method: CardDeck::getRotationMatrixArbitraryAxis
Args: (axis, angleDeg).

axis is a tuple (x,y,z).
angleDeg is in degrees.
### Method: CardDeck::insertMaterialStrings
Args: (matList).

These go in the data card section.
### Method: CardDeck::insertSource_PointIsotropicWithEnergyDistrib
Args: (pos, MeVList, relFq, distrib, par, trNum).

First entry on SP card has to be zero for Continuous only ???
### Method: CardDeck::insertSource_PointMonoDirWithEnergyDistrib
Args: (pos, vec, MeVList, relFq, distrib, par, trNum).

Does not work???
Point source which is also monodirectional... has problems? Mainly with F5  kind of tallies???
With DIR=1, ARA is required.
Page 3-52: Area of surface (required only for direct contributions to point  detectors from plane surface source.) 
Since this is a point source, I am setting ARA to zero ???
### Method: CardDeck::insertSource_PointWithAngularBiasingAndEnergyDistrib
Args: (pos, vec, coneHalfAngleDeg, MeVList, relFq, distrib, par).

Source is still isotropic but with Angular biasing???
So the values will be the same as with isotropic?
coneHalfAngleDeg - Between 0 and 180 deg.
### Method: CardDeck::insertSource_SphereWithAngularBiasingAndEnergyDistrib
Args: (pos, radius, vec, coneHalfAngleDeg, MeVList, relFq, rejCell, eff, trNum).

This uses the POS, RAD for particle origin while the cylinder also uses the AXS and EXT.

Both use VEC and DIR for emission direction.
### Method: CardDeck::insertSource_CylinderMonoDirMonoEnergy
Args: (pos, radius, axs, thickness, vec, MeV, trNum).

Pencil beam, mono energetic.
### Method: CardDeck::insertSource_CylinderWithAngularBiasingAndEnergyDistrib
Args: (pos, radius, axs, thickness, vec, coneHalfAngleDeg, MeVList, relFq, rejCell, eff, trNum).

Can be used to create a disk source, pencil source with very small coneHalfAngle This is a volume source. The emission cone is along the cylinder axis.

Thickness goes to EXT: it is the height of the cylinder or thickness of disk conHalfAngle goes to DIR:     Actually EXT and RAD would only create a surface source at that distance unless a distribution with 0 as the lower range is used.
Get the user to provide a second radius and extent value?

The distribution numbers are hard coded, for eg energy is dist 2.

To make this a Bremstrahlung spectrum, change the en/fq lists.
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
Args: (xRange, yRange, zRange, vec, coneHalfAngleDeg, MeVList, relFq, rejCell, eff, trNum).

Page 12 of MCNP primer.
Volumetric box source is created using X/Y/Z keywords with each having.
a distribution that specifies the xrange/yrange/zrange.
### Method: CardDeck::insertSource_SphSurfaceWithCCC
Args: (surNum, MeVList, relFq, trNum).

To use this source, first define an emitting surface and optionally a cookie cutting cell for rejection.

Don't use for imaging?
Simplest solution for fan beam is to use the cone beam and use only the middle of the detector?

For a surface source, spherical surface is easier to understand, cylindrical is not.
The norm of the surface decides the VEC, but the spread around the VEC, ie DIR  is not mono directional by default. So a DIR distribution is needed.
Can't do a constant DIR=1 because point detectors don't like that.
   EFF is needed in case ccc rejection is too high With all of this, it works as a fan source, but still the convergence seems very slow, as if no variance reduction techniques that MCNP is known for were used.  The picture builds from individual dots. Not a good source for imaging?

------------------ Intent was to create a fan source from a cylindrical surface emitting normally.  That would mean all the particles will seem to come from the axis of the cylinder.
For a cylinder with very small height and part of the curved surface used, the  emission will look like a FAN beam?   
??? For the cylidrical surface source, MCNP gives an error "dir specified but vec absent" vec is supposed to be the normal to the surface, but does not work for cylindrical, as it does for sphere. The manual hints at this.

See Example 9 from MCNP manual 6.1  
### Method: CardDeck::getEnergyDistributionString
Args: (distNum, MeVList, relFq, distrib, vertString).

From MCNP primer by Shultis, Faw.
Point Isotropic Source with Discrete Energy Photons.
Tested with spectroscopic tally.

Horizontal: SI1 A .3 .5 1.0 2.5 SP1    0 .2  .3  .5 
How to add the A/L in the vertical/column mode?
If no A or L is used, what is the default?
Vertical with J to pad the second column??? Page 2-9 L blank : Error L J     : Error L D     : Works, D is the default #  SI1   SP1     A     J?
   .3     0    .5    .2   1.0    .3   2.5    .5
### Method: CardDeck::getAngularBiasingString
Args: (distNum, coneHalfAngleDeg).

  ??? Biasing speeds up convergence, but the results are the same as for   ??? a isotropic source.
  ??? For an anisotropic source, see getAngularDirectingString.
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
Args: (distNum, coneHalfAngleDeg).

The biasing string, biases an isotropic source.
The Restricting string, is creating an anisotropic source.
Primarily the difference between biasing vs restricting seems to only be in the absolute value of the tally since the tally is per photon.
### Method: CardDeck::getTallyEnergyCardArb
Args: (tallyNumWType, eList).

E card. Arbitrary energy bins.
If all tallies in a problem have the same energy group structure, a single  card may be used, with En replaced by E0.
tallyNumWType can be 0 for the E0 card.
### Method: CardDeck::insertTallyE0Card
Args: (eList).

An E0 card can be used to set up a default energy-bin structure for all tallies.  A specific En card will override the default structure for tally n.
### Method: CardDeck::getTallyEnergyMultiplierCard
Args: (tallyNumWType, mList).

EM card.
Can be used with uniform energy bins or arbitrary energy bins?
This multiplies each energy bin by the given scalar.
Different from FM card.
The energy bins are the same as used on the energy card.
### Method: CardDeck::testGetTallySpecialTreatmentFTCard
Args: ().

GEB and SCX on the same FT card???
### Method: CardDeck::insertTallySpecialTreatmentFTCard
Args: (tallyNumWType, treatmentKeyword).

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
Args: (tallyNum, tallyType, cellListList, eList, mList, par).

Can this function do F1/2/4/6/7 and maybe 8?
??? Clean for all possible cases of the cell type.
### Method: CardDeck::insertF1Tally
Args: (tallyNum, cellListList, eList, mList, par).

Current integrated over a surface. Units: particles.
### Method: CardDeck::insertF2Tally
Args: (tallyNum, cellListList, eList, mList, par).

Flux averaged over a surface. Units: particles/cm2.
Depends on material behind the surface!!! Why?
### Method: CardDeck::insertF4Tally
Args: (tallyNum, cellListList, eList, mList, par).

Flux averaged over a CELL. Units: particles/cm2 Depends on material in the cell.
### Method: CardDeck::insertF6Tally
Args: (tallyNum, cellListList, eList, mList, par).

Energy deposition averaged over a CELL. Units: particles/cm2.
Depends on material in the cell.
### Method: CardDeck::insertF7Tally
Args: (tallyNum, cellListList, eList, mList, par).

Fission energy deposition averaged over a CELL. Units: particles/cm2.
Only for neutrons.
??? Need to create a test case.
### Method: CardDeck::insertF8Tally
Args: (tallyNum, cellListList, eList, mList, par).

For pulse-height tallies photons/electrons are a special case: F8:P,E is the same  as F8:P and F8:E. Also, F8 tallies may have particle combinations such as F8:N,H.   
Pulse height tally in a cell. Energy deposited.
??? If this is pulse height, what does F5 do? Basically incident energy without any DRF?

The pulse height tally is a radical departure from other MCNP tallies.
For the pulse-height tally, microscopic events must be modeled much more realistically.

Page 3-189: MCNP6 users manual.
One common application of the F8 tally is simulation of the energy distribution of pulses created in a detector by radiation. The union of tallies produces a tally sum, not an average. Cell, user and energy bin cards are allowed. Flagging and  multiplier bins are not allowed. Segment, time, and cosine bins are permitted with ceratin FT options. Use of the dose energy (DE) and dose function (DF) cards is  also disallowed with the F8 tally.  
The energy bins in the F8 pulse-height tally are different from those of all  other tallies. Rather the particle energy at the time of scoring, the number of pulses depositing energy within the bins are tallied. That is, the meaning of the energy  bins of a pulse-height tally is the energy deposited in a cell bin by all the  physically associated tracks of a history. Care must be taken when selecting  energy bins for a pulse-height tally. It is recommended that a zero bin and an  epsilon bin be included.

The zero bin will catch non-analog knock-on electron negative scores. The epsilon bin will catch scores from particles that travel through the cell without depositing energy.

??? What is the score from a particle that travels through without depositing energy?
??? How do we designate the first two are zero/epsilon or not?
  The asterisk on a tally type 8 converts from a pulse-height tally to an energy  deposition tally. All of the units are shown in the above table.
Tally type 8 has many options. The standard F8 tally is a pulse-height tally  and the energy bins are no longer the energies of scoring events, but rather  the energy balance of all events in a history. In conjunction with the FT8 card  (Section 3.3.5.18), the F8 tally can be an anticoincidence pulse-height tally,  a neutron coincidence capture tally, or a residual nuclei production tally.

F8 tallies always tally both p and e.
### Method: CardDeck::insertF5Tally
Args: (tallyNum, pos, r, eList, mList, par).

Flux at a point or ring detector. Units: particles/cm2.
Tally 5 is only available for neutrons and photons.
The F5 tally needs a point and an radius of sphere of exclusion.
Actually, it can take a list of points and radii which show as separate objects.
in the tally. But this can be done with separate F5 tallies so ignoring for now.

The radius of the sphere of exclusion, +/-roi, should be about 1/8 to 1/2 mean.
free path for particles of average energy at the sphere and *ZERO* in a void.
The exclusion sphere must not encompass more than one material. MCNP6 cannot  verify this and the consequences may be wrong answers.
### Method: CardDeck::insertFIR5Tally
Args: (tallyNum, pos, normVec, sMin, sMax, sbins, tMin, tMax, tbins, eList, mList, par).

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
Args: (t, pos, normVec, sMin, sMax, sbins, tMin, tMax, tbins, eList, mList, par).

    
### Method: CardDeck::insertDebugTallyString
Args: (worldMacroNum).

Debug tally needs the worldMacroNum. (Works off surface, not cell).
This is a specific use of the F1 tally?
### Method: CardDeck::setParticlesList
Args: (p).

Set particles to transport in the MCNP simulation.
### Method: CardDeck::getModeString
Args: ().

MODE N - neutron transport only (default).
     N P - neutron and neutron-induced photon transport.
     P - photon transport only.
     E - electron transport only.
     P E - photon and electron transport.
     N P E - neutron, neutron-induced photon, and electron transport.        Note: Particles separated by space.
### Method: CardDeck::getImpString
Args: (imp).

Get importance strng based on the particles set in particle list.
Used while inserting cells.
IMP:p,e=1
### Method: CardDeck::insertPhysicsCard
Args: (nocoh, ides, nodop, cutn, cutp, cute).

This should have been named getPhysiscsCards since it returns mode and phy string.

MCNP5 5.1 Vol II Page 5-2 There are three possible physics treatments for photons. The first is the explicit p,e treatment (MODE P E) where photons generate electrons, which are tracked and generate photons (ad infinitum). This is the most accurate model but is costly in terms of run time.  
The second physics treatment is MODE P only that uses the default thick target bremsstrahlung (TTB) model where electrons are generated in the direction of the incident photon and are immediately annihilated after generating bremsstrahlung photons.  
The third photon physics treatment is a MODE P only with the TTB turned off  (IDES=1 on the PHYS card). Bremsstrahlung photons from electrons are completely ignored,  which is a poor approximation for a high Z material.

To turn off the production of secondary electrons generated by photons, the switch IDES can be set, either on the PHYS:P or on the PHYS:E card. If either of these cards sets IDES = 1, photons will NOT produce electrons, even if IDES = 0 is set on the other. In a photon-only problem, turning off secondary electrons causes the thick-target bremsstrahlung model to be bypassed. This option should be exercised only with great care because it alters the physics of the electron-photon cascade and will give erroneously low photon results when bremsstrahlung and electron transport are significant.

PHYS:p  emcpf  ides  nocoh  ispn  nodop Default: 100    0      0     0     0   emcpf- Upper energy limit for detailed photon physics treatment (default 100 MeV)   ides- default 0 Bremms is on. Don't set to 1   nocoh- Coherent/Thomson scattering (default 0/on) Notice the no in nocoh   ispn-  photon nuclear particle production (default 0/off)   nodop- photon doppler energy broadening (deafult 0/on) Notice the no in nodop          Doppler Energy Broadening defaults by version: MCNPX is off, MCNP5 is on, MCNP6 is on.

PHYS:e EMAX IDES IPHOT IBAD ISTRG BNUM XNUM RNOK ENUM NUMB Defaults: EMAX = 100 MeV;            IDES, IPHOT, IBAD, ISTRG = 0;           BNUM, XNUM, RNOK, ENUM = 1.,            NUMB = 0   emax - upper limit for electron energy in MeV   IDES = 0/1 = photons will/will not produce electrons.
  IPHOT = 0/1 = electrons will/will not produce photons.
   10 options
### Method: CardDeck::insertOutputControlCards
Args: (nps, debugN, notrn).

1) Tally Prnt Increment.
2) Dump to RUNTPE increment.  3) Create MCTAL file.
4) Max No. of Dumps on RUNTPE.  5) Controls Rendezvous points.
   Random number generator does not repeat when period is exceeded, but longer period generation (gen2,3) are preferred. Page 3-328 (6.1) 
??? Use PRDMP to enble MCTAL output and RUNTPE size write intermittent dumps? vs DBCN
### Method: CardDeck::insertIntoCellSection
Args: (s).

Use this function to insert manually generated/unsupported cards into the  cell section.
### Method: CardDeck::insertIntoMacroSection
Args: (s).

Use this function to insert manually generated/unsupported cards into the macros/surfaces section.
### Method: CardDeck::insertIntoMaterialSection
Args: (s).

Use this function to insert manually generated/unsupported cards into the data section.
### Method: CardDeck::assembleDeck
Args: (titleCard, macroString, cellString, trString, matString, srcString, tallyString, physicsString, outputControlString).

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
Args: (modelFolder, modelFilename, deckStr).

Save all the cards to an MCNP input deck (file).
-----------------
## Function: findLongestLineLen
Args: (multilineString).

Find longest line in a multi line string.
Ignore $ comments at the end of a line to determine line length.
-----------------
## Function: toMCNP80String
Args: (multilineString).

Convert a given multi line string to MCNP compatible strings with no lines longer than 80 characters.
-----------------
## Function: testToMCNP80String
Args: ().
