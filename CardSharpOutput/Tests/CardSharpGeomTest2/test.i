Generated using CardSharp:Title card: Test 2
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c sphere1, macrobody:1, xPos:0.00, yPos:0.00, zPos:0.00, radius:1.00, matNum:Air, density:0.0000, xShift:0.00, yShift:0.00, zShift:0.00
c ---sphere1----
1 412 -0.0012  -1    IMP:p,e=1
c ---sphere minus plane1/plane2----
2 6 1.0000  -1  -2  3  *TRCL (0.000000 4.000000 0.000000)  IMP:p,e=1
c Sphere Shell, macrobody:4, macrobody:5,    posX:0.00, posY:0.00, posZ:0.00, radiusOuter:1.00, radiusInner:0.80,    matName:Lead, density:0.0000, xShift:0.00, yShift:2.00, zShift:1.00
c ---Sphere Shell----
3 189 -11.3500  -4  5  *TRCL (0.000000 2.000000 1.000000)  IMP:p,e=1
c Box shell, macrobody1:6, macrobody2:7, xMinOut:-1.000, xMaxOut:1.000, yMinOut:-1.000, yMaxOut:1.000, zMinOut:-1.000, zMaxOut:1.000, xMinIn:-0.900, xMaxIn:0.900, yMinIn:-0.900, yMaxIn:0.900, zMinIn:-0.800, zMaxIn:1.000,  xShift:3.00, yShift:3.00, zShift:0.00, matName:Tungsten, density:0.0000
c ---Box shell----
4 369 -19.3000  -6  7  *TRCL (3.000000 3.000000 0.000000)  IMP:p,e=1
c Cyl Shell, macrobody1:8, macrobody2:9,    baseX1:0.00, baseY1:0.00, baseZ1:0.00, axisX1:0.00, axisY1:2.00, axisZ1:0.00, radiusOuter:1.00,    baseX2:0.00, baseY2:0.00, baseZ2:0.00, axisX2:0.00, axisY2:2.00, axisZ2:0.00, radiusInner:0.80,    matName:Lead, density:0.0000, xShift:6.00, yShift:3.00, zShift:1.00
c ---Cyl Shell----
5 189 -11.3500  -8  9  *TRCL (6.000000 3.000000 1.000000)  IMP:p,e=1
c Cone, macrobody:10, baseX:0.00, baseY:0.00, baseZ:0.00, heightX:0.00, heightY:1.00, heightZ:0.00, radiusBase:1.00, radiusTop:0.20, matName:Lead, density:0.0000
c ---Cone----
6 189 -11.3500  -10  *TRCL (9.000000 0.000000 0.000000)  IMP:p,e=1
c Wedge, macrobody:11, vertexX:0.00, vertexY:0.00, vertexZ:0.00, base1X:1.00, base1Y:0.00, base1Z:0.00, base2X:0.00, base2Y:2.00, base2Z:0.00, heightX:0.00, heightY:0.00, heightZ:3.00, matName:Air, density:0.0000
c ---Wedge----
7 412 -0.0012  -11  *TRCL (10.500000 -1.000000 0.000000)  IMP:p,e=1
c myRHPShell, macrobody1:12, macrobody2:13,    base1:0.00,0.00,-2.00, axis1:0.00,0.00,4.00, r1:0.00,1.00,0.00,    base2:0.00,0.00,0.00, axis2:0.00,0.00,4.00, r2:0.00,0.90,0.00,    matName:Poly, density:0.0000, shift:9.00,3.00,0.00
c ---myRHPShell----
8 275 -0.9300  -12  13  *TRCL (9.000000 3.000000 0.000000)  IMP:p,e=1
c ---Torus 1----
9 112 -8.9600  -14    IMP:p,e=1
c ---Right Ellip Cyl 1----
10 275 -0.9300  -15    IMP:p,e=1
c ---Ellipsoid 1----
11 6 -2.7000  -16    IMP:p,e=1
c World cells---Air inside------------------
c ---World----
12 412 -0.0012  -17  #1  #2  #3  #4  #5  #6  #7  #8  #9  #10  #11    &
         IMP:p,e=1
