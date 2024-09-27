Generated using CardSharp:Title card: Test 2
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c sphere1, macrobody:1, xPos:0.00, yPos:0.00, zPos:0.00, radius:1.00, matNum:Air, density:0.00, xShift:0.00, yShift:0.00, zShift:0.00
c ---sphere1----
1 412 -0.0012  -1    IMP:p,e=1
c ---sphere minus plane1/plane2----
2 6 1.0000  -1  -2  3  *TRCL (0.000000 4.000000 0.000000)  IMP:p,e=1
c Sphere Shell, macrobody:4, macrobody:5, cellNum:0,    posX:0.00, posY:0.00, posZ:0.00, radius1:1.00, radius2:0.80,    matName:Lead, density:0.00, xShift:0.00, yShift:2.00, zShift:0.00
c ---Sphere Shell----
3 189 -11.3500  -4  5  *TRCL (0.000000 2.000000 0.000000)  IMP:p,e=1
c Box, Rect PPiped macrobody:6, cellNum:0, xMin:-1.00, xMax:1.00, yMin:-1.00, yMax:1.00, zMin:-0.50, zMax:0.50, matName:Poly, density:0.00, xShift:3.00, yShift:0.00, zShift:0.00
c ---Box----
4 275 -0.9300  -6  *TRCL (3.000000 0.000000 0.000000)  IMP:p,e=1
c Box shell, macrobody1:7, macrobody2:8, cellNum:0, innerXWidth:1.50, outerXWidth:2.00, innerYWidth:1.50, outerYWidth:2.00, innerZWidth:0.50, outerZWidth:1.00, xShift:3.00, yShift:3.00, zShift:0.00, matName:Tungsten, density:0.00
c ---Box shell----
5 369 -19.3000  -7  8  *TRCL (3.000000 3.000000 0.000000)  IMP:p,e=1
c Cylinder, macrobody:9, cellNum:0, baseX:0.00, baseY:0.00, baseZ:0.00, axisX:0.00, axisY:2.00, axisZ:0.00, radius:1.00, matName:Copper, density:0.00, xShift:6.00, yShift:0.00, zShift:0.00
c ---Cylinder----
6 112 -8.9600  -9  *TRCL (6.000000 0.000000 0.000000)  IMP:p,e=1
c Cyl Shell, macrobody1:10, macrobody2:11, cellNum:0,    baseX1:0.00, baseY1:0.00, baseZ1:0.00, axisX1:0.00, axisY1:2.00, axisZ1:0.00, radius1:1.00,    baseX2:0.00, baseY2:0.00, baseZ2:0.00, axisX2:0.00, axisY2:2.00, axisZ2:0.00, radius2:0.80,    matName:Lead, density:0.00, xShift:6.00, yShift:3.00, zShift:0.00
c ---Cyl Shell----
7 189 -11.3500  -10  11  *TRCL (6.000000 3.000000 0.000000)  IMP:p,e=1
c Cone, macrobody:12, cellNum:0, baseX:0.00, baseY:0.00, baseZ:0.00, heightX:0.00, heightY:1.00, heightZ:0.00, radius1:1.00, radius2:0.20, matName:Void, density:0.00
c ---Cone----
8 0        -12  *TRCL (9.000000 0.000000 0.000000)  IMP:p,e=1
c Wedge, macrobody:13, cellNum:0, vertexX:0.00, vertexY:0.00, vertexZ:0.00, base1X:1.00, base1Y:0.00, base1Z:0.00, base2X:0.00, base2Y:2.00, base2Z:0.00, heightX:0.00, heightY:0.00, heightZ:3.00, matName:Poly, density:0.00
c ---Wedge----
9 275 -0.9300  -13  *TRCL (11.000000 0.000000 0.000000)  IMP:p,e=1
c myRHPShell, macrobody1:14, macrobody2:15, cellNum:0,    base1:0.00,0.00,-2.00, axis1:0.00,0.00,4.00, r1:0.00,1.00,0.00,    base2:0.00,0.00,0.00, axis2:0.00,0.00,4.00, r2:0.00,0.90,0.00,    matName:Poly, density:0.00, shift:9.00,3.00,0.00
c ---myRHPShell----
10 275 -0.9300  -14  15  *TRCL (9.000000 3.000000 0.000000)  IMP:p,e=1
c World cells---Air inside------------------
c ---World----
11 412 -0.0012  -16  #1  #2  #3  #4  #5  #6  #7  #8  #9  #10    IMP:p,e=1
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
c --['Aluminum', 'Tungsten', 'Lead', 'Poly']--
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
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
