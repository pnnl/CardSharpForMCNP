          Code Name & Version = MCNP6, 1.0
  
     _/      _/        _/_/_/       _/      _/       _/_/_/         _/_/_/
    _/_/  _/_/      _/             _/_/    _/       _/    _/     _/       
   _/  _/  _/      _/             _/  _/  _/       _/_/_/       _/_/_/    
  _/      _/      _/             _/    _/_/       _/           _/    _/   
 _/      _/        _/_/_/       _/      _/       _/             _/_/      
  
  +---------------------------------------------------------------------+
  | Copyright 2008. Los Alamos National Security, LLC.  All rights      |
  | reserved.                                                           |
  |   This material was produced under U.S. Government contract         |
  | DE-AC52-06NA25396 for Los Alamos National Laboratory, which is      |
  | operated by Los Alamos National Security, LLC, for the U.S.         |
  | Department of Energy. The Government is granted for itself and      |
  | others acting on its behalf a paid-up, nonexclusive, irrevocable    |
  | worldwide license in this material to reproduce, prepare derivative |
  | works, and perform publicly and display publicly. Beginning five    |
  | (5) years after 2008, subject to additional five-year worldwide     |
  | renewals, the Government is granted for itself and others acting on |
  | its behalf a paid-up, nonexclusive, irrevocable worldwide license   |
  | in this material to reproduce, prepare derivative works, distribute |
  | copies to the public, perform publicly and display publicly, and to |
  | permit others to do so. NEITHER THE UNITED STATES NOR THE UNITED    |
  | STATES DEPARTMENT OF ENERGY, NOR LOS ALAMOS NATIONAL SECURITY, LLC, |
  | NOR ANY OF THEIR EMPLOYEES, MAKES ANY WARRANTY, EXPRESS OR IMPLIED, |
  | OR ASSUMES ANY LEGAL LIABILITY OR RESPONSIBILITY FOR THE ACCURACY,  |
  | COMPLETENESS, OR USEFULNESS OF ANY INFORMATION, APPARATUS, PRODUCT, |
  | OR PROCESS DISCLOSED, OR REPRESENTS THAT ITS USE WOULD NOT INFRINGE |
  | PRIVATELY OWNED RIGHTS.                                             |
  +---------------------------------------------------------------------+
  
