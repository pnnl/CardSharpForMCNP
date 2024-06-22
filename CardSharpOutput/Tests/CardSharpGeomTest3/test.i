Generated using CardSharp:Title card: Test 3
c ====================Cells======================
c (cell #, material #, density, macrobody, importance)                      
c density: negative is g/cc, positive is atoms/barn-cm                        
c -----------------------------------------------------------------
c ---sphere uncut----
1 82 -11.3500  -1    IMP:p,e=1 U=1
c ---sphere cut by two planes and shifted----
2 82 -11.3500  -1  -2  3  *TRCL (7.000000 0.000000 0.000000)  IMP:p,e=1 U=1
c ---rpp----
3 97 -0.0012  -4  #1  #2    IMP:p,e=1 U=1
c ---rpp----
4 84 -0.9300  -5  *TRCL (0.000 5.000 0.000  0.000 90.000 90.000   90.000 &
         0.000 90.000   90.000 90.000 0.000)  IMP:p,e=1  FILL=1
c World cells---Air inside------------------
c ---World----
5 97 -0.0012  -6  #4    IMP:p,e=1
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
