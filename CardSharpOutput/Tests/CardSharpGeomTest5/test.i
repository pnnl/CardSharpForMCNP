Generated using CardSharp:Title card: Test 5
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c Cyl, macrobody:1, baseX:0.00, baseY:0.00, baseZ:-0.50, axisX:0.00, axisY:0.00, axisZ:1.00, radius:0.30, matName:Lead, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---Cyl----
1 189 -11.3500  -1    IMP:n=1 U=1
c ---hex_cell----
2 412 -0.0012  -2.1  -2.2  -2.3  -2.4  -2.5  -2.6  -2.7  -2.8  1    &
         IMP:n=1 U=1
c ---hex_lattice----
3 0        -2.1  -2.2  -2.3  -2.4  -2.5  -2.6  -2.7  -2.8   LAT=2 IMP:n=1 &
         U=2 FILL= -1:1 -1:1 0:1
      1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1
c ---hex_lattice_to_Uni----
4 0        -3  -4  -5  -6  -7  -8  -9  10    IMP:n=1  FILL=2
c World cells---Air inside------------------
c ---World----
5 412 -0.0012  -11  #4    IMP:n=1
c ---Graveyard----
6 0        11    IMP:n=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---Cyl, cylinder macrobody:1, trNum:, baseX:0.00, baseY:0.00, baseZ:-0.50, axisX:0.00, axisY:0.00, axisZ:1.00, radius:0.30
1  RCC 0.0000 0.0000 -0.5000  0.0000 0.0000 1.0000  0.3000
c ---, Rhp/Hex macrobody:2, trNum:, base:0.00,0.00,-1.00, axis:0.00,:0.00,2.00, radius:0.00,0.87,0.00
2  RHP 0.0000 0.0000 -1.0000  0.0000 0.0000 2.0000  0.0000 0.8660 0.0000
c ---HexPlane1, surface:3, trNum:1, plane Y D:3.46
3 1 PY 3.4640
c ---HexPlane2, surface:4, trNum:2, plane Y D:3.46
4 2 PY 3.4640
c ---HexPlane3, surface:5, trNum:3, plane Y D:3.46
5 3 PY 3.4640
c ---HexPlane4, surface:6, trNum:4, plane Y D:3.46
6 4 PY 3.4640
c ---HexPlane5, surface:7, trNum:5, plane Y D:3.46
7 5 PY 3.4640
c ---HexPlane6, surface:8, trNum:6, plane Y D:3.46
8 6 PY 3.4640
c ---PlusZ, surface:9, trNum:, plane Z D:3.00
9  PZ 3.0000
c ---MinusZ, surface:10, trNum:, plane Z D:-3.00
10  PZ -3.0000
c ---Universe, sphere macrobody:11, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:200.00
11  SPH 0.0000 0.0000 0.0000  200.0000
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