1mcnp     version 6     ld=05/08/13                     12/29/24 21:38:13 
 *************************************************************************                 probid =  12/29/24 21:38:13 
 n=variance_reduction.i tasks 14                                                 

         1-       Generated using CardSharp:Jezebel reactor                                       
         2-       c ====================Cells======================                               
         3-       c (cell #, material #, density, macrobody, importance)                          
         4-       c density: negative is g/cc, positive is atoms/barn-cm                          
         5-       c -----------------------------------------------------------------             
         6-       c Block 1, Rect PPiped macrobody:1, xMin:-3.00, xMax:3.00, yMin:-10.00, yMax:10.
         7-       c ---Block 1----                                                                
         8-       1 6 -2.7000  -1  *TRCL (0.000000 -10.000000 0.000000)  IMP:p=1                  
         9-       c Block 2a, Rect PPiped macrobody:2, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10
        10-       c ---Block 2a----                                                               
        11-       2 6 -2.7000  -2  *TRCL (-2.000000 10.000000 0.000000)  imp:p=1                  
        12-       c Block 2b, Rect PPiped macrobody:3, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10
        13-       c ---Block 2b----                                                               
        14-       3 6 -2.7000  -3  *TRCL (0.000000 10.000000 0.000000)  imp:p=5                   
        15-       c Block 2c, Rect PPiped macrobody:4, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10
        16-       c ---Block 2c----                                                               
        17-       4 6 -2.7000  -4  *TRCL (2.000000 10.000000 0.000000)  imp:p=25                  
        18-       c Source, macrobody:5, xPos:-40.00, yPos:0.00, zPos:0.00, radius:1.00, matNum:Vo
        19-       c ---Source----                                                                 
        20-       5 0        -5    IMP:p=1                                                        
        21-       c Det 1, macrobody:6, xPos:40.00, yPos:-20.00, zPos:0.00, radius:1.00, matNum:Vo
        22-       c ---Det 1----                                                                  
        23-       6 0        -6    IMP:p=1                                                        
        24-       c Det 2, macrobody:7, xPos:40.00, yPos:20.00, zPos:0.00, radius:1.00, matNum:Voi
        25-       c ---Det 2----                                                                  
        26-       7 0        -7    IMP:p=1                                                        
        27-       c World cells---Void inside------------------                                   
        28-       c ---World----                                                                  
        29-       8 0        -100  #1  #2  #3  #4  #5  #6  #7    IMP:p=1                          
        30-       c ---Graveyard----                                                              
        31-       9 0        100    IMP:p=0                                                       
        32-       c =============Cells end: Next line must be completely blank==================  
        33-                                                                                       
        34-       c ====================Surfaces/Macrobodies=======                               
        35-       c surface/macrobody number, transformation number optional, surf/macro type, sur
        36-       c --------------------------                                                    
        37-       c ---Block 1, macrobody:1, trNum:, xMin:-3.00, xMax:3.00, yMin:-10.00, yMax:10.0
        38-       1  RPP -3.000000 3.000000   -10.000000 10.000000    -10.000000 10.000000        
        39-       c ---Block 2a, macrobody:2, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.
        40-       2  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000        
        41-       c ---Block 2b, macrobody:3, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.
        42-       3  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000        
        43-       c ---Block 2c, macrobody:4, trNum:, xMin:-1.00, xMax:1.00, yMin:-10.00, yMax:10.
        44-       4  RPP -1.000000 1.000000   -10.000000 10.000000    -10.000000 10.000000        
        45-       c ---Source, sphere macrobody:5, trNum:, xPos:-40.00, yPos:0.00, zPos:0.00, radi
        46-       5  SPH -40.0000 0.0000 0.0000  1.0000                                           
        47-       c ---Det 1, sphere macrobody:6, trNum:, xPos:40.00, yPos:-20.00, zPos:0.00, radi
        48-       6  SPH 40.0000 -20.0000 0.0000  1.0000                                          
        49-       c ---Det 2, sphere macrobody:7, trNum:, xPos:40.00, yPos:20.00, zPos:0.00, radiu
        50-       7  SPH 40.0000 20.0000 0.0000  1.0000                                           
        51-       c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, ra
        52-       100  SPH 0.0000 0.0000 0.0000  60.0000                                          
        53-       c =============Surfaces/Macros end: Next line must be completely blank========= 
        54-                                                                                       
        55-       c =================Data cards=================                                  
        56-       c -----------------Transformations(* for degrees)--                             
        57-       c -----------------Materials------------------                                  
        58-       c --['Lead', 'SteelMediumCarbon1045', 'Aluminum']--                             
        59-       c      Lead                                                                     
        60-       c      AKA: None                                                                
        61-       c      rho: 11.350000 g/cc                                                      
        62-       m189       82204  -0.013782 $ Pb204                                             
  warning.  material      189 is not used in the problem.
        63-              82206  -0.239575 $ Pb206                                                 
        64-              82207  -0.220761 $ Pb207                                                 
        65-              82208  -0.525964 $ Pb208                                                 
        66-       c      Steel, Medium Carbon (1045)                                              
        67-       c      AKA: None                                                                
        68-       c      rho: 7.872000 g/cc                                                       
        69-       m328       6012  -0.004942 $ C12                                                
  warning.  material      328 is not used in the problem.
        70-              6013  -0.000058 $ C13                                                    
        71-              25055  -0.009000 $ Mn55                                                  
        72-              15031  -0.000400 $ P31                                                   
        73-              16032  -0.000474 $ S32                                                   
        74-              16033  -0.000004 $ S33                                                   
        75-              16034  -0.000023 $ S34                                                   
        76-              26054  -0.055615 $ Fe54                                                  
        77-              26056  -0.905324 $ Fe56                                                  
        78-              26057  -0.021282 $ Fe57                                                  
        79-              26058  -0.002882 $ Fe58                                                  
        80-       c      Aluminum                                                                 
        81-       c      AKA: None                                                                
        82-       c      rho: 2.698900 g/cc                                                       
        83-       m6       13027  -1.000000 $ Al27                                                
        84-       c -----------------Source---------------------                                  
        85-       c ----- Source: point source with biasing tabulated photon energy distribution  
        86-       SDEF POS=-40.00 0.00 0.00 VEC=1.00 0.00 0.00 ERG=d1 DIR=d2 PAR=p  $ energy distr
        87-       SI2   -1.00   0.707106781186547573   1.0     $ for DIR, histogram of cosine bin,
        88-       SP2    0.     0.     1.0      $ Source *probability* for each bin, integrated   
        89-       SI1 L 5.0000E-01 $ L for discrete or A for continuous, followed by the n energie
        90-       SP1    1.0000E+00 $ relative frequency of each energy                           
        91-       c -----------------Tally----------------------                                  
        92-       c -- F5 Tally --                                                                
        93-       F15:p    $ Point detectors                                                      
        94-            40.00 -20.00 0.00 0.00 $ x y z r                                           
        95-       c Energy bins                                                                   
        96-       E15  0.0000000E+00 2.6315789E-02 5.2631579E-02 7.8947368E-02 1.0526316E-01 &    
        97-                1.3157895E-01 1.5789474E-01 1.8421053E-01 2.1052632E-01 &              
        98-                2.3684211E-01 2.6315789E-01 2.8947368E-01 3.1578947E-01 &              
        99-                3.4210526E-01 3.6842105E-01 3.9473684E-01 4.2105263E-01 &              
       100-                4.4736842E-01 4.7368421E-01 5.0000000E-01                              
       101-       c -- F5 Tally --                                                                
       102-       F25:p    $ Point detectors                                                      
       103-            40.00 20.00 0.00 0.00 $ x y z r                                            
       104-       c Energy bins                                                                   
       105-       E25  0.0000000E+00 2.6315789E-02 5.2631579E-02 7.8947368E-02 1.0526316E-01 &    
       106-                1.3157895E-01 1.5789474E-01 1.8421053E-01 2.1052632E-01 &              
       107-                2.3684211E-01 2.6315789E-01 2.8947368E-01 3.1578947E-01 &              
       108-                3.4210526E-01 3.6842105E-01 3.9473684E-01 4.2105263E-01 &              
       109-                4.4736842E-01 4.7368421E-01 5.0000000E-01                              
       110-       c -----------------Physics -------------------                                  
       111-       c --mode, cut, phys --                                                          
       112-       MPHYS  OFF $ needed only when particles other than N P E are run                
       113-       MODE p   $ particles to transport, default n (anti particles included)          
       114-       CUT:n  j 0.0                                                                    
       115-       CUT:p  j 0.001                                                                  
       116-       CUT:e  j 0.001                                                                  
       117-       PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
  comment.  photon Doppler energy broadening turned off (phys:p).
       118-       PHYS:e 100 0 0 0 0 1 1 1 1 0                                                    
       119-       c -----------------Output Control-------------                                  
       120-       c --MCTAL nps --                                                                
       121-       c NOTRN                $ uncomment then you get ray tracing only, not scatter   
       122-       c PRDMP NDP NDM MCT NDMP DMMP                                                   
       123-       PRDMP   j   1000000    1    1    j  $ write MCTAL file                          
       124-       PRINT                                                                           
       125-       c PRINT 40 $ For material normalization check, see .io file                     
       126-       c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommend
       127-       c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.        
       128-       c DBCN j 1000000 $ nj is jump over n options, debug print and multitasking are i
       129-       NPS 10000000     $ stop after number of source particles have been run          
       130-       c CTME 2.0 $ stop run after number of minutes                                   
       131-       c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir

 surface        1.1 and surface     1001.1 are the same.     1001.1 will be deleted.

 surface        1.1 and surface     4004.1 are the same.     4004.1 will be deleted.

 surface        1.2 and surface     1001.2 are the same.     1001.2 will be deleted.

 surface        1.2 and surface     2002.2 are the same.     2002.2 will be deleted.

 surface        1.3 and surface        2.3 are the same.        2.3 will be deleted.

 surface        1.3 and surface        3.3 are the same.        3.3 will be deleted.

 surface        1.3 and surface        4.3 are the same.        4.3 will be deleted.

 surface        1.4 and surface        2.4 are the same.        2.4 will be deleted.

 surface        1.4 and surface        3.4 are the same.        3.4 will be deleted.

 surface        1.4 and surface        4.4 are the same.        4.4 will be deleted.

 surface        1.5 and surface        2.5 are the same.        2.5 will be deleted.

 surface        1.5 and surface        3.5 are the same.        3.5 will be deleted.

 surface        1.5 and surface        4.5 are the same.        4.5 will be deleted.

 surface        1.5 and surface     1001.5 are the same.     1001.5 will be deleted.

 surface        1.5 and surface     2002.5 are the same.     2002.5 will be deleted.

 surface        1.5 and surface     3003.5 are the same.     3003.5 will be deleted.

 surface        1.5 and surface     4004.5 are the same.     4004.5 will be deleted.

 surface        1.6 and surface        2.6 are the same.        2.6 will be deleted.

 surface        1.6 and surface        3.6 are the same.        3.6 will be deleted.

 surface        1.6 and surface        4.6 are the same.        4.6 will be deleted.

 surface        1.6 and surface     1001.6 are the same.     1001.6 will be deleted.

 surface        1.6 and surface     2002.6 are the same.     2002.6 will be deleted.

 surface        1.6 and surface     3003.6 are the same.     3003.6 will be deleted.

 surface        1.6 and surface     4004.6 are the same.     4004.6 will be deleted.

 surface        2.1 and surface        3.1 are the same.        3.1 will be deleted.

 surface        2.1 and surface        4.1 are the same.        4.1 will be deleted.

 surface        2.1 and surface     3003.1 are the same.     3003.1 will be deleted.

 surface        2.1 and surface     4004.2 are the same.     4004.2 will be deleted.

 surface        2.2 and surface        3.2 are the same.        3.2 will be deleted.

 surface        2.2 and surface        4.2 are the same.        4.2 will be deleted.

 surface        2.2 and surface     2002.1 are the same.     2002.1 will be deleted.

 surface        2.2 and surface     3003.2 are the same.     3003.2 will be deleted.

 surface     1001.3 and surface     2002.4 are the same.     2002.4 will be deleted.

 surface     1001.3 and surface     3003.4 are the same.     3003.4 will be deleted.

 surface     1001.3 and surface     4004.4 are the same.     4004.4 will be deleted.

 surface     2002.3 and surface     3003.3 are the same.     3003.3 will be deleted.

 surface     2002.3 and surface     4004.3 are the same.     4004.3 will be deleted.
 
  comment.          37 surfaces were deleted for being the same as others.
1source                                                                                                 print table 10

 values of defaulted or explicitly defined source variables

    cel        0.0000E+00
    sur        0.0000E+00
    tme        0.0000E+00
    pos       -4.0000E+01   0.0000E+00   0.0000E+00
    x          0.0000E+00
    y          0.0000E+00
    z          0.0000E+00
    rad        0.0000E+00
    ext        0.0000E+00
    axs        0.0000E+00   0.0000E+00   0.0000E+00
    vec        1.0000E+00   0.0000E+00   0.0000E+00
    ccc        0.0000E+00
    nrm        1.0000E+00
    ara        0.0000E+00
    wgt        1.0000E+00
    eff        1.0000E-02
    par        2.0000E+00
    tr         0.0000E+00
    bem        0.0000E+00   0.0000E+00   0.0000E+00
    bap        0.0000E+00   0.0000E+00   0.0000E+00
    loc        0.0000E+00   0.0000E+00   0.0000E+00
    dat        0.0000E+00   0.0000E+00   0.0000E+00



 probability distribution        2 for source variable dir
 unbiased histogram distribution

 source        source           cumulative          probability
  entry         value           probability           of bin

    1      -1.00000E+00        0.000000E+00        0.000000E+00
    2       7.07107E-01        0.000000E+00        0.000000E+00
    3       1.00000E+00        1.000000E+00        1.000000E+00

     the mean of source distribution        2 is  8.5355E-01



 probability distribution        1 for source variable erg
 unbiased discrete  distribution

 source        source           cumulative          probability
  entry         value           probability           of bin

    1       5.00000E-01        1.000000E+00        1.000000E+00

     the mean of source distribution        1 is  5.0000E-01


 order of sampling source variables.
 par pos vec dir erg tme

1tally       15                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     1 energy bins of tally       15 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        4.00000E+01   -2.00000E+01    0.00000E+00    0.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  2.63158E-02 MeV   
      2.63158E-02  to  5.26316E-02 MeV   
      5.26316E-02  to  7.89474E-02 MeV   
      7.89474E-02  to  1.05263E-01 MeV   
      1.05263E-01  to  1.31579E-01 MeV   
      1.31579E-01  to  1.57895E-01 MeV   
      1.57895E-01  to  1.84211E-01 MeV   
      1.84211E-01  to  2.10526E-01 MeV   
      2.10526E-01  to  2.36842E-01 MeV   
      2.36842E-01  to  2.63158E-01 MeV   
      2.63158E-01  to  2.89474E-01 MeV   
      2.89474E-01  to  3.15789E-01 MeV   
      3.15789E-01  to  3.42105E-01 MeV   
      3.42105E-01  to  3.68421E-01 MeV   
      3.68421E-01  to  3.94737E-01 MeV   
      3.94737E-01  to  4.21053E-01 MeV   
      4.21053E-01  to  4.47368E-01 MeV   
      4.47368E-01  to  4.73684E-01 MeV   
      4.73684E-01  to  5.00000E-01 MeV   
      total bin

1tally       25                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     1 energy bins of tally       25 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        4.00000E+01    2.00000E+01    0.00000E+00    0.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  2.63158E-02 MeV   
      2.63158E-02  to  5.26316E-02 MeV   
      5.26316E-02  to  7.89474E-02 MeV   
      7.89474E-02  to  1.05263E-01 MeV   
      1.05263E-01  to  1.31579E-01 MeV   
      1.31579E-01  to  1.57895E-01 MeV   
      1.57895E-01  to  1.84211E-01 MeV   
      1.84211E-01  to  2.10526E-01 MeV   
      2.10526E-01  to  2.36842E-01 MeV   
      2.36842E-01  to  2.63158E-01 MeV   
      2.63158E-01  to  2.89474E-01 MeV   
      2.89474E-01  to  3.15789E-01 MeV   
      3.15789E-01  to  3.42105E-01 MeV   
      3.42105E-01  to  3.68421E-01 MeV   
      3.68421E-01  to  3.94737E-01 MeV   
      3.94737E-01  to  4.21053E-01 MeV   
      4.21053E-01  to  4.47368E-01 MeV   
      4.47368E-01  to  4.73684E-01 MeV   
      4.73684E-01  to  5.00000E-01 MeV   
      total bin
1material composition                                                                                   print table 40

 material
  number     component nuclide, atom fraction

        6           13027, 1.00000E+00





 material
  number     component nuclide, mass fraction

        6           13027, 1.00000E+00
1cell volumes and masses                                                                                print table 50

              cell     atom          gram         input       calculated                            reason volume
                      density       density       volume        volume         mass       pieces    not calculated

        1        1  6.02616E-02   2.70000E+00   0.00000E+00   2.40000E+03   6.48000E+03      0                      
        2        2  6.02616E-02   2.70000E+00   0.00000E+00   8.00000E+02   2.16000E+03      0                      
        3        3  6.02616E-02   2.70000E+00   0.00000E+00   8.00000E+02   2.16000E+03      0                      
        4        4  6.02616E-02   2.70000E+00   0.00000E+00   8.00000E+02   2.16000E+03      0                      
        5        5  0.00000E+00   0.00000E+00   0.00000E+00   4.18879E+00   0.00000E+00      1                      
        6        6  0.00000E+00   0.00000E+00   0.00000E+00   4.18879E+00   0.00000E+00      1                      
        7        7  0.00000E+00   0.00000E+00   0.00000E+00   4.18879E+00   0.00000E+00      1                      
        8        8  0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00      0      asymmetric      
        9        9  0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00      0      infinite        
1surface areas                                                                                          print table 50

           surface      input      calculated    reason area
                        area          area       not calculated

        2        1.1    0.00000E+00   8.00000E+02                   
        3        1.2    0.00000E+00   8.00000E+02                   
        4        1.3    0.00000E+00   0.00000E+00   not a boundary  
        5        1.4    0.00000E+00   0.00000E+00   not a boundary  
        6        1.5    0.00000E+00   2.40000E+02                   
        7        1.6    0.00000E+00   2.40000E+02                   
        9        2.1    0.00000E+00   0.00000E+00   asymmetric      
       10        2.2    0.00000E+00   0.00000E+00   asymmetric      
       29        5      0.00000E+00   1.25664E+01                   
       30        6      0.00000E+00   1.25664E+01                   
       31        7      0.00000E+00   1.25664E+01                   
       32      100      0.00000E+00   4.52389E+04                   
       36     1001.3    0.00000E+00   0.00000E+00   asymmetric      
       37     1001.4    0.00000E+00   1.20000E+02                   
       43     2002.3    0.00000E+00   1.20000E+02                   
1cells                                                                                                  print table 60

                               atom        gram                                            photon                                      
              cell      mat   density     density     volume       mass            pieces importance                                   

        1        1        6  6.02616E-02 2.70000E+00 2.40000E+03 6.48000E+03           0  1.0000E+00                                   
        2        2        6  6.02616E-02 2.70000E+00 8.00000E+02 2.16000E+03           0  1.0000E+00                                   
        3        3        6  6.02616E-02 2.70000E+00 8.00000E+02 2.16000E+03           0  5.0000E+00                                   
        4        4        6  6.02616E-02 2.70000E+00 8.00000E+02 2.16000E+03           0  2.5000E+01                                   
        5        5        0  0.00000E+00 0.00000E+00 4.18879E+00 0.00000E+00           1  1.0000E+00                                   
        6        6        0  0.00000E+00 0.00000E+00 4.18879E+00 0.00000E+00           1  1.0000E+00                                   
        7        7        0  0.00000E+00 0.00000E+00 4.18879E+00 0.00000E+00           1  1.0000E+00                                   
        8        8        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  1.0000E+00                                   
        9        9        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  0.0000E+00                                   

 total                                               4.81257E+03 1.29600E+04
1surfaces                                                                                               print table 70

           surface        trans  type   surface coefficients

        1        1                rpp
        2        1.1              px    3.0000000E+00
        3        1.2              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   3.0000000E+00
        4        1.3              py    1.0000000E+01
        5        1.4              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   1.0000000E+01
        6        1.5              pz    1.0000000E+01
        7        1.6              p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
        8        2                rpp
        9        2.1              px    1.0000000E+00
       10        2.2              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   1.0000000E+00
       15        3                rpp
       22        4                rpp
       29        5                sx   -4.0000000E+01   1.0000000E+00
       30        6                s     4.0000000E+01  -2.0000000E+01   0.0000000E+00   1.0000000E+00
       31        7                s     4.0000000E+01   2.0000000E+01   0.0000000E+00   1.0000000E+00
       32      100                so    6.0000000E+01
       33     1001                rpp
       36     1001.3       1001   py    0.0000000E+00
       37     1001.4       1001   p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   2.0000000E+01
       40     2002                rpp
       43     2002.3       1002   py    2.0000000E+01
       47     3003                rpp
       54     4004                rpp
1  identical surfaces                                                                                   print table 70

   master surface     identical surfaces

         1.1        1001.1     4004.1                                                                                                  
         1.2        1001.2     2002.2                                                                                                  
         1.3           2.3        3.3        4.3                                                                                       
         1.4           2.4        3.4        4.4                                                                                       
         1.5           2.5        3.5        4.5     1001.5     2002.5     3003.5     4004.5                                           
         1.6           2.6        3.6        4.6     1001.6     2002.6     3003.6     4004.6                                           
         2.1           3.1        4.1     3003.1     4004.2                                                                            
         2.2           3.2        4.2     2002.1     3003.2                                                                            
      1001.3        2002.4     3003.4     4004.4                                                                                       
      2002.3        3003.3     4004.3                                                                                                  


   surface coefficients for identical surfaces not used.

             surface     trans  type   surface coefficients

       34     1001.1       1001   px    3.0000000E+00
       55     4004.1       1004   px    3.0000000E+00
       35     1001.2       1001   p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   3.0000000E+00
       42     2002.2       1002   p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   3.0000000E+00
       11        2.3              py    1.0000000E+01
       18        3.3              py    1.0000000E+01
       25        4.3              py    1.0000000E+01
       12        2.4              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   1.0000000E+01
       19        3.4              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   1.0000000E+01
       26        4.4              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   1.0000000E+01
       13        2.5              pz    1.0000000E+01
       20        3.5              pz    1.0000000E+01
       27        4.5              pz    1.0000000E+01
       38     1001.5       1001   pz    1.0000000E+01
       45     2002.5       1002   pz    1.0000000E+01
       52     3003.5       1003   pz    1.0000000E+01
       59     4004.5       1004   pz    1.0000000E+01
       14        2.6              p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       21        3.6              p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       28        4.6              p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       39     1001.6       1001   p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       46     2002.6       1002   p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       53     3003.6       1003   p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       60     4004.6       1004   p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   1.0000000E+01
       16        3.1              px    1.0000000E+00
       23        4.1              px    1.0000000E+00
       48     3003.1       1003   px    1.0000000E+00
       56     4004.2       1004   p    -1.0000000E+00   0.0000000E+00   0.0000000E+00  -1.0000000E+00
       17        3.2              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   1.0000000E+00
       24        4.2              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   1.0000000E+00
       41     2002.1       1002   px   -1.0000000E+00
       49     3003.2       1003   p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   1.0000000E+00
       44     2002.4       1002   p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   0.0000000E+00
       51     3003.4       1003   p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   0.0000000E+00
       58     4004.4       1004   p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   0.0000000E+00
       50     3003.3       1003   py    2.0000000E+01
       57     4004.3       1004   py    2.0000000E+01

    minimum source weight = 1.0000E+00    maximum source weight = 1.0000E+00

 ***************************************************
 * Random Number Generator  =                    1 *
 * Random Number Seed       =       19073486328125 *
 * Random Number Multiplier =       19073486328125 *
 * Random Number Adder      =                    0 *
 * Random Number Bits Used  =                   48 *
 * Random Number Stride     =               152917 *
 ***************************************************

 
  comment.  threading will be used when possible in portions of mcnp6.
 
  comment.  threading will be used for n/p/e table physics.
 
  comment.  threading will generally not be used for model physics.

         4 warning messages so far.
1physical constants                                                                                     print table 98


       name                    value     description

 huge_float      1.0000000000000E+36     infinity
        pie      3.1415926535898E+00     pi
      euler      5.7721566490153E-01     euler constant
     avogad      6.0220434469282E+23     avogadro number (molecules/mole)
      aneut      1.0086649670000E+00     neutron mass (amu)
      avgdn      5.9703109000000E-01     avogadro number/neutron mass (1.e-24*molecules/mole/amu)
      slite      2.9979250000000E+02     speed of light (cm/shake)
     planck      4.1357320000000E-13     planck constant (mev shake)
      fscon      1.3703930000000E+02     inverse fine structure constant h*c/(2*pi*e**2)

 particle masses:   ipt       mass (mev)           particle      anti-particle

                      1    9.3958000000000E+02     neutron        5   Aneutron
                      3    5.1100800000000E-01     electron       8   positron
                      4    1.0565835700000E+02     mu_minus      16   mu_plus 
                      9    9.3827199800000E+02     proton        19   Aproton 
                     10    1.1156830000000E+03     lambda0       25   Alambda0
                     11    1.1893700000000E+03     sigma+        26   Asigma+ 
                     12    1.1974490000000E+03     sigma-        27   Asigma- 
                     13    1.3148300000000E+03     xi0           28   Axi0    
                     14    1.3213100000000E+03     xi_minus      29   xi_plus 
                     15    1.6724500000000E+03     omega-        30   Aomega- 
                     20    1.3957018000000E+02     pi_plus       35   pi_minus
                     21    1.3497660000000E+02     pi_zero 
                     22    4.9367700000000E+02     k_plus        36   k_minus 
                     23    4.9767200000000E+02     k0_short
                     24    4.9767200000000E+02     k0_long 
                     31    1.8756127600000E+03     deuteron
                     32    2.8089208600000E+03     triton  
                     33    2.8083913200000E+03     helion  
                     34    3.7273790400000E+03     alpha   


 fission q-values:     nuclide    q(mev)   nuclide    q(mev)
                         90232    171.91     91233    175.57
                         92233    180.84     92234    179.45
                         92235    180.88     92236    179.50
                         92237    180.40     92238    181.31
                         92239    180.40     92240    180.40
                         93237    183.67     94238    186.65
                         94239    189.44     94240    186.36
                         94241    188.99     94242    185.98
                         94243    187.48     95241    190.83
                         95242    190.54     95243    190.25
                         96242    190.49     96244    190.49
                         other    180.00

 parallel options:

     omp

     default datapath: C:/MY_MCNP/MCNP_DATA/                                                           
                       C:\cygwin\MCNP_DATA                                                             

 the following conditional compilation symbols were defined:

     CEM
     CEM_M6
     CINDER
     CVF
     DEC
     INTEL
     LAQGSM
     LLNL_FISS
     OMP
     PLOT
     XLIB
1cross-section tables                                                                                   print table 100
     XSDIR used: C:/MY_MCNP/MCNP_DATA//xsdir_mcnp6.1

     table    length

                        tables from file xdata/mcplib84                                                  

  13000.84p    4922  Update of MCPLIB04 Photon Compton Broadening Data For MCNP5 see LA-UR-    12-00018        01/03/12

  total        4922

 maximum photon energy set to    100.0 mev (maximum electron energy)

                        tables from file xdata/el03                                                      

  13000.03e    2337                                                                                          6/6/98    

1particles and energy limits                                                                            print table 101

                         particle      maximum       smallest      largest       always        always
                         cutoff        particle      table         table         use table     use model
   particle type         energy        energy        maximum       maximum       below         above

    2  p    photon      1.0000E-03    1.0000E+02    1.0000E+05    1.0000E+05    1.0000E+36    1.0000E+36
    3  e    electron    1.0000E-03    1.0000E+02    1.0000E+02    1.0000E+02    1.0000E+36    1.0000E+36
 
 
  warning.  material        6 has been set to a conductor.
1range table for material        6 (condensed)                                                          print table 85

 electron substeps per energy step =   5,  default =   5.  mean ionization energy = 1.66000E+02 ev.

 density effect data
 conductor
   z =  13
    occ no, be(ev) pairs
       2.   1564.000       2.    121.000       2.     77.000       4.     77.000      -3.      9.075
       plas(ev)       wt       tmin(mev)
       32.86628     2.17981     0.00000

         energy           stopping power           range   radiation   beta**2   density   rad/col   e-step    dyield
    n              collision radiation   total               yield                corr                range
          mev      mev cm2/g mev cm2/g mev cm2/g   g/cm2                        mev cm2/g             g/cm2

  133  1.0790E-03  7.112E+01 3.967E-03 7.112E+01 7.898E-06 4.467E-06  4.210E-03 3.786E-04 5.578E-05 1.233E-06 4.819E-09
  132  1.1766E-03  6.802E+01 4.085E-03 6.803E+01 9.302E-06 8.902E-06  4.589E-03 3.820E-04 6.004E-05 1.404E-06 5.655E-09
  131  1.2831E-03  6.496E+01 4.203E-03 6.496E+01 1.090E-05 1.334E-05  5.003E-03 3.857E-04 6.470E-05 1.602E-06 6.642E-09
  130  1.3992E-03  6.193E+01 4.322E-03 6.193E+01 1.274E-05 1.781E-05  5.454E-03 3.897E-04 6.979E-05 1.831E-06 7.809E-09
  129  1.5259E-03  5.896E+01 4.442E-03 5.897E+01 1.483E-05 2.236E-05  5.945E-03 3.941E-04 7.533E-05 2.096E-06 9.188E-09
  128  1.6640E-03  5.606E+01 4.562E-03 5.607E+01 1.723E-05 2.700E-05  6.481E-03 3.989E-04 8.137E-05 2.403E-06 1.082E-08
  127  1.8146E-03  5.324E+01 4.682E-03 5.325E+01 1.999E-05 3.179E-05  7.064E-03 4.041E-04 8.794E-05 2.757E-06 1.275E-08
  126  1.9788E-03  5.051E+01 4.802E-03 5.051E+01 2.316E-05 3.674E-05  7.700E-03 4.098E-04 9.508E-05 3.168E-06 1.503E-08
  125  2.1579E-03  4.786E+01 4.922E-03 4.787E+01 2.680E-05 4.191E-05  8.393E-03 4.160E-04 1.028E-04 3.644E-06 1.772E-08
  124  2.3532E-03  4.531E+01 5.041E-03 4.532E+01 3.100E-05 4.731E-05  9.147E-03 4.228E-04 1.112E-04 4.195E-06 2.090E-08
  123  2.5662E-03  4.286E+01 5.158E-03 4.286E+01 3.583E-05 5.299E-05  9.969E-03 4.302E-04 1.203E-04 4.835E-06 2.466E-08
  122  2.7985E-03  4.050E+01 5.274E-03 4.051E+01 4.141E-05 5.899E-05  1.086E-02 4.383E-04 1.302E-04 5.576E-06 2.909E-08
  121  3.0518E-03  3.825E+01 5.388E-03 3.825E+01 4.785E-05 6.534E-05  1.184E-02 4.471E-04 1.409E-04 6.437E-06 3.433E-08
  120  3.3280E-03  3.609E+01 5.499E-03 3.610E+01 5.528E-05 7.209E-05  1.290E-02 4.567E-04 1.524E-04 7.437E-06 4.049E-08
  119  3.6292E-03  3.403E+01 5.609E-03 3.404E+01 6.388E-05 7.927E-05  1.405E-02 4.671E-04 1.648E-04 8.597E-06 4.776E-08
  118  3.9576E-03  3.207E+01 5.715E-03 3.208E+01 7.383E-05 8.692E-05  1.531E-02 4.785E-04 1.782E-04 9.946E-06 5.633E-08
  117  4.3158E-03  3.020E+01 5.818E-03 3.021E+01 8.534E-05 9.509E-05  1.668E-02 4.909E-04 1.926E-04 1.151E-05 6.641E-08
  116  4.7065E-03  2.843E+01 5.918E-03 2.843E+01 9.868E-05 1.038E-04  1.817E-02 5.045E-04 2.082E-04 1.334E-05 7.827E-08
  115  5.1324E-03  2.674E+01 6.014E-03 2.675E+01 1.141E-04 1.132E-04  1.979E-02 5.192E-04 2.249E-04 1.545E-05 9.222E-08
  114  5.5969E-03  2.515E+01 6.106E-03 2.515E+01 1.320E-04 1.232E-04  2.155E-02 5.353E-04 2.428E-04 1.792E-05 1.086E-07
  113  6.1035E-03  2.364E+01 6.194E-03 2.364E+01 1.528E-04 1.339E-04  2.347E-02 5.529E-04 2.621E-04 2.078E-05 1.279E-07
  112  6.6559E-03  2.221E+01 6.278E-03 2.221E+01 1.769E-04 1.454E-04  2.555E-02 5.720E-04 2.827E-04 2.412E-05 1.504E-07
  111  7.2583E-03  2.086E+01 6.356E-03 2.086E+01 2.049E-04 1.577E-04  2.781E-02 5.929E-04 3.048E-04 2.800E-05 1.769E-07
  110  7.9153E-03  1.958E+01 6.430E-03 1.959E+01 2.375E-04 1.709E-04  3.027E-02 6.156E-04 3.284E-04 3.252E-05 2.079E-07
  109  8.6317E-03  1.838E+01 6.499E-03 1.838E+01 2.752E-04 1.850E-04  3.295E-02 6.404E-04 3.537E-04 3.778E-05 2.443E-07
  108  9.4129E-03  1.724E+01 6.563E-03 1.725E+01 3.191E-04 2.001E-04  3.585E-02 6.675E-04 3.806E-04 4.390E-05 2.868E-07
  107  1.0265E-02  1.617E+01 6.623E-03 1.618E+01 3.702E-04 2.163E-04  3.900E-02 6.969E-04 4.095E-04 5.103E-05 3.365E-07
  106  1.1194E-02  1.517E+01 6.678E-03 1.518E+01 4.295E-04 2.336E-04  4.241E-02 7.290E-04 4.402E-04 5.932E-05 3.946E-07
  105  1.2207E-02  1.422E+01 6.729E-03 1.423E+01 4.985E-04 2.521E-04  4.612E-02 7.640E-04 4.730E-04 6.898E-05 4.625E-07
  104  1.3312E-02  1.334E+01 6.774E-03 1.334E+01 5.787E-04 2.719E-04  5.013E-02 8.021E-04 5.080E-04 8.023E-05 5.417E-07
  103  1.4517E-02  1.250E+01 6.815E-03 1.251E+01 6.720E-04 2.930E-04  5.448E-02 8.437E-04 5.451E-04 9.331E-05 6.341E-07
  102  1.5831E-02  1.172E+01 6.849E-03 1.173E+01 7.806E-04 3.155E-04  5.919E-02 8.890E-04 5.844E-04 1.085E-04 7.417E-07
  101  1.7263E-02  1.099E+01 6.880E-03 1.099E+01 9.068E-04 3.395E-04  6.429E-02 9.384E-04 6.262E-04 1.263E-04 8.669E-07
  100  1.8826E-02  1.030E+01 6.906E-03 1.031E+01 1.054E-03 3.652E-04  6.980E-02 9.921E-04 6.707E-04 1.469E-04 1.013E-06
   99  2.0530E-02  9.654E+00 6.932E-03 9.661E+00 1.225E-03 3.924E-04  7.575E-02 1.051E-03 7.180E-04 1.709E-04 1.182E-06
   98  2.2388E-02  9.051E+00 6.956E-03 9.058E+00 1.423E-03 4.215E-04  8.218E-02 1.115E-03 7.686E-04 1.988E-04 1.380E-06
   97  2.4414E-02  8.486E+00 6.979E-03 8.493E+00 1.655E-03 4.525E-04  8.912E-02 1.184E-03 8.224E-04 2.312E-04 1.611E-06
   96  2.6624E-02  7.958E+00 7.000E-03 7.965E+00 1.923E-03 4.855E-04  9.659E-02 1.260E-03 8.796E-04 2.688E-04 1.879E-06
   95  2.9033E-02  7.465E+00 7.020E-03 7.472E+00 2.236E-03 5.207E-04  1.046E-01 1.342E-03 9.404E-04 3.125E-04 2.191E-06
   94  3.1661E-02  7.004E+00 7.037E-03 7.011E+00 2.599E-03 5.581E-04  1.133E-01 1.432E-03 1.005E-03 3.633E-04 2.554E-06
   93  3.4527E-02  6.574E+00 7.053E-03 6.581E+00 3.021E-03 5.980E-04  1.226E-01 1.530E-03 1.073E-03 4.221E-04 2.974E-06
   92  3.7652E-02  6.173E+00 7.068E-03 6.180E+00 3.512E-03 6.403E-04  1.325E-01 1.636E-03 1.145E-03 4.903E-04 3.462E-06
   91  4.1059E-02  5.798E+00 7.085E-03 5.805E+00 4.081E-03 6.853E-04  1.432E-01 1.752E-03 1.222E-03 5.693E-04 4.029E-06
   90  4.4776E-02  5.449E+00 7.103E-03 5.456E+00 4.742E-03 7.331E-04  1.546E-01 1.879E-03 1.303E-03 6.607E-04 4.687E-06
   89  4.8828E-02  5.124E+00 7.122E-03 5.131E+00 5.508E-03 7.839E-04  1.668E-01 2.016E-03 1.390E-03 7.664E-04 5.451E-06
   88  5.3247E-02  4.821E+00 7.142E-03 4.829E+00 6.397E-03 8.378E-04  1.798E-01 2.165E-03 1.481E-03 8.884E-04 6.336E-06
   87  5.8067E-02  4.540E+00 7.164E-03 4.547E+00 7.426E-03 8.951E-04  1.937E-01 2.328E-03 1.578E-03 1.029E-03 7.361E-06
   86  6.3322E-02  4.278E+00 7.191E-03 4.285E+00 8.617E-03 9.558E-04  2.084E-01 2.504E-03 1.681E-03 1.191E-03 8.551E-06
   85  6.9053E-02  4.035E+00 7.224E-03 4.042E+00 9.995E-03 1.020E-03  2.239E-01 2.696E-03 1.790E-03 1.378E-03 9.931E-06
   84  7.5303E-02  3.809E+00 7.263E-03 3.816E+00 1.159E-02 1.089E-03  2.404E-01 2.905E-03 1.907E-03 1.592E-03 1.153E-05
   83  8.2119E-02  3.599E+00 7.308E-03 3.606E+00 1.343E-02 1.162E-03  2.577E-01 3.132E-03 2.031E-03 1.838E-03 1.339E-05
   82  8.9551E-02  3.404E+00 7.359E-03 3.412E+00 1.555E-02 1.239E-03  2.760E-01 3.378E-03 2.162E-03 2.120E-03 1.555E-05
   81  9.7656E-02  3.224E+00 7.417E-03 3.232E+00 1.799E-02 1.321E-03  2.951E-01 3.646E-03 2.300E-03 2.443E-03 1.805E-05
   80  1.0649E-01  3.057E+00 7.483E-03 3.065E+00 2.080E-02 1.408E-03  3.152E-01 3.936E-03 2.448E-03 2.810E-03 2.094E-05
   79  1.1613E-01  2.903E+00 7.557E-03 2.910E+00 2.403E-02 1.500E-03  3.361E-01 4.251E-03 2.603E-03 3.229E-03 2.428E-05
   78  1.2664E-01  2.760E+00 7.642E-03 2.768E+00 2.773E-02 1.598E-03  3.578E-01 4.593E-03 2.769E-03 3.705E-03 2.816E-05
   77  1.3811E-01  2.629E+00 7.738E-03 2.636E+00 3.198E-02 1.702E-03  3.803E-01 4.963E-03 2.944E-03 4.246E-03 3.265E-05
   76  1.5061E-01  2.507E+00 7.847E-03 2.515E+00 3.684E-02 1.812E-03  4.035E-01 5.365E-03 3.130E-03 4.857E-03 3.785E-05
   75  1.6424E-01  2.396E+00 7.970E-03 2.404E+00 4.238E-02 1.929E-03  4.273E-01 5.799E-03 3.327E-03 5.547E-03 4.387E-05
   74  1.7910E-01  2.293E+00 8.110E-03 2.301E+00 4.871E-02 2.052E-03  4.517E-01 6.269E-03 3.537E-03 6.324E-03 5.085E-05
   73  1.9531E-01  2.199E+00 8.269E-03 2.207E+00 5.591E-02 2.184E-03  4.766E-01 6.777E-03 3.761E-03 7.197E-03 5.894E-05
   72  2.1299E-01  2.112E+00 8.451E-03 2.121E+00 6.408E-02 2.323E-03  5.018E-01 7.327E-03 4.001E-03 8.175E-03 6.835E-05
   71  2.3227E-01  2.033E+00 8.658E-03 2.042E+00 7.335E-02 2.472E-03  5.273E-01 7.920E-03 4.258E-03 9.268E-03 7.928E-05
   70  2.5329E-01  1.961E+00 8.893E-03 1.970E+00 8.383E-02 2.630E-03  5.530E-01 8.560E-03 4.534E-03 1.049E-02 9.202E-05
   69  2.7621E-01  1.896E+00 9.161E-03 1.905E+00 9.567E-02 2.799E-03  5.786E-01 9.250E-03 4.832E-03 1.184E-02 1.069E-04
   68  3.0121E-01  1.836E+00 9.465E-03 1.846E+00 1.090E-01 2.979E-03  6.042E-01 9.993E-03 5.154E-03 1.334E-02 1.242E-04
   67  3.2848E-01  1.783E+00 9.809E-03 1.793E+00 1.240E-01 3.171E-03  6.295E-01 1.079E-02 5.502E-03 1.499E-02 1.445E-04
   66  3.5820E-01  1.734E+00 1.020E-02 1.745E+00 1.408E-01 3.378E-03  6.544E-01 1.165E-02 5.881E-03 1.682E-02 1.683E-04
   65  3.9062E-01  1.691E+00 1.064E-02 1.702E+00 1.596E-01 3.600E-03  6.788E-01 1.258E-02 6.293E-03 1.882E-02 1.961E-04
   64  4.2598E-01  1.652E+00 1.114E-02 1.663E+00 1.807E-01 3.838E-03  7.026E-01 1.357E-02 6.743E-03 2.102E-02 2.289E-04
   63  4.6453E-01  1.618E+00 1.171E-02 1.630E+00 2.041E-01 4.096E-03  7.256E-01 1.463E-02 7.235E-03 2.342E-02 2.676E-04
   62  5.0658E-01  1.588E+00 1.234E-02 1.600E+00 2.301E-01 4.374E-03  7.478E-01 1.577E-02 7.773E-03 2.604E-02 3.131E-04
   61  5.5243E-01  1.561E+00 1.306E-02 1.574E+00 2.590E-01 4.675E-03  7.691E-01 1.699E-02 8.365E-03 2.889E-02 3.670E-04
   60  6.0243E-01  1.539E+00 1.387E-02 1.552E+00 2.910E-01 5.002E-03  7.894E-01 1.829E-02 9.015E-03 3.199E-02 4.307E-04
   59  6.5695E-01  1.519E+00 1.478E-02 1.534E+00 3.264E-01 5.358E-03  8.086E-01 1.969E-02 9.730E-03 3.534E-02 5.062E-04
   58  7.1641E-01  1.503E+00 1.581E-02 1.519E+00 3.653E-01 5.745E-03  8.267E-01 2.117E-02 1.052E-02 3.897E-02 5.959E-04
   57  7.8125E-01  1.489E+00 1.696E-02 1.506E+00 4.082E-01 6.167E-03  8.436E-01 2.276E-02 1.139E-02 4.288E-02 7.026E-04
   56  8.5196E-01  1.478E+00 1.826E-02 1.497E+00 4.553E-01 6.629E-03  8.594E-01 2.445E-02 1.235E-02 4.711E-02 8.295E-04
   55  9.2907E-01  1.470E+00 1.972E-02 1.490E+00 5.070E-01 7.135E-03  8.741E-01 2.626E-02 1.342E-02 5.165E-02 9.809E-04
   54  1.0132E+00  1.464E+00 2.137E-02 1.485E+00 5.635E-01 7.689E-03  8.876E-01 2.819E-02 1.460E-02 5.654E-02 1.161E-03
   53  1.1049E+00  1.460E+00 2.321E-02 1.483E+00 6.253E-01 8.297E-03  9.000E-01 3.025E-02 1.590E-02 6.180E-02 1.377E-03
   52  1.2049E+00  1.458E+00 2.527E-02 1.483E+00 6.927E-01 8.965E-03  9.113E-01 3.245E-02 1.734E-02 6.744E-02 1.634E-03
   51  1.3139E+00  1.457E+00 2.758E-02 1.485E+00 7.662E-01 9.699E-03  9.216E-01 3.480E-02 1.893E-02 7.350E-02 1.942E-03
   50  1.4328E+00  1.458E+00 3.017E-02 1.489E+00 8.462E-01 1.051E-02  9.309E-01 3.733E-02 2.069E-02 7.999E-02 2.310E-03
   49  1.5625E+00  1.461E+00 3.306E-02 1.494E+00 9.332E-01 1.139E-02  9.393E-01 4.004E-02 2.263E-02 8.696E-02 2.749E-03
   48  1.7039E+00  1.465E+00 3.629E-02 1.501E+00 1.028E+00 1.237E-02  9.468E-01 4.296E-02 2.478E-02 9.444E-02 3.274E-03
   47  1.8581E+00  1.470E+00 3.991E-02 1.510E+00 1.130E+00 1.344E-02  9.535E-01 4.611E-02 2.715E-02 1.024E-01 3.902E-03
   46  2.0263E+00  1.476E+00 4.394E-02 1.520E+00 1.241E+00 1.462E-02  9.594E-01 4.953E-02 2.978E-02 1.110E-01 4.654E-03
   45  2.2097E+00  1.482E+00 4.845E-02 1.531E+00 1.361E+00 1.592E-02  9.647E-01 5.324E-02 3.269E-02 1.203E-01 5.554E-03
   44  2.4097E+00  1.490E+00 5.349E-02 1.543E+00 1.491E+00 1.735E-02  9.694E-01 5.727E-02 3.591E-02 1.301E-01 6.631E-03
   43  2.6278E+00  1.498E+00 5.909E-02 1.557E+00 1.632E+00 1.893E-02  9.735E-01 6.166E-02 3.946E-02 1.407E-01 7.919E-03
   42  2.8656E+00  1.506E+00 6.534E-02 1.571E+00 1.784E+00 2.066E-02  9.771E-01 6.643E-02 4.339E-02 1.521E-01 9.460E-03
   41  3.1250E+00  1.514E+00 7.229E-02 1.587E+00 1.949E+00 2.256E-02  9.802E-01 7.161E-02 4.773E-02 1.643E-01 1.130E-02
   40  3.4078E+00  1.523E+00 8.001E-02 1.603E+00 2.126E+00 2.465E-02  9.830E-01 7.721E-02 5.252E-02 1.773E-01 1.350E-02
   39  3.7163E+00  1.532E+00 8.858E-02 1.621E+00 2.317E+00 2.694E-02  9.854E-01 8.324E-02 5.781E-02 1.913E-01 1.612E-02
   38  4.0526E+00  1.541E+00 9.809E-02 1.639E+00 2.524E+00 2.946E-02  9.875E-01 8.968E-02 6.364E-02 2.063E-01 1.925E-02
   37  4.4194E+00  1.550E+00 1.086E-01 1.659E+00 2.746E+00 3.221E-02  9.893E-01 9.653E-02 7.007E-02 2.224E-01 2.298E-02
   36  4.8194E+00  1.560E+00 1.203E-01 1.680E+00 2.986E+00 3.523E-02  9.908E-01 1.038E-01 7.716E-02 2.396E-01 2.742E-02
   35  5.2556E+00  1.569E+00 1.333E-01 1.702E+00 3.243E+00 3.853E-02  9.921E-01 1.114E-01 8.497E-02 2.579E-01 3.271E-02
   34  5.7313E+00  1.578E+00 1.477E-01 1.726E+00 3.521E+00 4.213E-02  9.933E-01 1.193E-01 9.358E-02 2.775E-01 3.898E-02
   33  6.2500E+00  1.587E+00 1.635E-01 1.751E+00 3.819E+00 4.606E-02  9.943E-01 1.276E-01 1.031E-01 2.984E-01 4.643E-02
   32  6.8157E+00  1.596E+00 1.811E-01 1.777E+00 4.140E+00 5.035E-02  9.951E-01 1.361E-01 1.135E-01 3.207E-01 5.525E-02
   31  7.4325E+00  1.605E+00 2.006E-01 1.806E+00 4.484E+00 5.501E-02  9.959E-01 1.449E-01 1.250E-01 3.444E-01 6.570E-02
   30  8.1052E+00  1.614E+00 2.220E-01 1.836E+00 4.854E+00 6.007E-02  9.965E-01 1.540E-01 1.376E-01 3.695E-01 7.804E-02
   29  8.8388E+00  1.623E+00 2.458E-01 1.869E+00 5.250E+00 6.556E-02  9.970E-01 1.632E-01 1.514E-01 3.960E-01 9.261E-02
   28  9.6388E+00  1.632E+00 2.720E-01 1.904E+00 5.674E+00 7.151E-02  9.975E-01 1.727E-01 1.667E-01 4.241E-01 1.098E-01
   27  1.0511E+01  1.640E+00 3.009E-01 1.941E+00 6.128E+00 7.794E-02  9.979E-01 1.823E-01 1.834E-01 4.538E-01 1.299E-01
   26  1.1463E+01  1.649E+00 3.327E-01 1.982E+00 6.613E+00 8.487E-02  9.982E-01 1.921E-01 2.017E-01 4.850E-01 1.536E-01
   25  1.2500E+01  1.658E+00 3.678E-01 2.026E+00 7.131E+00 9.233E-02  9.985E-01 2.020E-01 2.219E-01 5.177E-01 1.813E-01
   24  1.3631E+01  1.667E+00 4.065E-01 2.073E+00 7.683E+00 1.003E-01  9.987E-01 2.121E-01 2.439E-01 5.521E-01 2.137E-01
   23  1.4865E+01  1.675E+00 4.491E-01 2.124E+00 8.271E+00 1.089E-01  9.989E-01 2.223E-01 2.681E-01 5.879E-01 2.515E-01
   22  1.6210E+01  1.684E+00 4.960E-01 2.180E+00 8.896E+00 1.181E-01  9.991E-01 2.326E-01 2.946E-01 6.252E-01 2.954E-01
   21  1.7678E+01  1.692E+00 5.477E-01 2.240E+00 9.560E+00 1.279E-01  9.992E-01 2.429E-01 3.236E-01 6.640E-01 3.464E-01
   20  1.9278E+01  1.701E+00 6.044E-01 2.305E+00 1.026E+01 1.383E-01  9.993E-01 2.534E-01 3.554E-01 7.041E-01 4.055E-01
   19  2.1022E+01  1.709E+00 6.668E-01 2.376E+00 1.101E+01 1.494E-01  9.994E-01 2.640E-01 3.902E-01 7.456E-01 4.737E-01
   18  2.2925E+01  1.717E+00 7.354E-01 2.453E+00 1.180E+01 1.611E-01  9.995E-01 2.747E-01 4.283E-01 7.882E-01 5.524E-01
   17  2.5000E+01  1.726E+00 8.108E-01 2.536E+00 1.263E+01 1.734E-01  9.996E-01 2.855E-01 4.699E-01 8.318E-01 6.429E-01
   16  2.7263E+01  1.734E+00 8.937E-01 2.627E+00 1.351E+01 1.864E-01  9.997E-01 2.963E-01 5.155E-01 8.765E-01 7.467E-01
   15  2.9730E+01  1.742E+00 9.846E-01 2.727E+00 1.443E+01 2.001E-01  9.997E-01 3.073E-01 5.653E-01 9.219E-01 8.654E-01
   14  3.2421E+01  1.750E+00 1.085E+00 2.834E+00 1.540E+01 2.143E-01  9.998E-01 3.183E-01 6.198E-01 9.679E-01 1.001E+00
   13  3.5355E+01  1.758E+00 1.194E+00 2.952E+00 1.641E+01 2.292E-01  9.998E-01 3.294E-01 6.793E-01 1.014E+00 1.155E+00
   12  3.8555E+01  1.766E+00 1.314E+00 3.080E+00 1.747E+01 2.447E-01  9.998E-01 3.407E-01 7.444E-01 1.061E+00 1.330E+00
   11  4.2045E+01  1.774E+00 1.446E+00 3.220E+00 1.858E+01 2.608E-01  9.999E-01 3.520E-01 8.155E-01 1.108E+00 1.529E+00
   10  4.5850E+01  1.781E+00 1.591E+00 3.372E+00 1.973E+01 2.773E-01  9.999E-01 3.634E-01 8.932E-01 1.155E+00 1.753E+00
    9  5.0000E+01  1.789E+00 1.750E+00 3.539E+00 2.093E+01 2.944E-01  9.999E-01 3.749E-01 9.781E-01 1.201E+00 2.006E+00
    8  5.4525E+01  1.797E+00 1.924E+00 3.720E+00 2.218E+01 3.120E-01  9.999E-01 3.866E-01 1.071E+00 1.247E+00 2.290E+00
    7  5.9460E+01  1.804E+00 2.114E+00 3.918E+00 2.347E+01 3.300E-01  9.999E-01 3.983E-01 1.172E+00 1.292E+00 2.608E+00
    6  6.4842E+01  1.811E+00 2.323E+00 4.134E+00 2.481E+01 3.483E-01  9.999E-01 4.102E-01 1.283E+00 1.337E+00 2.965E+00
    5  7.0711E+01  1.819E+00 2.552E+00 4.370E+00 2.619E+01 3.670E-01  9.999E-01 4.221E-01 1.403E+00 1.380E+00 3.363E+00
    4  7.7111E+01  1.826E+00 2.802E+00 4.628E+00 2.761E+01 3.859E-01  1.000E+00 4.341E-01 1.535E+00 1.423E+00 3.807E+00
    3  8.4090E+01  1.833E+00 3.076E+00 4.909E+00 2.908E+01 4.050E-01  1.000E+00 4.462E-01 1.679E+00 1.464E+00 4.301E+00
    2  9.1700E+01  1.840E+00 3.377E+00 5.217E+00 3.058E+01 4.243E-01  1.000E+00 4.584E-01 1.835E+00 1.504E+00 4.849E+00
    1  1.0000E+02  1.847E+00 3.705E+00 5.552E+00 3.212E+01 4.436E-01  1.000E+00 4.707E-01 2.006E+00 1.542E+00 5.457E+00

1electron secondary production for material        6                                                        print table 86

         energy           stopping power           brems   thick tgt   k x-ray   knock-on
    n              collision radiation   total               brems
          mev      mev barn  mev barn  mev barn    barn                 barn      barn
  133  1.0790E-03  3.187E+03 1.777E-01 3.187E+03 2.124E+03 5.991E-05  0.000E+00 0.000E+00
  132  1.1766E-03  3.048E+03 1.830E-01 3.048E+03 2.021E+03 1.249E-04  0.000E+00 0.000E+00
  131  1.2831E-03  2.910E+03 1.883E-01 2.911E+03 1.921E+03 1.953E-04  0.000E+00 0.000E+00
  130  1.3992E-03  2.775E+03 1.936E-01 2.775E+03 1.825E+03 2.719E-04  0.000E+00 0.000E+00
  129  1.5259E-03  2.642E+03 1.990E-01 2.642E+03 1.732E+03 3.551E-04  0.000E+00 0.000E+00
  128  1.6640E-03  2.512E+03 2.044E-01 2.512E+03 1.643E+03 4.456E-04  1.322E+04 0.000E+00
  127  1.8146E-03  2.386E+03 2.098E-01 2.386E+03 1.557E+03 5.440E-04  1.363E+04 0.000E+00
  126  1.9788E-03  2.263E+03 2.152E-01 2.263E+03 1.474E+03 6.512E-04  1.412E+04 0.000E+00
  125  2.1579E-03  2.145E+03 2.205E-01 2.145E+03 1.395E+03 7.679E-04  1.461E+04 2.709E+04
  124  2.3532E-03  2.030E+03 2.258E-01 2.030E+03 1.319E+03 8.950E-04  1.506E+04 4.811E+04
  123  2.5662E-03  1.920E+03 2.311E-01 1.921E+03 1.247E+03 1.033E-03  1.543E+04 6.221E+04
  122  2.7985E-03  1.815E+03 2.363E-01 1.815E+03 1.177E+03 1.184E-03  1.571E+04 7.162E+04
  121  3.0518E-03  1.714E+03 2.414E-01 1.714E+03 1.111E+03 1.349E-03  1.588E+04 7.776E+04
  120  3.3280E-03  1.617E+03 2.464E-01 1.617E+03 1.048E+03 1.528E-03  1.596E+04 8.151E+04
  119  3.6292E-03  1.525E+03 2.513E-01 1.525E+03 9.871E+02 1.723E-03  1.593E+04 8.350E+04
  118  3.9576E-03  1.437E+03 2.561E-01 1.437E+03 9.296E+02 1.936E-03  1.581E+04 8.415E+04
  117  4.3158E-03  1.353E+03 2.607E-01 1.354E+03 8.749E+02 2.168E-03  1.561E+04 8.378E+04
  116  4.7065E-03  1.274E+03 2.652E-01 1.274E+03 8.229E+02 2.420E-03  1.534E+04 8.261E+04
  115  5.1324E-03  1.198E+03 2.695E-01 1.199E+03 7.735E+02 2.696E-03  1.500E+04 8.084E+04
  114  5.5969E-03  1.127E+03 2.736E-01 1.127E+03 7.266E+02 2.995E-03  1.461E+04 7.860E+04
  113  6.1035E-03  1.059E+03 2.775E-01 1.059E+03 6.822E+02 3.322E-03  1.418E+04 7.602E+04
  112  6.6559E-03  9.950E+02 2.813E-01 9.953E+02 6.400E+02 3.678E-03  1.371E+04 7.318E+04
  111  7.2583E-03  9.344E+02 2.848E-01 9.347E+02 6.002E+02 4.066E-03  1.322E+04 7.017E+04
  110  7.9153E-03  8.773E+02 2.881E-01 8.776E+02 5.626E+02 4.488E-03  1.270E+04 6.705E+04
  109  8.6317E-03  8.234E+02 2.912E-01 8.237E+02 5.273E+02 4.947E-03  1.218E+04 6.388E+04
  108  9.4129E-03  7.726E+02 2.941E-01 7.728E+02 4.938E+02 5.447E-03  1.165E+04 6.069E+04
  107  1.0265E-02  7.247E+02 2.967E-01 7.250E+02 4.619E+02 5.991E-03  1.112E+04 5.752E+04
  106  1.1194E-02  6.797E+02 2.992E-01 6.800E+02 4.314E+02 6.583E-03  1.060E+04 5.440E+04
  105  1.2207E-02  6.373E+02 3.015E-01 6.376E+02 4.029E+02 7.225E-03  1.008E+04 5.135E+04
  104  1.3312E-02  5.975E+02 3.035E-01 5.978E+02 3.767E+02 7.923E-03  9.569E+03 4.839E+04
  103  1.4517E-02  5.602E+02 3.053E-01 5.605E+02 3.528E+02 8.683E-03  9.073E+03 4.553E+04
  102  1.5831E-02  5.251E+02 3.069E-01 5.254E+02 3.314E+02 9.512E-03  8.592E+03 4.278E+04
  101  1.7263E-02  4.922E+02 3.082E-01 4.925E+02 3.119E+02 1.042E-02  8.128E+03 4.015E+04
  100  1.8826E-02  4.614E+02 3.094E-01 4.617E+02 2.933E+02 1.141E-02  7.681E+03 3.765E+04
   99  2.0530E-02  4.325E+02 3.106E-01 4.328E+02 2.747E+02 1.249E-02  7.253E+03 3.526E+04
   98  2.2388E-02  4.055E+02 3.117E-01 4.058E+02 2.561E+02 1.367E-02  6.843E+03 3.301E+04
   97  2.4414E-02  3.802E+02 3.127E-01 3.805E+02 2.379E+02 1.495E-02  6.452E+03 3.088E+04
   96  2.6624E-02  3.566E+02 3.137E-01 3.569E+02 2.208E+02 1.632E-02  6.081E+03 2.887E+04
   95  2.9033E-02  3.345E+02 3.145E-01 3.348E+02 2.051E+02 1.781E-02  5.728E+03 2.698E+04
   94  3.1661E-02  3.138E+02 3.153E-01 3.141E+02 1.911E+02 1.941E-02  5.394E+03 2.521E+04
   93  3.4527E-02  2.945E+02 3.160E-01 2.949E+02 1.785E+02 2.115E-02  5.079E+03 2.355E+04
   92  3.7652E-02  2.766E+02 3.167E-01 2.769E+02 1.669E+02 2.304E-02  4.781E+03 2.199E+04
   91  4.1059E-02  2.598E+02 3.174E-01 2.601E+02 1.560E+02 2.510E-02  4.501E+03 2.054E+04
   90  4.4776E-02  2.442E+02 3.182E-01 2.445E+02 1.457E+02 2.732E-02  4.238E+03 1.919E+04
   89  4.8828E-02  2.296E+02 3.191E-01 2.299E+02 1.364E+02 2.973E-02  3.990E+03 1.793E+04
   88  5.3247E-02  2.160E+02 3.200E-01 2.163E+02 1.281E+02 3.236E-02  3.759E+03 1.676E+04
   87  5.8067E-02  2.034E+02 3.210E-01 2.037E+02 1.206E+02 3.521E-02  3.542E+03 1.567E+04
   86  6.3322E-02  1.917E+02 3.222E-01 1.920E+02 1.134E+02 3.832E-02  3.339E+03 1.466E+04
   85  6.9053E-02  1.808E+02 3.237E-01 1.811E+02 1.063E+02 4.170E-02  3.149E+03 1.372E+04
   84  7.5303E-02  1.706E+02 3.254E-01 1.710E+02 9.951E+01 4.536E-02  2.973E+03 1.286E+04
   83  8.2119E-02  1.612E+02 3.274E-01 1.616E+02 9.326E+01 4.931E-02  2.808E+03 1.205E+04
   82  8.9551E-02  1.525E+02 3.297E-01 1.529E+02 8.758E+01 5.359E-02  2.655E+03 1.131E+04
   81  9.7656E-02  1.445E+02 3.323E-01 1.448E+02 8.235E+01 5.823E-02  2.513E+03 1.063E+04
   80  1.0649E-01  1.370E+02 3.353E-01 1.373E+02 7.752E+01 6.324E-02  2.380E+03 9.993E+03
   79  1.1613E-01  1.301E+02 3.386E-01 1.304E+02 7.303E+01 6.866E-02  2.258E+03 9.409E+03
   78  1.2664E-01  1.237E+02 3.424E-01 1.240E+02 6.889E+01 7.453E-02  2.145E+03 8.871E+03
   77  1.3811E-01  1.178E+02 3.467E-01 1.181E+02 6.507E+01 8.088E-02  2.040E+03 8.376E+03
   76  1.5061E-01  1.123E+02 3.516E-01 1.127E+02 6.158E+01 8.774E-02  1.943E+03 7.920E+03
   75  1.6424E-01  1.073E+02 3.571E-01 1.077E+02 5.839E+01 9.517E-02  1.854E+03 7.500E+03
   74  1.7910E-01  1.027E+02 3.634E-01 1.031E+02 5.548E+01 1.032E-01  1.771E+03 7.115E+03
   73  1.9531E-01  9.851E+01 3.705E-01 9.888E+01 5.282E+01 1.119E-01  1.696E+03 6.761E+03
   72  2.1299E-01  9.464E+01 3.786E-01 9.502E+01 5.039E+01 1.213E-01  1.627E+03 6.437E+03
   71  2.3227E-01  9.110E+01 3.879E-01 9.149E+01 4.817E+01 1.315E-01  1.563E+03 6.140E+03
   70  2.5329E-01  8.788E+01 3.985E-01 8.827E+01 4.615E+01 1.426E-01  1.505E+03 5.867E+03
   69  2.7621E-01  8.494E+01 4.104E-01 8.535E+01 4.432E+01 1.545E-01  1.453E+03 5.618E+03
   68  3.0121E-01  8.228E+01 4.241E-01 8.270E+01 4.266E+01 1.675E-01  1.405E+03 5.391E+03
   67  3.2848E-01  7.987E+01 4.395E-01 8.031E+01 4.116E+01 1.815E-01  1.362E+03 5.183E+03
   66  3.5820E-01  7.771E+01 4.570E-01 7.816E+01 3.982E+01 1.967E-01  1.323E+03 4.994E+03
   65  3.9062E-01  7.576E+01 4.768E-01 7.624E+01 3.863E+01 2.132E-01  1.288E+03 4.821E+03
   64  4.2598E-01  7.403E+01 4.992E-01 7.453E+01 3.758E+01 2.310E-01  1.256E+03 4.664E+03
   63  4.6453E-01  7.249E+01 5.245E-01 7.302E+01 3.666E+01 2.504E-01  1.229E+03 4.522E+03
   62  5.0658E-01  7.114E+01 5.530E-01 7.169E+01 3.585E+01 2.715E-01  1.204E+03 4.393E+03
   61  5.5243E-01  6.996E+01 5.852E-01 7.054E+01 3.515E+01 2.944E-01  1.183E+03 4.276E+03
   60  6.0243E-01  6.894E+01 6.214E-01 6.956E+01 3.454E+01 3.193E-01  1.164E+03 4.170E+03
   59  6.5695E-01  6.806E+01 6.623E-01 6.873E+01 3.403E+01 3.463E-01  1.149E+03 4.075E+03
   58  7.1641E-01  6.733E+01 7.083E-01 6.804E+01 3.359E+01 3.757E-01  1.136E+03 3.989E+03
   57  7.8125E-01  6.672E+01 7.600E-01 6.748E+01 3.322E+01 4.077E-01  1.125E+03 3.912E+03
   56  8.5196E-01  6.624E+01 8.183E-01 6.705E+01 3.292E+01 4.425E-01  1.116E+03 3.843E+03
   55  9.2907E-01  6.586E+01 8.838E-01 6.674E+01 3.269E+01 4.803E-01  1.109E+03 3.780E+03
   54  1.0132E+00  6.559E+01 9.573E-01 6.654E+01 3.250E+01 5.214E-01  1.105E+03 3.725E+03
   53  1.1049E+00  6.541E+01 1.040E+00 6.645E+01 3.236E+01 5.662E-01  1.102E+03 3.676E+03
   52  1.2049E+00  6.531E+01 1.132E+00 6.644E+01 3.227E+01 6.148E-01  1.101E+03 3.632E+03
   51  1.3139E+00  6.529E+01 1.236E+00 6.653E+01 3.222E+01 6.677E-01  1.101E+03 3.593E+03
   50  1.4328E+00  6.534E+01 1.352E+00 6.670E+01 3.221E+01 7.252E-01  1.103E+03 3.558E+03
   49  1.5625E+00  6.546E+01 1.481E+00 6.694E+01 3.223E+01 7.877E-01  1.106E+03 3.528E+03
   48  1.7039E+00  6.563E+01 1.626E+00 6.726E+01 3.229E+01 8.557E-01  1.110E+03 3.501E+03
   47  1.8581E+00  6.585E+01 1.788E+00 6.764E+01 3.236E+01 9.296E-01  1.115E+03 3.477E+03
   46  2.0263E+00  6.611E+01 1.969E+00 6.808E+01 3.243E+01 1.010E+00  1.122E+03 3.456E+03
   45  2.2097E+00  6.641E+01 2.171E+00 6.858E+01 3.250E+01 1.097E+00  1.129E+03 3.438E+03
   44  2.4097E+00  6.674E+01 2.396E+00 6.914E+01 3.257E+01 1.192E+00  1.137E+03 3.422E+03
   43  2.6278E+00  6.710E+01 2.648E+00 6.974E+01 3.264E+01 1.294E+00  1.146E+03 3.408E+03
   42  2.8656E+00  6.747E+01 2.928E+00 7.039E+01 3.274E+01 1.405E+00  1.155E+03 3.396E+03
   41  3.1250E+00  6.785E+01 3.239E+00 7.109E+01 3.286E+01 1.525E+00  1.166E+03 3.386E+03
   40  3.4078E+00  6.825E+01 3.585E+00 7.183E+01 3.301E+01 1.656E+00  1.176E+03 3.376E+03
   39  3.7163E+00  6.865E+01 3.969E+00 7.262E+01 3.317E+01 1.797E+00  1.188E+03 3.369E+03
   38  4.0526E+00  6.906E+01 4.395E+00 7.345E+01 3.333E+01 1.950E+00  1.199E+03 3.362E+03
   37  4.4194E+00  6.947E+01 4.868E+00 7.434E+01 3.348E+01 2.116E+00  1.212E+03 3.356E+03
   36  4.8194E+00  6.988E+01 5.392E+00 7.527E+01 3.362E+01 2.295E+00  1.224E+03 3.351E+03
   35  5.2556E+00  7.029E+01 5.973E+00 7.626E+01 3.376E+01 2.489E+00  1.237E+03 3.347E+03
   34  5.7313E+00  7.070E+01 6.616E+00 7.731E+01 3.389E+01 2.699E+00  1.250E+03 3.343E+03
   33  6.2500E+00  7.110E+01 7.328E+00 7.843E+01 3.401E+01 2.925E+00  1.264E+03 3.340E+03
   32  6.8157E+00  7.151E+01 8.115E+00 7.962E+01 3.413E+01 3.169E+00  1.278E+03 3.337E+03
   31  7.4325E+00  7.191E+01 8.986E+00 8.090E+01 3.424E+01 3.431E+00  1.292E+03 3.335E+03
   30  8.1052E+00  7.231E+01 9.948E+00 8.226E+01 3.434E+01 3.714E+00  1.306E+03 3.333E+03
   29  8.8388E+00  7.271E+01 1.101E+01 8.372E+01 3.443E+01 4.018E+00  1.320E+03 3.331E+03
   28  9.6388E+00  7.311E+01 1.218E+01 8.529E+01 3.452E+01 4.344E+00  1.335E+03 3.329E+03
   27  1.0511E+01  7.350E+01 1.348E+01 8.698E+01 3.459E+01 4.694E+00  1.349E+03 3.328E+03
   26  1.1463E+01  7.389E+01 1.491E+01 8.880E+01 3.466E+01 5.069E+00  1.364E+03 3.327E+03
   25  1.2500E+01  7.428E+01 1.648E+01 9.076E+01 3.472E+01 5.470E+00  1.379E+03 3.326E+03
   24  1.3631E+01  7.467E+01 1.821E+01 9.288E+01 3.478E+01 5.898E+00  1.394E+03 3.326E+03
   23  1.4865E+01  7.505E+01 2.012E+01 9.518E+01 3.483E+01 6.355E+00  1.409E+03 3.325E+03
   22  1.6210E+01  7.543E+01 2.223E+01 9.766E+01 3.488E+01 6.841E+00  1.424E+03 3.324E+03
   21  1.7678E+01  7.582E+01 2.454E+01 1.004E+02 3.492E+01 7.359E+00  1.439E+03 3.324E+03
   20  1.9278E+01  7.619E+01 2.708E+01 1.033E+02 3.495E+01 7.908E+00  1.455E+03 3.324E+03
   19  2.1022E+01  7.657E+01 2.988E+01 1.064E+02 3.499E+01 8.489E+00  1.470E+03 3.323E+03
   18  2.2925E+01  7.694E+01 3.295E+01 1.099E+02 3.501E+01 9.105E+00  1.485E+03 3.323E+03
   17  2.5000E+01  7.731E+01 3.633E+01 1.136E+02 3.504E+01 9.755E+00  1.501E+03 3.323E+03
   16  2.7263E+01  7.768E+01 4.004E+01 1.177E+02 3.507E+01 1.044E+01  1.516E+03 3.323E+03
   15  2.9730E+01  7.804E+01 4.412E+01 1.222E+02 3.509E+01 1.116E+01  1.532E+03 3.322E+03
   14  3.2421E+01  7.841E+01 4.859E+01 1.270E+02 3.512E+01 1.192E+01  1.548E+03 3.322E+03
   13  3.5355E+01  7.876E+01 5.350E+01 1.323E+02 3.514E+01 1.272E+01  1.563E+03 3.322E+03
   12  3.8555E+01  7.912E+01 5.889E+01 1.380E+02 3.516E+01 1.355E+01  1.579E+03 3.322E+03
   11  4.2045E+01  7.947E+01 6.481E+01 1.443E+02 3.517E+01 1.442E+01  1.594E+03 3.322E+03
   10  4.5850E+01  7.981E+01 7.129E+01 1.511E+02 3.518E+01 1.533E+01  1.610E+03 3.322E+03
    9  5.0000E+01  8.015E+01 7.840E+01 1.586E+02 3.518E+01 1.627E+01  1.626E+03 3.322E+03
    8  5.4525E+01  8.049E+01 8.619E+01 1.667E+02 3.518E+01 1.725E+01  1.642E+03 3.322E+03
    7  5.9460E+01  8.083E+01 9.473E+01 1.756E+02 3.518E+01 1.826E+01  1.657E+03 3.322E+03
    6  6.4842E+01  8.115E+01 1.041E+02 1.852E+02 3.517E+01 1.931E+01  1.673E+03 3.322E+03
    5  7.0711E+01  8.148E+01 1.143E+02 1.958E+02 3.515E+01 2.040E+01  1.689E+03 3.322E+03
    4  7.7111E+01  8.180E+01 1.256E+02 2.074E+02 3.513E+01 2.151E+01  1.705E+03 3.322E+03
    3  8.4090E+01  8.212E+01 1.378E+02 2.200E+02 3.512E+01 2.266E+01  1.720E+03 3.322E+03
    2  9.1700E+01  8.243E+01 1.513E+02 2.337E+02 3.511E+01 2.384E+01  1.736E+03 3.322E+03
    1  1.0000E+02  8.274E+01 1.660E+02 2.488E+02 3.511E+01 2.505E+01  1.752E+03 3.322E+03

 ***********************************************************************************************************************

 dump no.    1 on file variance_reduction.ir     nps =           0     coll =              0     ctm =        0.00   nrn
 =                 0

         5 warning messages so far.
1starting mcrun.      cp0 =  0.04                                                                       print table 110

      Generated using CardSharp:Jezebel reactor                                       


     nps    x          y          z          cell       surf     u          v          w        energy     weight      time
 
      1 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  9.235E-01  2.753E-01 -2.672E-01  5.000E-01  1.000E+00  0.000E+00
      2 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  7.113E-01 -5.598E-01 -4.251E-01  5.000E-01  1.000E+00  0.000E+00
      3 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  9.156E-01  3.299E-01  2.300E-01  5.000E-01  1.000E+00  0.000E+00
      4 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.191E-01 -5.516E-01  1.575E-01  5.000E-01  1.000E+00  0.000E+00
      5 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  7.448E-01 -6.558E-01 -1.232E-01  5.000E-01  1.000E+00  0.000E+00
      6 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.372E-01  2.840E-01 -4.673E-01  5.000E-01  1.000E+00  0.000E+00
      9 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  9.394E-01  3.401E-01  4.386E-02  5.000E-01  1.000E+00  0.000E+00
      7 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.568E-01  4.281E-02 -5.138E-01  5.000E-01  1.000E+00  0.000E+00
      8 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.945E-01 -3.217E-01  3.105E-01  5.000E-01  1.000E+00  0.000E+00
     10 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.166E-01 -4.696E-01  3.356E-01  5.000E-01  1.000E+00  0.000E+00
     11 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  7.960E-01  4.614E-01 -3.918E-01  5.000E-01  1.000E+00  0.000E+00
     12 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.220E-01  5.440E-02 -5.668E-01  5.000E-01  1.000E+00  0.000E+00
     13 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  7.715E-01  6.358E-01 -2.195E-02  5.000E-01  1.000E+00  0.000E+00
     14 -4.000E+01  0.000E+00  0.000E+00        5     1001.3  8.061E-01  5.892E-01  5.531E-02  5.000E-01  1.000E+00  0.000E+00
     15 -4.000E+01  0.000E+00  0.000E+00        5          0  9.904E-01  1.350E-01 -3.071E-02  5.000E-01  1.000E+00  0.000E+00
     16 -4.000E+01  0.000E+00  0.000E+00        5          0  9.999E-01  1.933E-03  1.581E-02  5.000E-01  1.000E+00  0.000E+00
     17 -4.000E+01  0.000E+00  0.000E+00        5          0  7.211E-01  4.843E-01  4.955E-01  5.000E-01  1.000E+00  0.000E+00
     18 -4.000E+01  0.000E+00  0.000E+00        5          0  8.963E-01  3.634E-01 -2.540E-01  5.000E-01  1.000E+00  0.000E+00
     19 -4.000E+01  0.000E+00  0.000E+00        5          0  8.434E-01  4.203E-01  3.347E-01  5.000E-01  1.000E+00  0.000E+00
     21 -4.000E+01  0.000E+00  0.000E+00        5          0  9.463E-01 -1.979E-01 -2.558E-01  5.000E-01  1.000E+00  0.000E+00
     20 -4.000E+01  0.000E+00  0.000E+00        5          0  9.534E-01  6.196E-02  2.952E-01  5.000E-01  1.000E+00  0.000E+00
     23 -4.000E+01  0.000E+00  0.000E+00        5          0  9.260E-01 -2.258E-01  3.025E-01  5.000E-01  1.000E+00  0.000E+00
     22 -4.000E+01  0.000E+00  0.000E+00        5          0  8.262E-01 -1.671E-01 -5.380E-01  5.000E-01  1.000E+00  0.000E+00
     24 -4.000E+01  0.000E+00  0.000E+00        5          0  8.910E-01  4.379E-01 -1.200E-01  5.000E-01  1.000E+00  0.000E+00
     25 -4.000E+01  0.000E+00  0.000E+00        5          0  9.187E-01 -3.950E-01  8.636E-03  5.000E-01  1.000E+00  0.000E+00
     26 -4.000E+01  0.000E+00  0.000E+00        5          0  7.945E-01  4.049E-02 -6.059E-01  5.000E-01  1.000E+00  0.000E+00
     27 -4.000E+01  0.000E+00  0.000E+00        5          0  9.272E-01 -6.493E-02  3.688E-01  5.000E-01  1.000E+00  0.000E+00
     28 -4.000E+01  0.000E+00  0.000E+00        5          0  7.480E-01  1.815E-01  6.384E-01  5.000E-01  1.000E+00  0.000E+00
     29 -4.000E+01  0.000E+00  0.000E+00        5          0  7.912E-01 -3.937E-01  4.679E-01  5.000E-01  1.000E+00  0.000E+00
     30 -4.000E+01  0.000E+00  0.000E+00        5          0  7.107E-01 -5.106E-01 -4.840E-01  5.000E-01  1.000E+00  0.000E+00
     31 -4.000E+01  0.000E+00  0.000E+00        5          0  8.967E-01  4.424E-01 -1.297E-02  5.000E-01  1.000E+00  0.000E+00
     32 -4.000E+01  0.000E+00  0.000E+00        5          0  8.176E-01  3.657E-01  4.448E-01  5.000E-01  1.000E+00  0.000E+00
     33 -4.000E+01  0.000E+00  0.000E+00        5          0  8.238E-01  1.469E-01  5.475E-01  5.000E-01  1.000E+00  0.000E+00
     34 -4.000E+01  0.000E+00  0.000E+00        5          0  9.677E-01 -2.382E-01 -8.311E-02  5.000E-01  1.000E+00  0.000E+00
     35 -4.000E+01  0.000E+00  0.000E+00        5          0  9.432E-01 -3.036E-02 -3.308E-01  5.000E-01  1.000E+00  0.000E+00
     36 -4.000E+01  0.000E+00  0.000E+00        5          0  7.357E-01  6.755E-01  4.967E-02  5.000E-01  1.000E+00  0.000E+00
     37 -4.000E+01  0.000E+00  0.000E+00        5          0  7.079E-01 -8.304E-02 -7.014E-01  5.000E-01  1.000E+00  0.000E+00
     38 -4.000E+01  0.000E+00  0.000E+00        5          0  8.751E-01  2.345E-01  4.233E-01  5.000E-01  1.000E+00  0.000E+00
     39 -4.000E+01  0.000E+00  0.000E+00        5          0  8.002E-01 -4.822E-02  5.979E-01  5.000E-01  1.000E+00  0.000E+00
     40 -4.000E+01  0.000E+00  0.000E+00        5          0  7.685E-01  9.961E-02  6.321E-01  5.000E-01  1.000E+00  0.000E+00
     41 -4.000E+01  0.000E+00  0.000E+00        5          0  7.844E-01  5.259E-01  3.288E-01  5.000E-01  1.000E+00  0.000E+00
     42 -4.000E+01  0.000E+00  0.000E+00        5          0  7.413E-01  6.615E-01  1.134E-01  5.000E-01  1.000E+00  0.000E+00
     43 -4.000E+01  0.000E+00  0.000E+00        5          0  9.443E-01 -1.659E-01  2.842E-01  5.000E-01  1.000E+00  0.000E+00
     44 -4.000E+01  0.000E+00  0.000E+00        5          0  9.383E-01  1.988E-01 -2.831E-01  5.000E-01  1.000E+00  0.000E+00
     45 -4.000E+01  0.000E+00  0.000E+00        5          0  8.231E-01 -3.742E-01  4.271E-01  5.000E-01  1.000E+00  0.000E+00
     46 -4.000E+01  0.000E+00  0.000E+00        5          0  7.521E-01  6.371E-01  1.689E-01  5.000E-01  1.000E+00  0.000E+00
     47 -4.000E+01  0.000E+00  0.000E+00        5          0  9.663E-01 -2.278E-01 -1.199E-01  5.000E-01  1.000E+00  0.000E+00
     48 -4.000E+01  0.000E+00  0.000E+00        5          0  9.772E-01  1.482E-01 -1.520E-01  5.000E-01  1.000E+00  0.000E+00
     49 -4.000E+01  0.000E+00  0.000E+00        5          0  9.190E-01 -2.534E-01  3.021E-01  5.000E-01  1.000E+00  0.000E+00
     50 -4.000E+01  0.000E+00  0.000E+00        5          0  7.570E-01 -4.970E-01  4.243E-01  5.000E-01  1.000E+00  0.000E+00

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  2 3.9195E-02 1.0000E+00 1.1318E+03 9.4497E-01 4.2265E+01 0.0000E+00 5.0000E-01     2      129123    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 4.5747E-02 1.0000E+00 4.4629E+02 5.7326E-02 3.8290E+01 0.0000E+00 5.0000E-01     1      566762    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 3.4748E-02 1.0000E+00 7.1996E+02 7.2007E-01 4.0063E+01 0.0000E+00 4.0777E-01     1      654801    4                  41         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 1.5934E-01 1.0000E+00 2.6263E+03 4.8208E-01 4.0247E+01 0.0000E+00 5.0000E-01     1      731915    1                  10         6

 ***********************************************************************************************************************

 dump no.    2 on file variance_reduction.ir     nps =     1000000     coll =        2732715     ctm =       19.50   nrn
 =          42106002

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  2 4.7087E-02 1.0000E+00 1.3587E+03 9.4440E-01 4.2261E+01 0.0000E+00 5.0000E-01     2     1307173    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 4.5010E-02 1.0000E+00 1.0035E+03 7.3310E-01 4.1287E+01 0.0000E+00 5.0000E-01     1     1875557    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  2 3.7987E-02 1.0000E+00 1.4466E+03 1.1746E+00 4.3271E+01 0.0000E+00 5.0000E-01     2     1951932    1                  10         6

 ***********************************************************************************************************************

 dump no.    3 on file variance_reduction.ir     nps =     2000000     coll =        5473561     ctm =       38.34   nrn
 =          84331212

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 5.6405E-02 1.0000E+00 2.1935E+03 1.1910E+00 4.3370E+01 0.0000E+00 5.0000E-01     1     2238337    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 1.1377E-01 1.0000E+00 1.8651E+03 4.7782E-01 4.0224E+01 0.0000E+00 5.0000E-01     1     2311834    1                  14         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 5.3170E-02 1.0000E+00 9.4799E+02 5.4357E-01 4.0592E+01 0.0000E+00 5.0000E-01     1     2710641    1                  16         6

 ***********************************************************************************************************************

 dump no.    4 on file variance_reduction.ir     nps =     3000000     coll =        8208606     ctm =       57.53   nrn
 =         126486957

 ***********************************************************************************************************************

 dump no.    5 on file variance_reduction.ir     nps =     4000000     coll =       10955374     ctm =       77.26   nrn
 =         168809949

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 5.6787E-02 1.0000E+00 9.0847E+02 4.5337E-01 4.0225E+01 0.0000E+00 5.0000E-01     1     4043462    1                  12         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  2 3.3238E-02 1.0000E+00 1.2776E+03 1.0942E+00 4.5258E+01 0.0000E+00 4.5459E-01     2     4587178    2                  25         6

 ***********************************************************************************************************************

 dump no.    6 on file variance_reduction.ir     nps =     5000000     coll =       13685528     ctm =      107.00   nrn
 =         210902627

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 3.4754E-02 1.0000E+00 1.1387E+03 1.0464E+00 4.2795E+01 0.0000E+00 5.0000E-01     1     5538404    1                  12         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 3.3507E-02 1.0000E+00 4.2948E+02 2.6988E-01 3.9465E+01 0.0000E+00 5.0000E-01     1     5666789    1                  14         6

 ***********************************************************************************************************************

 dump no.    7 on file variance_reduction.ir     nps =     6000000     coll =       16419271     ctm =      138.56   nrn
 =         253050358

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 7.1842E-02 1.0000E+00 1.1980E+03 4.9256E-01 4.0270E+01 0.0000E+00 5.0000E-01     1     6118928    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  2 6.7219E-02 1.0000E+00 2.7878E+03 1.2448E+00 4.3599E+01 0.0000E+00 5.0000E-01     2     6200651    1                  10         6

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 7.9561E-02 1.0000E+00 7.6269E+02 4.1419E-02 3.8259E+01 0.0000E+00 5.0000E-01     1     6783047    1                  12         6

 ***********************************************************************************************************************

 dump no.    8 on file variance_reduction.ir     nps =     7000000     coll =       19161864     ctm =      170.12   nrn
 =         295312176

 ***********************************************************************************************************************

 dump no.    9 on file variance_reduction.ir     nps =     8000000     coll =       21901904     ctm =      202.81   nrn
 =         337533422

 ***********************************************************************************************************************

 dump no.   10 on file variance_reduction.ir     nps =     9000000     coll =       24626237     ctm =      235.83   nrn
 =         379530795

 det     t         wgt        psc       amfp       ddetx     radius       erg     cell         nps  nch   p             nrn      ipsc
  1 4.1789E-02 1.0000E+00 4.1396E+02 5.0356E-02 3.8719E+01 0.0000E+00 4.6083E-01     1     9545906    2                  18         6
1problem summary                                                                                                           

      run terminated when    10000000  particle histories were done.
+                                                                                                    12/29/24 21:39:39 
      Generated using CardSharp:Jezebel reactor                                            probid =  12/29/24 21:38:13 

 photon creation     tracks      weight        energy            photon loss         tracks      weight        energy
                                 (per source particle)                                           (per source particle)

 source            10000000    1.0000E+00    5.0000E-01          escape            26217407    9.7199E-01    4.4691E-01
 nucl. interaction        0    0.            0.                  energy cutoff            0    0.            2.3592E-06
 particle decay           0    0.            0.                  time cutoff              0    0.            0.        
 weight window            0    0.            0.                  weight window            0    0.            0.        
 cell importance   21597276    3.1305E-02    5.1803E-03          cell importance    3975048    3.1340E-02    5.1874E-03
 weight cutoff            0    0.            0.                  weight cutoff            0    0.            0.        
 e or t importance        0    0.            0.                  e or t importance        0    0.            0.        
 dxtran                   0    0.            0.                  dxtran                   0    0.            0.        
 forced collisions        0    0.            0.                  forced collisions        0    0.            0.        
 exp. transform           0    0.            0.                  exp. transform           0    0.            0.        
 from neutrons            0    0.            0.                  compton scatter          0    0.            5.0382E-02
 bremsstrahlung      327944    7.5207E-03    1.1244E-04          capture            1790044    3.6674E-02    2.8170E-03
 p-annihilation           0    0.            0.                  pair production          0    0.            0.        
 photonuclear             0    0.            0.                  photonuclear abs         0    0.            0.        
 electron x-rays          0    0.            0.                  loss to photofis         0    0.            0.        
 compton fluores          0    0.            0.                                                                        
 muon capt fluores        0    0.            0.                                                                        
 1st fluorescence     57279    1.1798E-03    1.7337E-06                                                                
 2nd fluorescence         0    0.            0.                                                                        
 (gamma,xgamma)           0    0.            0.                                                                        
 tabular sampling         0    0.            0.                                                                        
 prompt photofis          0    0.            0.                                                                        
     total         31982499    1.0400E+00    5.0529E-01              total         31982499    1.0400E+00    5.0529E-01

   number of photons banked                  5617498        average time of (shakes)              cutoffs
   photon tracks per source particle      3.1982E+00          escape            3.0295E-01          tco   1.0000E+33
   photon collisions per source particle  2.7352E+00          capture           1.5934E-01          eco   1.0000E-03
   total photon collisions                  27351929          capture or escape 2.9773E-01          wc1  -5.0000E-01
                                                              any termination   2.9349E-01          wc2  -2.5000E-01

 computer time so far in this run   269.03 minutes            maximum number ever in bank         7
 computer time in mcrun             268.91 minutes            bank overflows to backup file       0
 source particles per minute            3.7187E+04
 random numbers generated                421557429            most random numbers used was        2498 in history     4755124

 range of sampled source weights = 1.0000E+00 to 1.0000E+00

 number of histories processed by each thread
      721881      712518      712985      713775      715087      717768      715682      714074      712743      714852
      712172      710726      710776      714961
1source distribution frequency tables                                                                   print table 170

 the expected values below do not include the effect of the rejection loop which samples position.


 source distribution   2  for dir

                                         number                                       weight
             source
   n          value         sampled      expected  sampled/expected      sampled      expected  sampled/expected

   1      7.07107E-01      0.0000E+00   0.0000E+00   1.0000E+00         0.0000E+00   0.0000E+00   1.0000E+00
   2      1.00000E+00      1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
 total                     1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00


 source distribution   1  for erg

                                         number                                       weight
             source
   n          value         sampled      expected  sampled/expected      sampled      expected  sampled/expected

   1      5.00000E-01      1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
 total                     1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
1the following cells are bounded by cells with photon   importances                                     print table 120
 that may be different by more than a factor of four.

                           maximum                             minimum
  cell     importance     neighbor     importance   ratio     neighbor     importance   ratio

        1    1.00000E+00            4    2.50000E+01    25.0            8    1.00000E+00     1.0
        2    1.00000E+00            3    5.00000E+00     5.0            8    1.00000E+00     1.0
        3    5.00000E+00            4    2.50000E+01     5.0            8    1.00000E+00     5.0
        4    2.50000E+01            3    5.00000E+00     0.2            8    1.00000E+00    25.0
 
  warning.  importance function may be poor.  see print table 120.
1photon   activity in each cell                                                                         print table 126

                       tracks     population   collisions   collisions     number        flux        average      average
              cell    entering                               * weight     weighted     weighted   track weight   track mfp
                                                          (per history)    energy       energy     (relative)      (cm)

        1        1     1428261      1461375      2950536    2.9505E-01   3.4607E-01   3.4607E-01   1.0000E+00   3.6243E+00
        2        2     1592380      1574633      1187577    1.1876E-01   3.6850E-01   3.6850E-01   1.0000E+00   3.7375E+00
        3        3     6270288      6160247      5274562    1.0549E-01   3.3134E-01   3.3134E-01   1.0000E+00   3.5465E+00
        4        4    21234280     21292162     17939254    7.1757E-02   3.2903E-01   3.2903E-01   1.0000E+00   3.5432E+00
        5        5    10000283     10000066            0    0.0000E+00   4.9999E-01   4.9999E-01   1.0000E+00   0.0000E+00
        6        6        3408         3408            0    0.0000E+00   4.3839E-01   4.3839E-01   3.0088E-01   0.0000E+00
        7        7       24098        24098            0    0.0000E+00   4.3898E-01   4.3898E-01   4.4292E-02   0.0000E+00
        8        8    28948497     26670252            0    0.0000E+00   4.7546E-01   4.7546E-01   4.9609E-01   0.0000E+00

           total      69501495     67186241     27351929    5.9106E-01
1photon   weight balance in each cell                                                                   print table 130

        cell index        1           2           3           4           5           6           7           8
       cell number        1           2           3           4           5           6           7           8       total     

 external events:
          entering  1.4287E-01  1.5918E-01  1.2545E-01  8.4937E-02  2.8300E-05  1.0157E-04  1.0734E-04  1.2426E+00  1.7552E+00
            source  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0000E+00
     energy cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
       time cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
           exiting -1.2887E-01 -1.5464E-01 -1.1973E-01 -8.1196E-02 -1.0000E+00 -1.0157E-04 -1.0734E-04 -1.2426E+00 -2.7272E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  1.4004E-02  4.5413E-03  5.7218E-03  3.7416E-03  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  2.8008E-02

 variance reduction events:
     weight window  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   cell importance -4.7204E-05  5.5780E-05 -4.3888E-05  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -3.5312E-05
     weight cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 e or t importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            dxtran  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 forced collisions  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    exp. transform  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total -4.7204E-05  5.5780E-05 -4.3888E-05  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -3.5312E-05

 physical events:
     from neutrons  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    bremsstrahlung  3.7544E-03  1.6719E-03  1.2496E-03  8.4480E-04  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  7.5207E-03
           capture -1.8299E-02 -6.4800E-03 -7.1564E-03 -4.7377E-03  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -3.6674E-02
    p-annihilation  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   pair production  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      photonuclear  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  photonuclear abs  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   electron x-rays  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   compton fluores  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 muon capt fluores  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      fluorescence  5.8860E-04  2.1100E-04  2.2882E-04  1.5137E-04  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.1798E-03
        decay gain  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 nucl. interaction  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  tabular sampling  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      photofission  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  loss to photofis  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total -1.3957E-02 -4.5971E-03 -5.6779E-03 -3.7416E-03  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -2.7973E-02

                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 
1photoatomic activity of each nuclide in each cell, per source particle                                 print table 140

      cell     cell   nuclides     atom       total  collisions   wgt. lost   weight of       total   weight of       total   weight of
     index     name            fraction  collisions    * weight  to capture   pair prod  incoherent  incoherent    coherent    coherent

         1        1  13000.84p 1.00E+00     2950536  2.9505E-01  1.8299E-02  0.0000E+00     2667193  2.6672E-01      100348  1.0035E-02

         2        2  13000.84p 1.00E+00     1187577  1.1876E-01  6.4800E-03  0.0000E+00     1087128  1.0871E-01       35649  3.5649E-03

         3        3  13000.84p 1.00E+00     5274562  1.0549E-01  7.1564E-03  0.0000E+00     4722017  9.4440E-02      194727  3.8945E-03

         4        4  13000.84p 1.00E+00    17939254  7.1757E-02  4.7377E-03  0.0000E+00    16105382  6.4422E-02      649441  2.5978E-03

              total                        27351929  5.9106E-01  3.6674E-02  0.0000E+00    24581720  5.3429E-01      980165  2.0092E-02


        total over all cells by nuclide       total  collisions   wgt. lost   weight of       total   weight of       total   weight of
                                         collisions    * weight  to capture   pair prod  incoherent  incoherent    coherent    coherent

                     13000.84p             27351929  5.9106E-01  3.6674E-02  0.0000E+00    24581720  5.3429E-01      980165  2.0092E-02

1tally       15        nps =    10000000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 4.00000E+01-2.00000E+01 0.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    2.6316E-02   1.01978E-09 0.0905
    5.2632E-02   2.96059E-08 0.0169
    7.8947E-02   3.24541E-07 0.0058
    1.0526E-01   6.30191E-07 0.0037
    1.3158E-01   6.99041E-07 0.0035
    1.5789E-01   4.77442E-07 0.0040
    1.8421E-01   3.79354E-07 0.0041
    2.1053E-01   3.25024E-07 0.0041
    2.3684E-01   2.93741E-07 0.0039
    2.6316E-01   2.82813E-07 0.0036
    2.8947E-01   2.78154E-07 0.0060
    3.1579E-01   3.69865E-07 0.0031
    3.4211E-01   4.46005E-07 0.0028
    3.6842E-01   5.12605E-07 0.0029
    3.9474E-01   5.83200E-07 0.0029
    4.2105E-01   6.98979E-07 0.0068
    4.4737E-01   1.16776E-06 0.0025
    4.7368E-01   2.34359E-06 0.0025
    5.0000E-01   2.21667E-05 0.0013
      total      3.20096E-05 0.0010
 
 detector located at x,y,z = 4.00000E+01-2.00000E+01 0.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    2.6316E-02   9.01900E-10 0.0874
    5.2632E-02   3.84274E-09 0.0474
    7.8947E-02   3.88642E-09 0.0461
    1.0526E-01   2.60667E-09 0.0527
    1.3158E-01   1.66582E-09 0.0706
    1.5789E-01   1.06203E-09 0.0895
    1.8421E-01   7.53373E-10 0.1168
    2.1053E-01   4.13628E-10 0.1489
    2.3684E-01   1.96951E-10 0.2509
    2.6316E-01   1.42532E-10 0.2787
    2.8947E-01   6.37609E-11 0.5643
    3.1579E-01   8.04588E-12 0.3683
    3.4211E-01   4.11616E-13 1.0000
    3.6842E-01   0.00000E+00 0.0000
    3.9474E-01   3.20525E-13 1.0000
    4.2105E-01   0.00000E+00 0.0000
    4.4737E-01   0.00000E+00 0.0000
    4.7368E-01   8.93536E-13 1.0000
    5.0000E-01   1.95205E-05 0.0000
      total      1.95360E-05 0.0000
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01            7184394         0.33146        2.30143E-06        0.07190
        1.00000E+00           13429171         0.95103        2.29022E-05        0.78738
        2.00000E+00             691850         0.98295        3.07606E-06        0.88347
        5.00000E+00             357651         0.99945        3.31716E-06        0.98710
        1.00000E+01               6860         0.99976        1.21943E-07        0.99091
        1.00000E+02               1366         0.99983        1.17896E-07        0.99460
        1.00000E+03                103         0.99983        8.70306E-08        0.99732
        1.00000E+38                 13         0.99983        8.26435E-08        0.99990
 before dd roulette               3620         1.00000        3.26016E-09        1.00000

 average tally per history = 3.20096E-05            largest score = 1.59343E-01
 (largest score)/(average tally) = 4.97798E+03      nps of largest score =      731915

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     1     1      207974     2602997       8.86411E-06         3.40535E-05
     2     2      283695      857911       6.75057E-07         7.86862E-06
     3     3     2308949     2681718       1.12247E-06         4.18565E-06
     4     4    11471462     5532402       1.82750E-06         3.30327E-06
     5     5           0    10000000       1.95205E-05         1.95205E-05
       total    14272080    21675028       3.20096E-05         1.47680E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                   423109
   russian roulette in transmission       13661445
   underflow in transmission                187526
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       15

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.10      yes         yes            constant    random       1.90
 passed?        yes          yes      yes          yes              no      yes         yes               yes        yes          no

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  2 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       15 with nps =    10000000  print table 160


 normed average tally per history  = 3.20096E-05          unnormed average tally per history  = 3.20096E-05
 estimated tally relative error    = 0.0010               estimated variance of the variance  = 0.1044
 relative error from zero tallies  = 0.0000               relative error from nonzero scores  = 0.0010

 number of nonzero history tallies =    10000000          efficiency for the nonzero tallies  = 1.0000
 history number of largest  tally  =      731915          largest  unnormalized history tally = 1.59363E-01
 (largest  tally)/(average tally)  = 4.97859E+03          (largest  tally)/(avg nonzero tally)= 4.97859E+03

 (confidence interval shift)/mean  = 0.0001               shifted confidence interval center  = 3.20136E-05


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            3.20096E-05             3.20255E-05                     0.000498
      relative error                  9.59446E-04             1.08034E-03                     0.126006
      variance of the variance        1.04374E-01             1.09773E-01                     0.051730
      shifted center                  3.20136E-05             3.20144E-05                     0.000026
      figure of merit                 4.03967E+03             3.18614E+03                    -0.211288

 the estimated inverse power slope of the 200 largest  tallies starting at 2.30298E-03 is 1.8991
 the history score probability density function appears to have an unsampled region at the largest  history scores:
 please examine. see print table 161.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (3.719E+04)*( 3.296E-01)**2 = (3.719E+04)*(1.086E-01) = 4.040E+03

1unnormed tally density for tally       15          nonzero tally mean(m) = 3.201E-05   nps =    10000000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 1.9)
  tally  number num den log den:d-------d--------d--------d--------d--------d---------d--------d--------d--------d--------d--------d
 2.00-05 7.9+06 1.91+05   5.282 ********|********|********|********|********|*********|********|********|********|********|********|
 2.51-05  85934 1.66+03   3.221 ********|********|********|********|********|*********|********|********|********|        |        |
 3.16-05 159054 2.45+03   3.388 ********|********|********|********|********|*********|********|********|********|*       |        |
 3.98-05 246266 3.01+03   3.478 mmmmmmmm|mmmmmmmm|mmmmmmmm|mmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmmmmmm|mmmmmmmm|mmmmmmmm|mm      |        |
 5.01-05 324222 3.15+03   3.498 ********|********|********|********|********|*********|********|********|********|**      |        |
 6.31-05 372312 2.87+03   3.458 ********|********|********|********|********|*********|********|********|********|*       |        |
 7.94-05 290681 1.78+03   3.250 ********|********|********|********|********|*********|********|********|********|        |        |
 1.00-04 201095 9.78+02   2.990 ********|********|********|********|********|*********|********|********|******  |        |        |
 1.26-04 150454 5.81+02   2.764 ********|********|********|********|********|*********|********|********|****    |        |        |
 1.58-04 126178 3.87+02   2.588 ********|********|********|********|********|*********|********|********|***     |        |        |
 2.00-04  94510 2.30+02   2.362 ********|********|********|********|********|*********|********|********|        |        |        |
 2.51-04  54953 1.06+02   2.027 ********|********|********|********|********|*********|********|******  |        |        |        |
 3.16-04  26053 4.01+01   1.603 ********|********|********|********|********|*********|********|***     |        |        |        |
 3.98-04   8262 1.01+01   1.004 ********|********|********|********|********|*********|******  |        |        |        |        |
 5.01-04   1864 1.81+00   0.257 ********|********|********|********|********|*********|        |        |        |        |        |
 6.31-04    514 3.96-01  -0.402 ********|********|********|********|********|***      |        |        |        |        |        |
 7.94-04    266 1.63-01  -0.788 ********|********|********|********|********|         |        |        |        |        |        |
 1.00-03    176 8.56-02  -1.068 ********|********|********|********|******  |         |        |        |        |        |        |
 1.26-03    150 5.79-02  -1.237 ********|********|********|********|*****   |         |        |        |        |        |        |
 1.58-03     96 2.95-02  -1.531 ********|********|********|********|**      |         |        |        |        |        |        |
 2.00-03     76 1.85-02  -1.732 ********|********|********|********|        |         |        |        |        |        |        |
 2.51-03     75 1.45-02  -1.838 ********|********|********|********|       s|         |        |        |        |        |        |
 3.16-03     49 7.53-03  -2.123 ********|********|********|******  |      s |         |        |        |        |        |        |
 3.98-03     31 3.79-03  -2.422 ********|********|********|***     |     s  |         |        |        |        |        |        |
 5.01-03     23 2.23-03  -2.651 ********|********|********|*       |   s    |         |        |        |        |        |        |
 6.31-03     14 1.08-03  -2.967 ********|********|******* |        |  s     |         |        |        |        |        |        |
 7.94-03     15 9.18-04  -3.037 ********|********|******  |        | s      |         |        |        |        |        |        |
 1.00-02      3 1.46-04  -3.836 ********|********|        |        s        |         |        |        |        |        |        |
 1.26-02      6 2.32-04  -3.635 ********|********|*       |       s|        |         |        |        |        |        |        |
 1.58-02      9 2.76-04  -3.559 ********|********|**      |     s  |        |         |        |        |        |        |        |
 2.00-02      2 4.87-05  -4.312 ********|****    |        |   s    |        |         |        |        |        |        |        |
 2.51-02      8 1.55-04  -3.810 ********|********|        |  s     |        |         |        |        |        |        |        |
 3.16-02      3 4.61-05  -4.336 ********|****    |        |s       |        |         |        |        |        |        |        |
 3.98-02      3 3.66-05  -4.436 ********|***     |        s        |        |         |        |        |        |        |        |
 5.01-02      3 2.91-05  -4.536 ********|**      |      s |        |        |         |        |        |        |        |        |
 6.31-02      3 2.31-05  -4.636 ********|*       |    s   |        |        |         |        |        |        |        |        |
 7.94-02      1 6.12-06  -5.213 *****   |        |   s    |        |        |         |        |        |        |        |        |
 1.00-01      1 4.86-06  -5.313 ****    |        | s      |        |        |         |        |        |        |        |        |
 1.26-01      1 3.86-06  -5.413 ***     |        s        |        |        |         |        |        |        |        |        |
 1.58-01      0 0.00+00   0.000         |      s |        |        |        |         |        |        |        |        |        |
 2.00-01      1 2.44-06  -5.613 *       |     s  |        |        |        |         |        |        |        |        |        |
  total 1.00+07 1.00+00         d-------d--------d--------d--------d--------d---------d--------d--------d--------d--------d--------d
