Generated using CardSharp:Title card: Test 5
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c Cyl, macrobody:1, cellNum:0, baseX:0.00, baseY:0.00, baseZ:-3.00, axisX:0.00, axisY:0.00, axisZ:6.00, radius:0.50, matName:Pb, density:0.00, xShift:0.00, yShift:0.00, zShift:0.00
c ---Cyl----
1 82 -11.3500  -1    IMP:p,e=1 U=1
c ---hex_cell----
2 97 -0.0012  -2  -3  -4  -5  -6  -7  1    IMP:p,e=1 U=1
c ---hex_lattice----
3 0        -2  -3  -4  -5  -6  -7   LAT=2 IMP:p,e=1 U=2 FILL= -2:2 -2:2 0:0
      1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
c ---hex_lattice_to_Uni----
4 0        -8  -9  -10  -11  -12  -13  -14  15    IMP:p,e=1  FILL=2
c World cells---Air inside------------------
c ---World----
5 97 -0.0012  -16  #4    IMP:p,e=1
c ---Graveyard----
6 0        16    IMP:p,e=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---Cyl, cylinder macrobody:1, trNum:, baseX:0.00, baseY:0.00, baseZ:-3.00, axisX:0.00, axisY:0.00, axisZ:6.00, radius:0.50
1  RCC 0.0000 0.0000 -3.0000  0.0000 0.0000 6.0000  0.5000
c ---HexPlane1, surface:2, trNum:1, plane Y D:0.87
2 1 PY 0.8660
c ---HexPlane2, surface:3, trNum:2, plane Y D:0.87
3 2 PY 0.8660
c ---HexPlane3, surface:4, trNum:3, plane Y D:0.87
4 3 PY 0.8660
c ---HexPlane4, surface:5, trNum:4, plane Y D:0.87
5 4 PY 0.8660
c ---HexPlane5, surface:6, trNum:5, plane Y D:0.87
6 5 PY 0.8660
c ---HexPlane6, surface:7, trNum:6, plane Y D:0.87
7 6 PY 0.8660
c ---HexPlane1, surface:8, trNum:7, plane Y D:3.46
8 7 PY 3.4640
c ---HexPlane2, surface:9, trNum:8, plane Y D:3.46
9 8 PY 3.4640
c ---HexPlane3, surface:10, trNum:9, plane Y D:3.46
10 9 PY 3.4640
c ---HexPlane4, surface:11, trNum:10, plane Y D:3.46
11 10 PY 3.4640
c ---HexPlane5, surface:12, trNum:11, plane Y D:3.46
12 11 PY 3.4640
c ---HexPlane6, surface:13, trNum:12, plane Y D:3.46
13 12 PY 3.4640
c ---PlusZ, surface:14, trNum:, plane Z D:4.00
14  PZ 4.0000
c ---MinusZ, surface:15, trNum:, plane Z D:-4.00
15  PZ -4.0000
c ---Universe, sphere macrobody:16, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:200.00
16  SPH 0.0000 0.0000 0.0000  200.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c ---Hex1, shift: 0.00 0.00 0.00
*TR1 0.000 0.000 0.000  0.000 90.000 90.000   90.000 0.000 90.000   90.000 &
         90.000 0.000
c ---Hex2, shift: 0.00 0.00 0.00
*TR2 0.000 0.000 0.000  180.000 90.000 90.000   90.000 180.000 90.000   &
         90.000 90.000 0.000
c ---Hex3, shift: 0.00 0.00 0.00
*TR3 0.000 0.000 0.000  60.000 150.000 90.000   30.000 60.000 90.000   &
         90.000 90.000 0.000
c ---Hex4, shift: 0.00 0.00 0.00
*TR4 0.000 0.000 0.000  120.000 30.000 90.000   150.000 120.000 90.000   &
         90.000 90.000 0.000
c ---Hex5, shift: 0.00 0.00 0.00
*TR5 0.000 0.000 0.000  120.000 150.000 90.000   30.000 120.000 90.000   &
         90.000 90.000 0.000
c ---Hex6, shift: 0.00 0.00 0.00
*TR6 0.000 0.000 0.000  60.000 30.000 90.000   150.000 60.000 90.000   &
         90.000 90.000 0.000
c ---Hex1, shift: 0.00 0.00 0.00
*TR7 0.000 0.000 0.000  0.000 90.000 90.000   90.000 0.000 90.000   90.000 &
         90.000 0.000
c ---Hex2, shift: 0.00 0.00 0.00
*TR8 0.000 0.000 0.000  180.000 90.000 90.000   90.000 180.000 90.000   &
         90.000 90.000 0.000
c ---Hex3, shift: 0.00 0.00 0.00
*TR9 0.000 0.000 0.000  60.000 150.000 90.000   30.000 60.000 90.000   &
         90.000 90.000 0.000
c ---Hex4, shift: 0.00 0.00 0.00
*TR10 0.000 0.000 0.000  120.000 30.000 90.000   150.000 120.000 90.000   &
         90.000 90.000 0.000
c ---Hex5, shift: 0.00 0.00 0.00
*TR11 0.000 0.000 0.000  120.000 150.000 90.000   30.000 120.000 90.000   &
         90.000 90.000 0.000
c ---Hex6, shift: 0.00 0.00 0.00
*TR12 0.000 0.000 0.000  60.000 30.000 90.000   150.000 60.000 90.000   &
         90.000 90.000 0.000
c -----------------Materials------------------
c --['Al', 'Cu', 'Pb', 'W', 'Air', 'SS304', 'Poly']--
m13   13027.      1      $ Al  usually 2.7  g/cc
m29   029063.80c -0.692    $ Cu usually 8.941  g/cc
      029065.80c -0.308
m82   82208.      1      $ Pb usually 11.4  g/cc
m74   74182.70c   26.5    $ W (Tungsten) usually 19.3 g/cc
      74183.70c   14.31
      74184.70c   30.64
      74186.70c   28.43
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m97    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
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
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
