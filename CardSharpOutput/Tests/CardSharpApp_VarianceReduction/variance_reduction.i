Generated using CardSharp:Jezebel reactor
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c Block 1, Rect PPiped macrobody:1, xMin:-3.00, xMax:3.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00, matName:Aluminum, density:0.0000, xShift:0.00, yShift:-10.00, zShift:0.00
c ---Block 1----
1 6 -2.7000  -1  *TRCL (0.000000 -10.000000 0.000000)  IMP:p=1
c Block 2a, Rect PPiped macrobody:2, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00, matName:Aluminum, density:0.0000, xShift:-2.00, yShift:10.00, zShift:0.00
c ---Block 2a----
2 6 -2.7000  -2  *TRCL (-2.000000 10.000000 0.000000)  imp:p=1
c Block 2b, Rect PPiped macrobody:3, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00, matName:Aluminum, density:0.0000, xShift:0.00, yShift:10.00, zShift:0.00
c ---Block 2b----
3 6 -2.7000  -3  *TRCL (0.000000 10.000000 0.000000)  imp:p=5
c Block 2c, Rect PPiped macrobody:4, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00, matName:Aluminum, density:0.0000, xShift:2.00, yShift:10.00, zShift:0.00
c ---Block 2c----
4 6 -2.7000  -4  *TRCL (2.000000 10.000000 0.000000)  imp:p=25
c Source, macrobody:5, xPos:-40.00, yPos:0.00, zPos:0.00, radius:1.00, matNum:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Source----
5 0        -5    IMP:p=1
c Det 1, macrobody:6, xPos:40.00, yPos:-20.00, zPos:0.00, radius:1.00, matNum:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Det 1----
6 0        -6    IMP:p=1
c Det 2, macrobody:7, xPos:40.00, yPos:20.00, zPos:0.00, radius:1.00, matNum:Void, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Det 2----
7 0        -7    IMP:p=1
c World cells---Void inside------------------
c ---World----
8 0        -100  #1  #2  #3  #4  #5  #6  #7    IMP:p=1
c ---Graveyard----
9 0        100    IMP:p=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---Block 1, macrobody:1, trNum:, xMin:-3.00, xMax:3.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00
1  RPP -3.000000 3.000000   -10.000000 10.000000    -10.000000 10.000000
c ---Block 2a, macrobody:2, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00
2  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000
c ---Block 2b, macrobody:3, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00
3  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000
c ---Block 2c, macrobody:4, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.00, zMin:-10.00, zMax:10.00
4  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000
c ---Source, sphere macrobody:5, trNum:, xPos:-40.00, yPos:0.00, zPos:0.00, radius:1.00
5  SPH -40.0000 0.0000 0.0000  1.0000
c ---Det 1, sphere macrobody:6, trNum:, xPos:40.00, yPos:-20.00, zPos:0.00, radius:1.00
6  SPH 40.0000 -20.0000 0.0000  1.0000
c ---Det 2, sphere macrobody:7, trNum:, xPos:40.00, yPos:20.00, zPos:0.00, radius:1.00
7  SPH 40.0000 20.0000 0.0000  1.0000
c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:60.00
100  SPH 0.0000 0.0000 0.0000  60.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['Lead', 'SteelMediumCarbon1045', 'Aluminum']--
c      Lead
c      AKA: None
c      rho: 11.350000 g/cc
m189       82204  -0.013782 $ Pb204
       82206  -0.239575 $ Pb206
       82207  -0.220761 $ Pb207
       82208  -0.525964 $ Pb208
c      Steel, Medium Carbon (1045)
c      AKA: None
c      rho: 7.872000 g/cc
m328       6012  -0.004942 $ C12
       6013  -0.000058 $ C13
       25055  -0.009000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000474 $ S32
       16033  -0.000004 $ S33
       16034  -0.000023 $ S34
       26054  -0.055615 $ Fe54
       26056  -0.905324 $ Fe56
       26057  -0.021282 $ Fe57
       26058  -0.002882 $ Fe58
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m6       13027  -1.000000 $ Al27
c -----------------Source---------------------
c ----- Source: point source with biasing tabulated photon energy distribution
SDEF POS=-40.00 0.00 0.00 VEC=1.00 0.00 0.00 ERG=d1 DIR=d2 PAR=p  $ energy distribution
SI2   -1.00   0.707106781186547573   1.0     $ for DIR, histogram of cosine bin, two bins, coneHalfAngleDeg=45.00
SP2    0.     0.     1.0      $ Source *probability* for each bin, integrated
SI1 L 5.0000E-01 $ L for discrete or A for continuous, followed by the n energies (MeV)
SP1    1.0000E+00 $ relative frequency of each energy
c -----------------Tally----------------------
c -- F5 Tally --
F15:p    $ Point detectors
     40.00 -20.00 0.00 0.00 $ x y z r
c Energy bins
E15  0.0000000E+00 2.6315789E-02 5.2631579E-02 7.8947368E-02 1.0526316E-01 &
         1.3157895E-01 1.5789474E-01 1.8421053E-01 2.1052632E-01 &
         2.3684211E-01 2.6315789E-01 2.8947368E-01 3.1578947E-01 &
         3.4210526E-01 3.6842105E-01 3.9473684E-01 4.2105263E-01 &
         4.4736842E-01 4.7368421E-01 5.0000000E-01
c -- F5 Tally --
F25:p    $ Point detectors
     40.00 20.00 0.00 0.00 $ x y z r
c Energy bins
E25  0.0000000E+00 2.6315789E-02 5.2631579E-02 7.8947368E-02 1.0526316E-01 &
         1.3157895E-01 1.5789474E-01 1.8421053E-01 2.1052632E-01 &
         2.3684211E-01 2.6315789E-01 2.8947368E-01 3.1578947E-01 &
         3.4210526E-01 3.6842105E-01 3.9473684E-01 4.2105263E-01 &
         4.4736842E-01 4.7368421E-01 5.0000000E-01
c -----------------Physics -------------------
c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
MODE p   $ particles to transport, default n (anti particles included)
CUT:n  j 0.0
CUT:p  j 0.001
CUT:e  j 0.001
PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 0 0 0 0 1 1 1 1 0
c -----------------Output Control-------------                     
c --MCTAL nps --
c NOTRN                $ uncomment then you get ray tracing only, not scatter
c PRDMP NDP NDM MCT NDMP DMMP                                                   
PRDMP   j   1000000    1    1    j  $ write MCTAL file                                 
PRINT
c PRINT 40 $ For material normalization check, see .io file
c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommended!!!
c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.
c DBCN j 1000000 $ nj is jump over n options, debug print and multitasking are incompatible
NPS 10000000     $ stop after number of source particles have been run                 
c CTME 2.0 $ stop run after number of minutes
c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir)