1cumulative tally number for tally       15  7.9+06 nonzero tally mean(m) = 3.201E-05   nps =    10000000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.99526E-05  7856633   78.566|*********|*********|*********|*********|*********|*********|*********|*********|         |         |
 2.51189E-05  7942567   79.426|*********|*********|*********|*********|*********|*********|*********|*********|         |         |
 3.16228E-05  8101621   81.016|*********|*********|*********|*********|*********|*********|*********|*********|*        |         |
 3.98107E-05  8347887   83.479|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmm      |         |
 5.01187E-05  8672109   86.721|*********|*********|*********|*********|*********|*********|*********|*********|*******  |         |
 6.30957E-05  9044421   90.444|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 7.94328E-05  9335102   93.351|*********|*********|*********|*********|*********|*********|*********|*********|*********|***      |
 1.00000E-04  9536197   95.362|*********|*********|*********|*********|*********|*********|*********|*********|*********|*****    |
 1.25893E-04  9686651   96.867|*********|*********|*********|*********|*********|*********|*********|*********|*********|*******  |
 1.58489E-04  9812829   98.128|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 1.99526E-04  9907339   99.073|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04  9962292   99.623|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04  9988345   99.883|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-04  9996607   99.966|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-04  9998471   99.985|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-04  9998985   99.990|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-04  9999251   99.993|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.00000E-03  9999427   99.994|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.25893E-03  9999577   99.996|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.58489E-03  9999673   99.997|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-03  9999749   99.997|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-03  9999824   99.998|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-03  9999873   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-03  9999904   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-03  9999927   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-03  9999941   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-03  9999956  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.00000E-02  9999959  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.25893E-02  9999965  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.58489E-02  9999974  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-02  9999976  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-02  9999984  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-02  9999987  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-02  9999990  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-02  9999993  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-02  9999996  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-02  9999997  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.00000E-01  9999998  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.25893E-01  9999999  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.58489E-01  9999999  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-01  1.00+07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total    10000000  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally       15  7.9+06 nonzero tally mean(m) = 3.201E-05   nps =  10000000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.995E-05  1.534E-05   47.912|*********|*********|*********|*********|******** |         |         |         |         |         |
 2.512E-05  1.554E-05   48.536|*********|*********|*********|*********|*********|         |         |         |         |         |
 3.162E-05  1.598E-05   49.930|*********|*********|*********|*********|*********|         |         |         |         |         |
 3.981E-05  1.686E-05   52.678|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmm      |         |         |         |         |
 5.012E-05  1.833E-05   57.255|*********|*********|*********|*********|*********|*******  |         |         |         |         |
 6.310E-05  2.042E-05   63.795|*********|*********|*********|*********|*********|*********|****     |         |         |         |
 7.943E-05  2.247E-05   70.196|*********|*********|*********|*********|*********|*********|*********|         |         |         |
 1.000E-04  2.425E-05   75.769|*********|*********|*********|*********|*********|*********|*********|******   |         |         |
 1.259E-04  2.594E-05   81.035|*********|*********|*********|*********|*********|*********|*********|*********|*        |         |
 1.585E-04  2.772E-05   86.594|*********|*********|*********|*********|*********|*********|*********|*********|*******  |         |
 1.995E-04  2.939E-05   91.810|*********|*********|*********|*********|*********|*********|*********|*********|*********|**       |
 2.512E-04  3.061E-05   95.620|*********|*********|*********|*********|*********|*********|*********|*********|*********|******   |
 3.162E-04  3.133E-05   97.877|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 3.981E-04  3.162E-05   98.772|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-04  3.170E-05   99.025|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-04  3.173E-05   99.114|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-04  3.174E-05   99.173|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.000E-03  3.176E-05   99.221|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.259E-03  3.178E-05   99.274|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.585E-03  3.179E-05   99.316|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E-03  3.180E-05   99.358|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-03  3.182E-05   99.410|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-03  3.183E-05   99.453|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-03  3.185E-05   99.487|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-03  3.186E-05   99.518|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-03  3.186E-05   99.543|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-03  3.187E-05   99.576|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.000E-02  3.188E-05   99.585|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.259E-02  3.188E-05   99.606|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.585E-02  3.190E-05   99.645|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E-02  3.190E-05   99.655|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-02  3.192E-05   99.714|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-02  3.193E-05   99.741|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-02  3.194E-05   99.774|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-02  3.195E-05   99.815|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-02  3.197E-05   99.867|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-02  3.197E-05   99.890|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.000E-01  3.198E-05   99.915|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.259E-01  3.199E-05   99.950|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.585E-01  3.199E-05   99.950|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E-01  3.201E-05  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  3.20096E-05  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally       25        nps =    10000000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 4.00000E+01 2.00000E+01 0.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    2.6316E-02   1.08325E-09 0.0431
    5.2632E-02   2.94793E-08 0.0104
    7.8947E-02   3.26087E-07 0.0043
    1.0526E-01   6.35548E-07 0.0032
    1.3158E-01   7.00729E-07 0.0029
    1.5789E-01   4.80928E-07 0.0042
    1.8421E-01   3.79817E-07 0.0034
    2.1053E-01   3.26120E-07 0.0033
    2.3684E-01   2.95220E-07 0.0033
    2.6316E-01   2.81303E-07 0.0030
    2.8947E-01   2.76610E-07 0.0031
    3.1579E-01   3.69373E-07 0.0030
    3.4211E-01   4.46469E-07 0.0036
    3.6842E-01   5.07806E-07 0.0030
    3.9474E-01   5.83365E-07 0.0027
    4.2105E-01   6.96070E-07 0.0026
    4.4737E-01   1.17337E-06 0.0022
    4.7368E-01   2.36265E-06 0.0022
    5.0000E-01   2.21600E-05 0.0006
      total      3.20321E-05 0.0005
 
 detector located at x,y,z = 4.00000E+01 2.00000E+01 0.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    2.6316E-02   9.78641E-10 0.0412
    5.2632E-02   3.72197E-09 0.0216
    7.8947E-02   3.97900E-09 0.0197
    1.0526E-01   2.76679E-09 0.0236
    1.3158E-01   1.73019E-09 0.0307
    1.5789E-01   1.12889E-09 0.0488
    1.8421E-01   7.15995E-10 0.0581
    2.1053E-01   4.63898E-10 0.0816
    2.3684E-01   2.42933E-10 0.1077
    2.6316E-01   1.26778E-10 0.1437
    2.8947E-01   4.97517E-11 0.2521
    3.1579E-01   1.95725E-11 0.2722
    3.4211E-01   2.10462E-12 0.6713
    3.6842E-01   0.00000E+00 0.0000
    3.9474E-01   3.20034E-13 1.0000
    4.2105E-01   0.00000E+00 0.0000
    4.4737E-01   0.00000E+00 0.0000
    4.7368E-01   8.79858E-13 1.0000
    5.0000E-01   1.95205E-05 0.0000
      total      1.95364E-05 0.0000
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01            6877276         0.25379        2.20402E-06        0.06881
        1.00000E+00           19669260         0.97962        2.71464E-05        0.91628
        2.00000E+00             503796         0.99821        2.08254E-06        0.98130
        5.00000E+00              41540         0.99974        3.31662E-07        0.99165
        1.00000E+01               1770         0.99981        3.90181E-08        0.99287
        1.00000E+02               1385         0.99986        1.12794E-07        0.99639
        1.00000E+03                142         0.99987        8.99539E-08        0.99920
        1.00000E+38                  5         0.99987        2.24725E-08        0.99990
 before dd roulette               3616         1.00000        3.22574E-09        1.00000

 average tally per history = 3.20321E-05            largest score = 6.72188E-02
 (largest score)/(average tally) = 2.09849E+03      nps of largest score =     6200651

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     1     1      395548     2415423       3.61432E-06         1.49635E-05
     2     2      133263     1008343       2.10148E-06         2.08409E-05
     3     3     1277634     3713033       2.86530E-06         7.71687E-06
     4     4     7041873     9961991       3.93049E-06         3.94549E-06
     5     5           0    10000000       1.95205E-05         1.95205E-05
       total     8848318    27098790       3.20321E-05         1.18205E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                   400607
   russian roulette in transmission        8216150
   underflow in transmission                231561
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       25

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.00      yes          yes            0.04      yes          no            constant    random       3.08
 passed?        yes          yes      yes          yes             yes      yes          no               yes        yes         yes

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  1 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       25 with nps =    10000000  print table 160


 normed average tally per history  = 3.20321E-05          unnormed average tally per history  = 3.20321E-05
 estimated tally relative error    = 0.0005               estimated variance of the variance  = 0.0378
 relative error from zero tallies  = 0.0000               relative error from nonzero scores  = 0.0005

 number of nonzero history tallies =    10000000          efficiency for the nonzero tallies  = 1.0000
 history number of largest  tally  =     6200651          largest  unnormalized history tally = 6.73183E-02
 (largest  tally)/(average tally)  = 2.10159E+03          (largest  tally)/(avg nonzero tally)= 2.10159E+03

 (confidence interval shift)/mean  = 0.0000               shifted confidence interval center  = 3.20332E-05


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            3.20321E-05             3.20388E-05                     0.000210
      relative error                  5.41840E-04             5.81011E-04                     0.072292
      variance of the variance        3.77957E-02             4.56356E-02                     0.207428
      shifted center                  3.20332E-05             3.20335E-05                     0.000009
      figure of merit                 1.26662E+04             1.10159E+04                    -0.130292

 the estimated inverse power slope of the 200 largest  tallies starting at 2.51924E-03 is 3.0770
 the history score probability density function appears to have an unsampled region at the largest  history scores:
 please examine. see print table 161.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (3.719E+04)*( 5.836E-01)**2 = (3.719E+04)*(3.406E-01) = 1.267E+04

