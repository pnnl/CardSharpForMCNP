Generated using CardSharp:Title card: Test 2
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c sphere1, macrobody:1, xPos:0.00, yPos:0.00, zPos:0.00, radius:1.00, matNum:Air, density:0.00, xShift:0.00, yShift:0.00, zShift:0.00
c ---sphere1----
1 97 -0.0012  -1    IMP:p,e=1
c ---sphere minus plane1/plane2----
2 13 1.0000  -1  -2  3  *TRCL (0.000000 4.000000 0.000000)  IMP:p,e=1
c Sphere Shell, macrobody:4, macrobody:5, cellNum:0,    posX:0.00, posY:0.00, posZ:0.00, radius1:1.00, radius2:0.80,    matName:Pb, density:0.00, xShift:0.00, yShift:2.00, zShift:0.00
c ---Sphere Shell----
3 82 -11.3500  -4  5  *TRCL (0.000000 2.000000 0.000000)  IMP:p,e=1
c Box, Rect PPiped macrobody:6, cellNum:0, xMin:-1.00, xMax:1.00, yMin:-1.00, yMax:1.00, zMin:-0.50, zMax:0.50, matName:Poly, density:0.00, xShift:3.00, yShift:0.00, zShift:0.00
c ---Box----
4 84 -0.9300  -6  *TRCL (3.000000 0.000000 0.000000)  IMP:p,e=1
c Box shell, macrobody1:7, macrobody2:8, cellNum:0, innerXWidth:1.50, outerXWidth:2.00, innerYWidth:1.50, outerYWidth:2.00, innerZWidth:0.50, outerZWidth:1.00, xShift:3.00, yShift:3.00, zShift:0.00, matName:W, density:0.00
c ---Box shell----
5 74 -19.3000  -7  8  *TRCL (3.000000 3.000000 0.000000)  IMP:p,e=1
c Cylinder, macrobody:9, cellNum:0, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:1.00, matName:Cu, density:0.00, xShift:6.00, yShift:0.00, zShift:0.00
c ---Cylinder----
6 29 -8.9600  -9  *TRCL (6.000000 0.000000 0.000000)  IMP:p,e=1
c Cyl Shell, macrobody1:10, macrobody2:11, cellNum:0,    baseX1:0.00, baseY1:0.00, baseZ1:0.00, axisX1:0.00, axisY1:2.00, axisZ1:0.00, radius1:1.00,    baseX2:0.00, baseY2:0.00, baseZ2:0.00, axisX2:0.00, axisY2:2.00, axisZ2:0.00, radius2:0.80,    matName:Pb, density:0.00, xShift:6.00, yShift:3.00, zShift:0.00
c ---Cyl Shell----
7 82 -11.3500  -10  11  *TRCL (6.000000 3.000000 0.000000)  IMP:p,e=1
c Cone, macrobody:12, cellNum:0, baseX:0.00, baseY:0.00, baseZ:0.00, heightX:0.00, heightY:1.00, heightZ:0.00, radius1:1.00, radius2:0.20, matName:Void, density:0.00
c ---Cone----
8 0        -12  *TRCL (9.000000 0.000000 0.000000)  IMP:p,e=1
c Wedge, macrobody:13, cellNum:0, vertexX:0.00, vertexY:0.00, vertexZ:0.00, base1X:1.00, base1Y:0.00, base1Z:0.00, base2X:0.00, base2Y:2.00, base2Z:0.00, heightX:0.00, heightY:0.00, heightZ:3.00, matName:Poly, density:0.00
c ---Wedge----
9 84 -0.9300  -13  *TRCL (11.000000 0.000000 0.000000)  IMP:p,e=1
c myRHPShell, macrobody1:14, macrobody2:15, cellNum:0,    base1:0.00,0.00,-2.00, axis1:0.00,0.00,4.00, r1:0.00,1.00,0.00,    base2:0.00,0.00,0.00, axis2:0.00,0.00,4.00, r2:0.00,0.90,0.00,    matName:Poly, density:0.00, shift:9.00,3.00,0.00
c ---myRHPShell----
10 84 -0.9300  -14  15  *TRCL (9.000000 3.000000 0.000000)  IMP:p,e=1
c World cells---Air inside------------------
c ---World----
11 97 -0.0012  -16  #1  #2  #3  #4  #5  #6  #7  #8  #9  #10    IMP:p,e=1
c ---Graveyard----
12 0        16    IMP:p,e=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---sphere1, sphere macrobody:1, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:1.00
1  SPH 0.0000 0.0000 0.0000  1.0000
c ---plane1, surface:2, trNum:, plane X D:0.70
2  PX 0.7000
c ---plane2, surface:3, trNum:, plane X D:-0.70
3  PX -0.7000
c ---Sphere Shell, sphere macrobody:4, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:1.00
4  SPH 0.0000 0.0000 0.0000  1.0000
c ---Sphere Shell, sphere macrobody:5, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:0.80
5  SPH 0.0000 0.0000 0.0000  0.8000
c ---Box, macrobody:6, trNum:, xMin:-1.00, xMax:1.00, yMin:-1.00, yMax:1.00, zMin:-0.50, zMax:0.50
6  RPP -1.000000 1.000000   -1.000000 1.000000    -0.500000 0.500000
c ---Box shell, macrobody:7, trNum:, xMin:-1.00, xMax:1.00, yMin:-1.00, yMax:1.00, zMin:-0.50, zMax:0.50
7  RPP -1.000000 1.000000   -1.000000 1.000000    -0.500000 0.500000
c ---Box shell, macrobody:8, trNum:, xMin:-0.75, xMax:0.75, yMin:-0.75, yMax:0.75, zMin:-0.25, zMax:0.25
8  RPP -0.750000 0.750000   -0.750000 0.750000    -0.250000 0.250000
c ---Cylinder, cylinder macrobody:9, trNum:, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:1.00
9  RCC 0.0000 0.0000 0.0000  0.0000 2.0000 0.0000  1.0000
c ---Cyl Shell, cylinder macrobody:10, trNum:, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:1.00
10  RCC 0.0000 0.0000 0.0000  0.0000 2.0000 0.0000  1.0000
c ---Cyl Shell, cylinder macrobody:11, trNum:, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:0.80
11  RCC 0.0000 0.0000 0.0000  0.0000 2.0000 0.0000  0.8000
c ---Cone, cone macrobody:12, trNum:, baseX:0.00, bseY:0.00, baseZ:0.00, heightX:0.00, heightY:1.00, heightZ:0.00, radius1:1.00, radius2:1.00
12  TRC 0.0000 0.0000 0.0000   0.0000 1.0000 0.0000  1.0000 0.2000
c ---Wedge, wedge macrobody:13, trNum:, vertexX:0.00, vertexY:0.00, vertexZ:0.00, base1X:1.00, base1Y:0.00, base1Z:0.00, base2X:0.00, base2Y:2.00, base2Z:0.00, heightX:0.00, heightY:0.00, heightZ:3.00,
13  WED 0.0000 0.0000 0.0000   1.0000 0.0000 0.0000   0.0000 2.0000 0.0000 &
          0.0000 0.0000 3.0000
