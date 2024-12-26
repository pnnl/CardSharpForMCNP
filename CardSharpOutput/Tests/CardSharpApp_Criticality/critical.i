Generated using CardSharp:Jezebel reactor
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c Plutonium Sphere, macrobody:1, xPos:0.00, yPos:0.00, zPos:0.00, radius:6.34, matNum:Pu, density:0.0403, xShift:0.00, yShift:0.00, zShift:0.00
c ---Plutonium Sphere----
1 269 0.0403  -1    IMP:n=1
c ---Reflector shell----
2 227 -8.9000  -2  1    IMP:n=1
c World cells---Void inside------------------
c ---World----
3 0        -100  #1  #2    IMP:n=1
c ---Graveyard----
4 0        100    IMP:n=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---Plutonium Sphere, sphere macrobody:1, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:6.34
1  SPH 0.0000 0.0000 0.0000  6.3400
c ---Reflector shell, sphere macrobody:2, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:6.35
2  SPH 0.0000 0.0000 0.0000  6.3527
c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:50.00
100  SPH 0.0000 0.0000 0.0000  50.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['Pu', 'Nickel', 'WaterLiquid', 'Beryllium']--
c      Plutonium, Fuel Grade
c      AKA: None
c      rho: 19.840000 g/cc
m269       94238  -0.001000 $ Pu238
       94239  -0.861000 $ Pu239
       94240  -0.120000 $ Pu240
       94241  -0.016000 $ Pu241
       94242  -0.002000 $ Pu242
c      Nickel
c      AKA: None
c      rho: 8.902000 g/cc
m227       28058  -0.671977 $ Ni58
       28060  -0.267758 $ Ni60
       28061  -0.011834 $ Ni61
       28062  -0.038349 $ Ni62
       28064  -0.010080 $ Ni64
c      Water, Liquid
c      AKA: None
c      rho: 0.997000 g/cc
m392       1001  -0.111872 $ H1
       1002  -0.000026 $ H2
       8016  -0.885692 $ O16
       8017  -0.000359 $ O17
       8018  -0.002048 $ O18
c      Beryllium
c      AKA: None
c      rho: 1.848000 g/cc
m25       4009  -1.000000 $ Be9
KCODE  1000  1.000000  25  125
KSRC   0.000000 0.000000 0.000000
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c --mode, cut, phys --
MPHYS  OFF $ needed only when particles other than N P E are run                      
MODE n   $ particles to transport, default n (anti particles included)
CUT:n  j 0.0
CUT:p  j 0.001
CUT:e  j 0.001
PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
PHYS:e 100 0 0 0 0 1 1 1 1 0
c -----------------Output Control-------------                     
c --MCTAL nps --
c NOTRN                $ uncomment then you get ray tracing only, not scatter
c PRDMP NDP NDM MCT NDMP DMMP                                                   
PRDMP   j   0    1    1    j  $ write MCTAL file                                 
PRINT
c PRINT 40 $ For material normalization check, see .io file
c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommended!!!
c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.
c DBCN j 0 $ nj is jump over n options, debug print and multitasking are incompatible
NPS 0     $ stop after number of source particles have been run                 
c CTME 2.0 $ stop run after number of minutes
c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir)