1unnormed tally density for tally       25          nonzero tally mean(m) = 3.203E-05   nps =    10000000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 3.1)
  tally  number num den log den:d-------d---------d--------d---------d--------d---------d--------d--------d---------d--------d------
 2.00-05 7.8+06 1.91+05   5.281 ********|*********|********|*********|********|*********|********|********|*********|********|******
 2.51-05  78097 1.51+03   3.179 ********|*********|********|*********|********|*********|********|********|*****    |        |      
 3.16-05 160175 2.46+03   3.391 ********|*********|********|*********|********|*********|********|********|*******  |        |      
 3.98-05 174272 2.13+03   3.328 mmmmmmmm|mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmmmmmm|mmmmmmmm|mmmmmmm  |        |      
 5.01-05 230918 2.24+03   3.350 ********|*********|********|*********|********|*********|********|********|*******  |        |      
 6.31-05 286249 2.21+03   3.344 ********|*********|********|*********|********|*********|********|********|*******  |        |      
 7.94-05 318610 1.95+03   3.290 ********|*********|********|*********|********|*********|********|********|******   |        |      
 1.00-04 361593 1.76+03   3.245 ********|*********|********|*********|********|*********|********|********|******   |        |      
 1.26-04 314667 1.22+03   3.085 ********|*********|********|*********|********|*********|********|********|****     |        |      
 1.58-04 163409 5.01+02   2.700 ********|*********|********|*********|********|*********|********|********|*        |        |      
 2.00-04  49976 1.22+02   2.086 ********|*********|********|*********|********|*********|********|****    |         |        |      
 2.51-04  12307 2.38+01   1.377 ********|*********|********|*********|********|*********|******  |        |         |        |      
 3.16-04   3277 5.04+00   0.702 ********|*********|********|*********|********|*********|        |        |         |        |      
 3.98-04   1083 1.32+00   0.121 ********|*********|********|*********|********|****     |        |        |         |        |      
 5.01-04    547 5.31-01  -0.275 ********|*********|********|*********|********|*        |        |        |         |        |      
 6.31-04    351 2.70-01  -0.568 ********|*********|********|*********|******* |         |        |        |         |        |      
 7.94-04    252 1.54-01  -0.812 ********|*********|********|*********|*****   |         |        |        |         |        |      
 1.00-03    181 8.80-02  -1.055 ********|*********|********|*********|**      |         |        |        |         |        |      
 1.26-03    105 4.06-02  -1.392 ********|*********|********|*********|        |         |        |        |         |        |      
 1.58-03     83 2.55-02  -1.594 ********|*********|********|*******  |        |         |        |        |         |        |      
 2.00-03     70 1.71-02  -1.768 ********|*********|********|*****    |        |         |        |        |         |        |      
 2.51-03     62 1.20-02  -1.921 ********|*********|********|****     |        |         |        |        |         |        |      
 3.16-03     52 8.00-03  -2.097 ********|*********|********|**       | s      |         |        |        |         |        |      
 3.98-03     38 4.64-03  -2.333 ********|*********|********|         |s       |         |        |        |         |        |      
 5.01-03     31 3.01-03  -2.522 ********|*********|******* |        s|        |         |        |        |         |        |      
 6.31-03     32 2.47-03  -2.608 ********|*********|******* |       s |        |         |        |        |         |        |      
 7.94-03     22 1.35-03  -2.871 ********|*********|****    |     s   |        |         |        |        |         |        |      
 1.00-02      7 3.40-04  -3.468 ********|******** |        |   s     |        |         |        |        |         |        |      
 1.26-02      7 2.70-04  -3.568 ********|******** |        | s       |        |         |        |        |         |        |      
 1.58-02      0 0.00+00   0.000         |         |        s         |        |         |        |        |         |        |      
 2.00-02      4 9.75-05  -4.011 ********|***      |      s |         |        |         |        |        |         |        |      
 2.51-02      2 3.87-05  -4.412 ********|         |    s   |         |        |         |        |        |         |        |      
 3.16-02      1 1.54-05  -4.813 *****   |         | s      |         |        |         |        |        |         |        |      
 3.98-02      4 4.89-05  -4.311 ********|*        s        |         |        |         |        |        |         |        |      
 5.01-02      1 9.70-06  -5.013 ***     |      s  |        |         |        |         |        |        |         |        |      
 6.31-02      0 0.00+00   0.000         |   s     |        |         |        |         |        |        |         |        |      
 7.94-02      1 6.12-06  -5.213 *       | s       |        |         |        |         |        |        |         |        |      
  total 1.00+07 1.00+00         d-------d---------d--------d---------d--------d---------d--------d--------d---------d--------d------