c ---myRHPShell, Rhp/Hex macrobody:14, trNum:, base:0.00,0.00,-2.00, axis:0.00,:0.00,4.00, radius:0.00,1.00,0.00
14  RHP 0.0000 0.0000 -2.0000  0.0000 0.0000 4.0000  0.0000 1.0000 0.0000
c ---myRHPShell, Rhp/Hex macrobody:15, trNum:, base:0.00,0.00,0.00, axis:0.00,:0.00,4.00, radius:0.00,0.90,0.00
15  RHP 0.0000 0.0000 0.0000  0.0000 0.0000 4.0000  0.0000 0.9000 0.0000
c ---Universe, sphere macrobody:16, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:100.00
16  SPH 0.0000 0.0000 0.0000  100.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['dummy1', 'C', 'Al', 'Cu', 'W', 'Pb', 'Air', 'CarbonSteel', 'SS304', 'Poly', 'LaBr', 'Teflon', 'MuMetal', 'UF6Gas', 'UOFDep', 'CZT', 'FR4PCB', 'Polycarb', 'ZrO2', 'Acrylic', 'NaI', 'EarthsCrust', 'Concrete', 'DryWall']--
m101   1  1
m6    6012.       1      $ C  density depends on form
m13   13027.      1      $ Al  usually 2.7  g/cc
m29   029063.80c -0.692    $ Cu usually 8.941  g/cc
      029065.80c -0.308
m74   74182.70c   26.5    $ W (Tungsten) usually 19.3 g/cc
      74183.70c   14.31
      74184.70c   30.64
      74186.70c   28.43
