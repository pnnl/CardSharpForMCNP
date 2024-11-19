Generated using CardSharp:Title card: Test 1
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c ---Cylinder----
1 6 -2.7000  -1  -2  3    IMP:p,e=1
c World cells---Air inside------------------
c ---World----
2 412 -0.0012  -4  #1    IMP:p,e=1
c ---Graveyard----
3 0        4    IMP:p,e=0
c =============Cells end: Next line must be completely blank==================

c ====================Surfaces/Macrobodies=======
c surface/macrobody number, transformation number optional, surf/macro type, surface parameters
c --------------------------
c ---cyl, surface:1, trNum:, cylinder_X Y:1.00 Z:1.00 R:1.00
1  C/X 1.0000 1.0000 1.0000
c ---plane1, surface:2, trNum:, plane X D:2.00
2  PX 2.0000
c ---plane2, surface:3, trNum:, plane X D:-2.00
3  PX -2.0000
c ---Universe, sphere macrobody:4, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, radius:25.00
4  SPH 0.0000 0.0000 0.0000  25.0000
c =============Surfaces/Macros end: Next line must be completely blank=========

c =================Data cards=================
c -----------------Transformations(* for degrees)--
c -----------------Materials------------------
c --['Aluminum', 'Air']--
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m6       13027  -1.000000 $ Al27
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m412    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar
c -----------------Source---------------------
c -----------------Tally----------------------
c -----------------Physics -------------------
c -----------------Output Control-------------                     