1cumulative tally number for tally       25  7.8+06 nonzero tally mean(m) = 3.203E-05   nps =    10000000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.99526E-05  7843514   78.435|*********|*********|*********|*********|*********|*********|*********|******** |         |         |
 2.51189E-05  7921611   79.216|*********|*********|*********|*********|*********|*********|*********|*********|         |         |
 3.16228E-05  8081786   80.818|*********|*********|*********|*********|*********|*********|*********|*********|*        |         |
 3.98107E-05  8256058   82.561|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmm      |         |
 5.01187E-05  8486976   84.870|*********|*********|*********|*********|*********|*********|*********|*********|*****    |         |
 6.30957E-05  8773225   87.732|*********|*********|*********|*********|*********|*********|*********|*********|******** |         |
 7.94328E-05  9091835   90.918|*********|*********|*********|*********|*********|*********|*********|*********|*********|*        |
 1.00000E-04  9453428   94.534|*********|*********|*********|*********|*********|*********|*********|*********|*********|*****    |
 1.25893E-04  9768095   97.681|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 1.58489E-04  9931504   99.315|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-04  9981480   99.815|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04  9993787   99.938|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04  9997064   99.971|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-04  9998147   99.981|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-04  9998694   99.987|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-04  9999045   99.990|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-04  9999297   99.993|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.00000E-03  9999478   99.995|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.25893E-03  9999583   99.996|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.58489E-03  9999666   99.997|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-03  9999736   99.997|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-03  9999798   99.998|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-03  9999850   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-03  9999888   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-03  9999919   99.999|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-03  9999951  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-03  9999973  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.00000E-02  9999980  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.25893E-02  9999987  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.58489E-02  9999987  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-02  9999991  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-02  9999993  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-02  9999994  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-02  9999998  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.01187E-02  9999999  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.30957E-02  9999999  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.94328E-02  1.00+07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total    10000000  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally       25  7.8+06 nonzero tally mean(m) = 3.203E-05   nps =  10000000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.995E-05  1.531E-05   47.799|*********|*********|*********|*********|******** |         |         |         |         |         |
 2.512E-05  1.549E-05   48.373|*********|*********|*********|*********|******** |         |         |         |         |         |
 3.162E-05  1.595E-05   49.789|*********|*********|*********|*********|*********|         |         |         |         |         |
 3.981E-05  1.657E-05   51.730|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mm       |         |         |         |         |
 5.012E-05  1.761E-05   54.977|*********|*********|*********|*********|*********|*****    |         |         |         |         |
 6.310E-05  1.923E-05   60.022|*********|*********|*********|*********|*********|*********|         |         |         |         |
 7.943E-05  2.149E-05   67.100|*********|*********|*********|*********|*********|*********|*******  |         |         |         |
 1.000E-04  2.473E-05   77.194|*********|*********|*********|*********|*********|*********|*********|*******  |         |         |
 1.259E-04  2.824E-05   88.160|*********|*********|*********|*********|*********|*********|*********|*********|******** |         |
 1.585E-04  3.051E-05   95.248|*********|*********|*********|*********|*********|*********|*********|*********|*********|*****    |
 1.995E-04  3.138E-05   97.957|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 2.512E-04  3.165E-05   98.796|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-04  3.174E-05   99.078|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-04  3.177E-05   99.196|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-04  3.180E-05   99.272|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-04  3.182E-05   99.333|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-04  3.184E-05   99.389|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.000E-03  3.185E-05   99.439|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.259E-03  3.186E-05   99.476|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.585E-03  3.188E-05   99.512|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E-03  3.189E-05   99.551|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-03  3.190E-05   99.594|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-03  3.192E-05   99.640|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-03  3.193E-05   99.682|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-03  3.194E-05   99.726|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-03  3.196E-05   99.781|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-03  3.198E-05   99.830|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.000E-02  3.198E-05   99.849|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.259E-02  3.199E-05   99.875|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.585E-02  3.199E-05   99.875|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E-02  3.200E-05   99.896|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-02  3.200E-05   99.910|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-02  3.201E-05   99.920|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-02  3.202E-05   99.964|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 5.012E-02  3.203E-05   99.979|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 6.310E-02  3.203E-05   99.979|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 7.943E-02  3.203E-05  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  3.20321E-05  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1status of the statistical checks used to form confidence intervals for the mean for each tally bin


 tally   result of statistical checks for the tfc bin (the first check not passed is listed) and error magnitude check for all bins

       15   missed  2 of 10 tfc bin checks: the variance of the variance exceeds the recommended value of 0.1                         
         missed all bin error check:    42 tally bins had     5 bins with zeros and    14 bins with relative errors exceeding 0.05

       25   missed  1 of 10 tfc bin checks: the variance of the variance appears not to decrease as 1/nps for the last half of problem
         missed all bin error check:    42 tally bins had     5 bins with zeros and     9 bins with relative errors exceeding 0.05


 the 10 statistical checks are only for the tally fluctuation chart bin and do not apply to other tally bins.

 the tally bins with zeros may or may not be correct: compare the source, cutoffs, multipliers, et cetera with the tally bins.

 warning.       2 of the     2 tally fluctuation chart bins did not pass all 10 statistical checks.
 warning.       2 of the     2 tallies had bins with relative errors greater than recommended.
