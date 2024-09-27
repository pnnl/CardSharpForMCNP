Generated using CardSharp:Title card: Test 3
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c ---sphere uncut----
1 189 -11.3500  -1    IMP:p,e=1 U=1
c ---sphere cut by two planes and shifted----
2 189 -11.3500  -1  -2  3  *TRCL (7.000000 0.000000 0.000000)  IMP:p,e=1 U=1
c ---rpp----
3 412 -0.0012  -4  #1  #2    IMP:p,e=1 U=1
c ---rpp----
4 275 -0.9300  -5  *TRCL (0.000 5.000 0.000  0.000 90.000 90.000   90.000 &
         0.000 90.000   90.000 90.000 0.000)  IMP:p,e=1  FILL=1
c World cells---Air inside------------------
c ---World----
5 412 -0.0012  -6  #4    IMP:p,e=1
c ---Graveyard----
6 0        6    IMP:p,e=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---sphere, sphere macrobody:1, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:3.00
1  SPH 0.0000 0.0000 0.0000  3.0000
c ---plane1, surface:2, trNum:, plane X D:2.00
2  PX 2.0000
c ---plane2, surface:3, trNum:, plane X D:-2.00
3  PX -2.0000
c ---rpp, macrobody:4, trNum:, xMin:-14.00, xMax:14.00, yMin:-5.00, yMax:5.00, zMin:-6.00, zMax:6.00
4  RPP -14.000000 14.000000   -5.000000 5.000000    -6.000000 6.000000
c ---rpp, macrobody:5, trNum:, xMin:-13.00, xMax:13.00, yMin:-4.00, yMax:4.00, zMin:-5.00, zMax:5.00
5  RPP -13.000000 13.000000   -4.000000 4.000000    -5.000000 5.000000
c ---Universe, sphere macrobody:6, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:100.00
6  SPH 0.0000 0.0000 0.0000  100.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
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
