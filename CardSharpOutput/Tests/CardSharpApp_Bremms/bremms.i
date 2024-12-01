Generated using CardSharp:Bremms
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c source, macrobody:1, xPos:0.00, yPos:-5.00, zPos:0.00, radius:0.50, matNum:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---source----
1 0        -1    IMP:p,e=1
c Tx detector, macrobody:2, baseX:0.00, baseY:40.00, baseZ:0.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Tx detector----
2 0        -2    IMP:p,e=1
c Tx detector, macrobody:3, baseX:0.00, baseY:40.00, baseZ:5.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Tx detector----
3 0        -3    IMP:p,e=1
c Tx detector, macrobody:4, baseX:0.00, baseY:40.00, baseZ:10.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Tx detector----
4 0        -4    IMP:p,e=1
c Ref detector, macrobody:5, baseX:40.00, baseY:0.00, baseZ:0.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Ref detector----
5 0        -5    IMP:p,e=1
c Ref detector, macrobody:6, baseX:40.00, baseY:0.00, baseZ:5.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Ref detector----
6 0        -6    IMP:p,e=1
c Ref detector, macrobody:7, baseX:40.00, baseY:0.00, baseZ:10.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00, matName:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Ref detector----
7 0        -7    IMP:p,e=1
c Tungsten, Rect PPiped macrobody:8, xMin:-0.01, xMax:0.01, yMin:-0.00, yMax:0.00, zMin:-0.01, zMax:0.01, matName:W, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Tungsten----
8 369 -19.3000  -8    IMP:p,e=1
c World cells---Void inside------------------
c ---World----
9 0        -100  #1  #2  #3  #4  #5  #6  #7  #8    IMP:p,e=1
c ---Graveyard----
10 0        100    IMP:p,e=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---source, sphere macrobody:1, trNum:, xPos:0.00, yPos:-5.00, zPos:0.00, radius:0.50
1  SPH 0.0000 -5.0000 0.0000  0.5000
c ---Tx detector, cylinder macrobody:2, trNum:, baseX:0.00, baseY:40.00, baseZ:0.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00
2  RCC 0.0000 40.0000 0.0000  0.0000 0.5000 0.0000  1.0000
c ---Tx detector, cylinder macrobody:3, trNum:, baseX:0.00, baseY:40.00, baseZ:5.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00
3  RCC 0.0000 40.0000 5.0000  0.0000 0.5000 0.0000  1.0000
c ---Tx detector, cylinder macrobody:4, trNum:, baseX:0.00, baseY:40.00, baseZ:10.00, axisX:0.00, axisY:0.50, axisZ:0.00, radius:1.00
4  RCC 0.0000 40.0000 10.0000  0.0000 0.5000 0.0000  1.0000
c ---Ref detector, cylinder macrobody:5, trNum:, baseX:40.00, baseY:0.00, baseZ:0.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00
5  RCC 40.0000 0.0000 0.0000  0.5000 0.0000 0.0000  1.0000
c ---Ref detector, cylinder macrobody:6, trNum:, baseX:40.00, baseY:0.00, baseZ:5.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00
6  RCC 40.0000 0.0000 5.0000  0.5000 0.0000 0.0000  1.0000
c ---Ref detector, cylinder macrobody:7, trNum:, baseX:40.00, baseY:0.00, baseZ:10.00, axisX:0.50, axisY:0.00, axisZ:0.00, radius:1.00
7  RCC 40.0000 0.0000 10.0000  0.5000 0.0000 0.0000  1.0000
c ---Tungsten, macrobody:8, trNum:, xMin:-0.01, xMax:0.01, yMin:-0.00, yMax:0.00, zMin:-0.01, zMax:0.01
8  RPP -0.005000 0.005000   -0.000200 0.000200    -0.005000 0.005000
c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:70.00
100  SPH 0.0000 0.0000 0.0000  70.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['W']--
c      Tungsten
c      AKA: None
c      rho: 19.300000 g/cc
m369       74180  -0.001175 $ W180
       74182  -0.262273 $ W182
       74183  -0.142407 $ W183
       74184  -0.306585 $ W184
       74186  -0.287570 $ W186
c -----------------Source---------------------
c ----- Source: point source with biasing tabulated photon energy distribution
SDEF POS=0.00 -5.00 0.00 VEC=0.00 1.00 0.00 ERG=d1 DIR=d2 PAR=e  $ energy distribution
SI2   -1.00   0.999999984769129102   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=0.01
SP2    0.     0.     1.0      $ Source *probability* for each bin, integrated
SI1 L 8.0000E-02 $ L for discrete or A for continuous, followed by the n energies (MeV)
SP1    1.0000E+00 $ relative frequency of each energy
c -----------------Tally----------------------
c -- F5 Tally --
F115:p    $ Point detectors
     0.00 40.00 0.00 1.00 $ x y z r
c Energy bins
E115  0  1E-5  0.001  160i  0.0800
c -- F5 Tally --
F125:p    $ Point detectors
     0.00 40.00 5.00 1.00 $ x y z r
c Energy bins
E125  0  1E-5  0.001  160i  0.0800
c -- F5 Tally --
F135:p    $ Point detectors
     0.00 40.00 10.00 1.00 $ x y z r
c Energy bins
E135  0  1E-5  0.001  160i  0.0800
c -- F5 Tally --
F215:p    $ Point detectors
     0.00 40.00 0.00 1.00 $ x y z r
c Energy bins
E215  0  1E-5  0.001  160i  0.0800
c -- F5 Tally --
F225:p    $ Point detectors
     0.00 40.00 5.00 1.00 $ x y z r
c Energy bins
E225  0  1E-5  0.001  160i  0.0800
c -- F5 Tally --
F235:p    $ Point detectors
     0.00 40.00 10.00 1.00 $ x y z r
c Energy bins
E235  0  1E-5  0.001  160i  0.0800
c -- F1 Tally --
F31:p         $ pulse height tally
     2.2   $ cell/surface String
c Energy bins
E31  0  1E-5  0.001  160i  0.0800
c -- F1 Tally --
F41:p         $ pulse height tally
     5.2   $ cell/surface String
c Energy bins
E41  0  1E-5  0.001  160i  0.0800
c -- Debug tally --
F1011:p 100              $ debug tally with universe surface to see if all particles come out
c -----------------Physics -------------------
c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
MODE p e   $ particles to transport, default n (anti particles included)
CUT:n  j 0.0
CUT:p  j 0.001
CUT:e  j 0.001
PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 0 0 0 0 1 1 1 1 0
c -----------------Output Control-------------                     
c --MCTAL nps --
c NOTRN                $ uncomment then you get ray tracing only, not scatter
c PRDMP NDP NDM MCT NDMP DMMP                                                   
PRDMP   j   10000    1    1    j  $ write MCTAL file                                 
PRINT
c PRINT 40 $ For material normalization check, see .io file
c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommended!!!
c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.
c DBCN j 10000 $ nj is jump over n options, debug print and multitasking are incompatible
NPS 100000     $ stop after number of source particles have been run                 
c CTME 2.0 $ stop run after number of minutes
c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir)