1tally fluctuation charts                              

                            tally       15                          tally       25
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom
       512000   3.1906E-05 0.0021 0.0862  1.9   21683   3.2077E-05 0.0029 0.4542  1.8   11402
      1024000   3.2182E-05 0.0053 0.6807  1.8    1765   3.2004E-05 0.0017 0.2452  2.1   17102
      1536000   3.2097E-05 0.0036 0.6383  2.0    2575   3.2058E-05 0.0016 0.1950  2.1   13324
      2048000   3.2064E-05 0.0028 0.5378  2.1    3141   3.2077E-05 0.0015 0.1155  2.2   11482
      2560000   3.2101E-05 0.0028 0.3092  2.1    2646   3.2069E-05 0.0012 0.0998  2.3   13328
      3072000   3.2072E-05 0.0024 0.2736  2.2    2975   3.2058E-05 0.0011 0.0845  2.6   14728
      3584000   3.2051E-05 0.0021 0.2576  2.1    3384   3.2050E-05 0.0010 0.0722  2.8   15899
      4096000   3.2053E-05 0.0019 0.2245  2.1    3510   3.2049E-05 0.0009 0.0643  2.8   16768
      4608000   3.2027E-05 0.0017 0.2185  2.2    3682   3.2043E-05 0.0008 0.0552  2.8   15654
      5120000   3.2008E-05 0.0015 0.2135  2.1    3825   3.2045E-05 0.0008 0.0479  3.0   15315
      5632000   3.1999E-05 0.0014 0.2013  2.1    3933   3.2043E-05 0.0007 0.0424  2.9   15223
      6144000   3.2004E-05 0.0014 0.1689  2.1    3740   3.2036E-05 0.0007 0.0391  3.2   15405
      6656000   3.2003E-05 0.0013 0.1575  2.1    3800   3.2059E-05 0.0007 0.0540  2.7   11338
      7168000   3.2018E-05 0.0013 0.1327  1.9    3598   3.2054E-05 0.0007 0.0515  2.8   11669
      7680000   3.2022E-05 0.0012 0.1252  1.9    3659   3.2052E-05 0.0007 0.0488  2.9   11893
      8192000   3.2018E-05 0.0011 0.1214  1.9    3774   3.2051E-05 0.0006 0.0452  2.9   11991
      8704000   3.2013E-05 0.0011 0.1176  1.9    3876   3.2042E-05 0.0006 0.0431  3.0   12210
      9216000   3.2009E-05 0.0010 0.1151  1.9    3991   3.2038E-05 0.0006 0.0411  3.0   12410
      9728000   3.2011E-05 0.0010 0.1076  1.9    4014   3.2036E-05 0.0006 0.0387  3.0   12531
     10000000   3.2010E-05 0.0010 0.1044  1.9    4040   3.2032E-05 0.0005 0.0378  3.1   12666

 ***********************************************************************************************************************

 dump no.   11 on file variance_reduction.ir     nps =    10000000     coll =       27351929     ctm =      268.91   nrn
 =         421557429
 tally data written to file variance_reduction.im

        10 warning messages so far.


 run terminated when    10000000  particle histories were done.

 computer time =  269.04 minutes

 mcnp     version 6     05/08/13                     12/29/24 21:39:39                     probid =  12/29/24 21:38:13 
