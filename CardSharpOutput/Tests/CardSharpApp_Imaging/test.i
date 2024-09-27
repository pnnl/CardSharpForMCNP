Generated using CardSharp:Imaging App
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c source, macrobody:1, xPos:-10.00, yPos:0.00, zPos:0.00, radius:0.40, matNum:Void, density:0.00, xShift:0.00, yShift:0.00, zShift:0.00
c ---source----
1 0        -1    IMP:p=1
c detector, Rect PPiped macrobody:2, cellNum:0, xMin:-0.20, xMax:0.20, yMin:-3.50, yMax:3.50, zMin:-3.50, zMax:3.50, matName:Void, density:0.00, xShift:10.00, yShift:0.00, zShift:0.00
c ---detector----
2 0        -2  *TRCL (10.000000 0.000000 0.000000)  IMP:p=1
c cone, macrobody:3, cellNum:0, baseX:0.00, baseY:0.00, baseZ:0.00, heightX:0.00, heightY:0.00, heightZ:0.80, radius1:0.60, radius2:0.10, matName:Aluminum, density:0.00
c ---cone----
3 6 -2.7000  -3    IMP:p=1
c World cells---Void inside------------------
c ---World----
4 0        -4  #1  #2  #3    IMP:p=1
c ---Graveyard----
5 0        4    IMP:p=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---source, sphere macrobody:1, trNum:, xPos:-10.00, yPos:0.00, zPos:0.00, radius:0.40
1  SPH -10.0000 0.0000 0.0000  0.4000
c ---detector, macrobody:2, trNum:, xMin:-0.20, xMax:0.20, yMin:-3.50, yMax:3.50, zMin:-3.50, zMax:3.50
2  RPP -0.200000 0.200000   -3.500000 3.500000    -3.500000 3.500000
c ---cone, cone macrobody:3, trNum:, baseX:0.00, bseY:0.00, baseZ:0.00, heightX:0.00, heightY:0.00, heightZ:0.80, radius1:0.60, radius2:0.60
3  TRC 0.0000 0.0000 0.0000   0.0000 0.0000 0.8000  0.6000 0.1000
c ---Universe, sphere macrobody:4, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:150.00
4  SPH 0.0000 0.0000 0.0000  150.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['Aluminum', 'Air']--
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m6       13027  -1.000000 $ Al27
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m412    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
c -----------------Source---------------------
c ----- Source: Disk, tabulated photon energy distribution, disk source
SDEF PAR=p POS=-10.00 0.00 0.00 RAD=d1 VEC=1.00 0.00 0.00 DIR=d3 ERG=d4  &
         CEL=1 EFF=.0001
si1    0   0.2000       $ Source information d1 RAD source radius wrt AXS (.05 is 1 mm dia spot)
sp1   -21  1          $ Source Prob: sampling 0 is constant for line source, area: 1, volume: 2 (-21 is power law, r, r^2)
SI3   -1.00   0.996194698091745545   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=5.00
SP3    0.     0.998097349045872773   0.001902650954127227   $ fraction solid angle for each bin
SB3    0.     0.     1.0      $ Source bias for each bin
SI4 L 1.0000E-01  2.0000E-01  3.0000E-01 $ L for discrete or A for continuous, followed by the n energies (MeV)
SP4    3.0000E-01  4.0000E-01  3.0000E-01 $ relative frequency of each energy
c -----------------Tally----------------------
c -- FluxImage Radiograph:photon (Array of point detectors)
c -- xyz position,       R0,   xyz out normal, f1/f2/f3
FC5 FIR 100  100
FIR5:p  10.000 0.000 0.000  0  11.000 0.000 0.000  0  0   0    $ 
FS5  -2.500 99i 2.500  $ S axis, smin, bins-1, smax numRows
C5   -2.500 99i 2.500  $ T axis, tmin, bins-1, tmax numCols                        
c -- F5 Tally --
F15:p    $ Point detectors
     -10.00 0.00 0.00 1.00 $ x y z r
c Energy bins
E15  1.0000E-02 1.2550E+00 2.5000E+00
c -- F1 Tally --
F11:p         $ pulse height tally
     1 ( 1 1)   $ cellString
c Energy bins
E11  0.0000E+00 1.0000E+00 2.0000E+00
c -- Debug tally --
F1011:p 4              $ debug tally with universe surface to see if all particles come out
c -----------------Physics -------------------
c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
MODE p   $ particles to transport, default n (anti particles included)
CUT:n  j 0.0
CUT:p  j 0.001
CUT:e  j 0.001
PHYS:p 100 0 0 0 0 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 0 0 0 0 1 1 1 1 0
c -----------------Output Control-------------                     
c --MCTAL nps --
  c NOTRN                $ uncomment then you get ray tracing only, not scatter
  c PRDMP NDP NDM MCT NDMP DMMP
  PRDMP   j   100    1    1    j  $ write MCTAL file                                 
  PRINT
  c PRINT 40 $ For material normalization check, see .io file
  c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommended!!!
  c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.
  c DBCN j 100 $ nj is jump over n options, debug print and multitasking are incompatible
  NPS 1000     $ stop after number of source particles have been run                 
  c CTME 2.0 $ stop run after number of minutes
  c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir)