m82   82208.      1      $ Pb usually 11.4  g/cc
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m97    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
c     Carbon steel
c     rho: 7.82 gm/cc
m99    6000   -0.005    $ C
       26000   -0.995    $ Fe
c    SS304L
c    8.0 g/cc
c    ref:  Metals Handbook, p 15.2
m83       6000 -0.0003  $  C-nat
          7014 -0.001   $  N-14 (nat)
         14000 -0.01    $  Si-nat
         15031 -0.00045 $  P-nat
         16000 -0.0003  $  S-nat
         24000 -0.19    $  Cr-nat
         25055 -0.02    $  Mn-55 (nat)
         28000 -0.10    $  Ni-nat
         26000 -0.67795 $  Fe-nat (remainder)
c     Polyethylene (C2H4)n by atomic percent... Need to confirm. 
c     rho:  0.93 g/cc
m84    6000   0.333338     $  C
       1001   0.666662     $  H
c   LaBr detector
c   5.98 g/cc
m85  35079 -0.316012
     35081 -0.315192
     58136 -0.000033
     58138 -0.000045
     58140 -0.016151
     58142 -0.002059
     57138 -0.000309
     57139 -0.350195
c  Teflon (Polytetrafluoroethylene) (C2F4)n
c  2.25 g/cc
m86  6000   0.333339  $ C   
     9000   0.666661  $ F
c MuMetal
c 8.70 g/cc
m87    24000  -0.016524  $ Cr
       26000  -0.144512  $ Fe
       28000  -0.787484  $ Ni
       29000  -0.051480  $ Cu
m88   92238  1.0        $ U, UF6 gas, rho = 9.633E-4 g/cc, all U-238 for simplicity w/ gamma transport
     9019   6.0        $ F
c                           
m89   92238  1.0        $ U, Deposit UO2F2, 3.0 g/cc, all U-238 for simplicity w/ gamma transport
     8016   2.0        $ O
     9019   2.0        $ F
c                           
m90   48106  1.0        $ Cd, CZT, rho = 5.8 g/cc
     30064  1.0        $ Zn
     52130  1.0        $ Te
c                            
m91   1001  -0.010      $ FR4 circuit board, rho = 2.635 g/cc
     5010  -0.0053
     5011  -0.0147
     6000  -0.04
     8016  -0.39
     13027 -0.01
     14028 -0.23
     29063 -0.2
     35079 -0.1
c Polycarbonate, C15 H16 O2??? rho = 1.2 g/cc
m92   1001  -0.055491   $ H, 
      6012  -0.755751   $ C
      8016  -0.188758   $ O
c ZrO2, rho = 5.68 g/cc ... More isotopes of Zr should be used
m98   40000   0.333338   $ Zr 1/3
       8000   0.666662   $ O  2/3
c Acrylic C5O2H8 ... rho = 1.18 g/cc
m93   1001   0.53333    $ H, 8/15 
      6012   0.33333    $ C, 5/15
      8016   0.13333    $ O, 2/15
c     Sodium Iodide crystal, NaI 
c     rho = 3.67 g/cc
m94   11000   -0.1534   $ Na
      53000   -0.8466   $ I
c      Average earth's crust
c      40% porosity, 2.5% moisture (wt.)
c      rho: 1.631 g/cc  
m100    8016  -0.47655      $ O
       11023  -0.02730     $ Na    
       12000  -0.02048     $ Mg
       13027  -0.07898     $ Al
       14000  -0.27008     $ Si
       15031  -0.00195     $ P
       19000  -0.02535     $ K
       20000  -0.03510     $ Ca
       22000  -0.01170     $ Ti
       25055  -0.00098     $ Mn
       26000  -0.04875     $ Fe
        1001  -0.00280     $ H
c       ANSI/ANS 6.6.1-1987 concrete
c        Numbers from NIST LSR7 input file
c       rho: 2.4 g/cc
m95     1001.60c -0.0056  $
         8016.60c -0.4996 $
        11023.60c -0.0171 $
        12000.60c -0.0024 $
        13027.60c -0.0458 $
        14000.60c -0.315  $
        19000.60c -0.0191 $
        20000.60c -0.0831 $
        26056.60c -0.0123 $
c       Gypsum (dry-wall)  Materials Compendium
c       rho: 2.32 g/cc
m96 	1001 -0.023411
     	1002 -0.000005
	    8016 -0.556044
	    8017 -0.000225
	    8018 -0.001286
	   16000 -0.186251
	   20000 -0.232776
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