c ---Graveyard----
13 0        17    IMP:p,e=0
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
c ---Box shell, macrobody:6, trNum:, xMin:-1.00, xMax:1.00, yMin:-1.00, yMax:1.00, zMin:-1.00, zMax:1.00
6  RPP -1.000000 1.000000   -1.000000 1.000000    -1.000000 1.000000
c ---Box shell, macrobody:7, trNum:, xMin:-0.90, xMax:0.90, yMin:-0.90, yMax:0.90, zMin:-0.80, zMax:1.00
7  RPP -0.900000 0.900000   -0.900000 0.900000    -0.800000 1.000000
c ---Cyl Shell, cylinder macrobody:8, trNum:, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:1.00
8  RCC 0.0000 0.0000 0.0000  0.0000 2.0000 0.0000  1.0000
c ---Cyl Shell, cylinder macrobody:9, trNum:, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:0.80
9  RCC 0.0000 0.0000 0.0000  0.0000 2.0000 0.0000  0.8000
c ---Cone, cone macrobody:10, trNum:, baseX:0.0000, baseY:0.0000, baseZ:0.0000, heightX:0.0000, heightY:1.0000, heightZ:0.0000, radiusTop:1.0000, radiusBase:0.2000
10  TRC 0.0000 0.0000 0.0000   0.0000 1.0000 0.0000  1.0000 0.2000
c ---Wedge, wedge macrobody:11, trNum:, vertexX:0.00, vertexY:0.00, vertexZ:0.00, base1X:1.00, base1Y:0.00, base1Z:0.00, base2X:0.00, base2Y:2.00, base2Z:0.00, heightX:0.00, heightY:0.00, heightZ:3.00,
11  WED 0.0000 0.0000 0.0000   1.0000 0.0000 0.0000   0.0000 2.0000 0.0000 &
          0.0000 0.0000 3.0000
c ---myRHPShell, Rhp/Hex macrobody:12, trNum:, base:0.00,0.00,-2.00, axis:0.00,:0.00,4.00, radius:0.00,1.00,0.00
12  RHP 0.0000 0.0000 -2.0000  0.0000 0.0000 4.0000  0.0000 1.0000 0.0000
c ---myRHPShell, Rhp/Hex macrobody:13, trNum:, base:0.00,0.00,0.00, axis:0.00,:0.00,4.00, radius:0.00,0.90,0.00
13  RHP 0.0000 0.0000 0.0000  0.0000 0.0000 4.0000  0.0000 0.9000 0.0000
c ---Torus 1, surface:14, trNum:, torus_Z x:11.50 y:3.00 z:0.00  A:0.80 B:0.60 C:0.40
14  TZ 11.5000 3.0000 0.0000  0.8000 0.6000 0.4000
c ---Right Ellip Cyl 1, Right ellip cyl macrobody:15, trNum:, vX:3.0000, vY:-1.0000, vZ:0.0000, hX:0.0000, hY:1.5000, hZ:0.0000, v1X:1.0000, v1Y:0.0000, v1Z:0.0000, Rm:0.5000
15  REC 3.0000 -1.0000 0.0000   0.0000 1.5000 0.0000  1.0000 0.0000 0.0000 &
          0.5000
c ---Ellipsoid 1, ellipsoid macrobody:16, trNum:, v1X:5.5000, v1Y:1.0000, v1Z:0.0000, v2X:0.0000, v2Y:1.5000, v2Z:0.0000, Rm:-0.9000
16  ELL 5.5000 1.0000 0.0000   0.0000 1.5000 0.0000  -0.9000
c ---Universe, sphere macrobody:17, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:100.00
17  SPH 0.0000 0.0000 0.0000  100.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['Aluminum', 'Tungsten', 'Lead', 'Poly', 'Air', 'Copper']--
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m6       13027  -1.000000 $ Al27
c      Tungsten
c      AKA: None
c      rho: 19.300000 g/cc
m369       74180  -0.001175 $ W180
       74182  -0.262273 $ W182
       74183  -0.142407 $ W183
       74184  -0.306585 $ W184
       74186  -0.287570 $ W186
c      Lead
c      AKA: None
c      rho: 11.350000 g/cc
m189       82204  -0.013782 $ Pb204
       82206  -0.239575 $ Pb206
       82207  -0.220761 $ Pb207
       82208  -0.525964 $ Pb208
c      Polyethylene, Non-borated
c      AKA: None
c      rho: 0.930000 g/cc
m275       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m412    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
c      Copper
c      AKA: None
c      rho: 8.960000 g/cc
m112       29063  -0.684792 $ Cu63
       29065  -0.315208 $ Cu65
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
