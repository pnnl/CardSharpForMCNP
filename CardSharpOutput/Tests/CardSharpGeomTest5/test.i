Generated using CardSharp:Title card: Test 5
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c Cyl, macrobody:1, cellNum:0, baseX:0.00, baseY:0.00, baseZ:-3.00, axisX:0.00, axisY:0.00, axisZ:6.00, radius:0.50, matName:Lead, density:0.00, xShift:0.00, yShift:0.00, zShift:0.00
c ---Cyl----
1 189 -11.3500  -1    IMP:p,e=1 U=1
c ---hex_cell----
2 412 -0.0012  -2  -3  -4  -5  -6  -7  1    IMP:p,e=1 U=1
c ---hex_lattice----
3 0        -2  -3  -4  -5  -6  -7   LAT=2 IMP:p,e=1 U=2 FILL= -2:2 -2:2 0:0
      1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
c ---hex_lattice_to_Uni----
4 0        -8  -9  -10  -11  -12  -13  -14  15    IMP:p,e=1  FILL=2
c World cells---Air inside------------------
c ---World----
5 412 -0.0012  -16  #4    IMP:p,e=1
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
c --['Aluminum', 'Copper', 'Lead', 'Tungsten', 'Air', 'SS304', 'Poly']--
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m6       13027  -1.000000 $ Al27
c      Copper
c      AKA: None
c      rho: 8.960000 g/cc
m112       29063  -0.684792 $ Cu63
       29065  -0.315208 $ Cu65
c      Lead
c      AKA: None
c      rho: 11.350000 g/cc
m189       82204  -0.013782 $ Pb204
       82206  -0.239575 $ Pb206
       82207  -0.220761 $ Pb207
       82208  -0.525964 $ Pb208
c      Tungsten
c      AKA: None
c      rho: 19.300000 g/cc
m369       74180  -0.001175 $ W180
       74182  -0.262273 $ W182
       74183  -0.142407 $ W183
       74184  -0.306585 $ W184
       74186  -0.287570 $ W186
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m412    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
c      Steel, Stainless 304
c      AKA: None
c      rho: 8.030000 g/cc
m331       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007930 $ Cr50
       24052  -0.159029 $ Cr52
       24053  -0.018380 $ Cr53
       24054  -0.004661 $ Cr54
       28058  -0.063838 $ Ni58
       28060  -0.025437 $ Ni60
       28061  -0.001124 $ Ni61
       28062  -0.003643 $ Ni62
       28064  -0.000958 $ Ni64
       26054  -0.038585 $ Fe54
       26056  -0.628103 $ Fe56
       26057  -0.014765 $ Fe57
       26058  -0.001999 $ Fe58
c      Polyethylene, Non-borated
c      AKA: None
c      rho: 0.930000 g/cc
m275       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
