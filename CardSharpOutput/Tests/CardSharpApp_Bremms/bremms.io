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
  
1mcnp     version 6     ld=05/08/13                     12/25/24 22:20:59 
 *************************************************************************                 probid =  12/25/24 22:20:59 
 n=bremms.i tasks 14                                                             

         1-       Generated using CardSharp:Bremmstrahlung Xray source, simple model.             
         2-       c ====================Cells======================                               
         3-       c (cell #, material #, density, macrobody, importance)                          
         4-       c density: negative is g/cc, positive is atoms/barn-cm                          
         5-       c -----------------------------------------------------------------             
         6-       c source, macrobody:1, xPos:0.00, yPos:-5.00, zPos:0.00, radius:0.50, matNum:Voi
         7-       c ---source----                                                                 
         8-       1 0        -1    IMP:p,e=1                                                      
         9-       c Tx detector, macrobody:2, baseX:0.00, baseY:40.00, baseZ:0.00, axisX:0.00, axi
        10-       c ---Tx detector----                                                            
        11-       2 0        -2    IMP:p,e=1                                                      
        12-       c Tx detector, macrobody:3, baseX:0.00, baseY:40.00, baseZ:5.00, axisX:0.00, axi
        13-       c ---Tx detector----                                                            
        14-       3 0        -3    IMP:p,e=1                                                      
        15-       c Tx detector, macrobody:4, baseX:0.00, baseY:40.00, baseZ:10.00, axisX:0.00, ax
        16-       c ---Tx detector----                                                            
        17-       4 0        -4    IMP:p,e=1                                                      
        18-       c Ref detector, macrobody:5, baseX:40.00, baseY:0.00, baseZ:0.00, axisX:0.50, ax
        19-       c ---Ref detector----                                                           
        20-       5 0        -5    IMP:p,e=1                                                      
        21-       c Ref detector, macrobody:6, baseX:40.00, baseY:0.00, baseZ:5.00, axisX:0.50, ax
        22-       c ---Ref detector----                                                           
        23-       6 0        -6    IMP:p,e=1                                                      
        24-       c Ref detector, macrobody:7, baseX:40.00, baseY:0.00, baseZ:10.00, axisX:0.50, a
        25-       c ---Ref detector----                                                           
        26-       7 0        -7    IMP:p,e=1                                                      
        27-       c Tungsten, Rect PPiped macrobody:8, xMin:-0.01, xMax:0.01, yMin:-0.00, yMax:0.0
        28-       c ---Tungsten----                                                               
        29-       8 369 -19.3000  -8    IMP:p,e=1                                                 
        30-       c World cells---Void inside------------------                                   
        31-       c ---World----                                                                  
        32-       9 0        -100  #1  #2  #3  #4  #5  #6  #7  #8    IMP:p,e=1                    
        33-       c ---Graveyard----                                                              
        34-       10 0        100    IMP:p,e=0                                                    
        35-       c =============Cells end: Next line must be completely blank==================  
        36-                                                                                       
        37-       c ====================Surfaces/Macrobodies=======                               
        38-       c surface/macrobody number, transformation number optional, surf/macro type, sur
        39-       c --------------------------                                                    
        40-       c ---source, sphere macrobody:1, trNum:, xPos:0.00, yPos:-5.00, zPos:0.00, radiu
        41-       1  SPH 0.0000 -5.0000 0.0000  0.5000                                            
        42-       c ---Tx detector, cylinder macrobody:2, trNum:, baseX:0.00, baseY:40.00, baseZ:0
        43-       2  RCC 0.0000 40.0000 0.0000  0.0000 0.5000 0.0000  1.0000                      
        44-       c ---Tx detector, cylinder macrobody:3, trNum:, baseX:0.00, baseY:40.00, baseZ:5
        45-       3  RCC 0.0000 40.0000 5.0000  0.0000 0.5000 0.0000  1.0000                      
        46-       c ---Tx detector, cylinder macrobody:4, trNum:, baseX:0.00, baseY:40.00, baseZ:1
        47-       4  RCC 0.0000 40.0000 10.0000  0.0000 0.5000 0.0000  1.0000                     
        48-       c ---Ref detector, cylinder macrobody:5, trNum:, baseX:40.00, baseY:0.00, baseZ:
        49-       5  RCC 40.0000 0.0000 0.0000  0.5000 0.0000 0.0000  1.0000                      
        50-       c ---Ref detector, cylinder macrobody:6, trNum:, baseX:40.00, baseY:0.00, baseZ:
        51-       6  RCC 40.0000 0.0000 5.0000  0.5000 0.0000 0.0000  1.0000                      
        52-       c ---Ref detector, cylinder macrobody:7, trNum:, baseX:40.00, baseY:0.00, baseZ:
        53-       7  RCC 40.0000 0.0000 10.0000  0.5000 0.0000 0.0000  1.0000                     
        54-       c ---Tungsten, macrobody:8, trNum:, xMin:-0.01, xMax:0.01, yMin:-0.00, yMax:0.00
        55-       8  RPP -0.005000 0.005000   -0.000200 0.000200    -0.005000 0.005000            
        56-       c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, ra
        57-       100  SPH 0.0000 0.0000 0.0000  70.0000                                          
        58-       c =============Surfaces/Macros end: Next line must be completely blank========= 
        59-                                                                                       
        60-       c =================Data cards=================                                  
        61-       c -----------------Transformations(* for degrees)--                             
        62-       c -----------------Materials------------------                                  
        63-       c --['W']--                                                                     
        64-       c      Tungsten                                                                 
        65-       c      AKA: None                                                                
        66-       c      rho: 19.300000 g/cc                                                      
        67-       m369       74180  -0.001175 $ W180                                              
        68-              74182  -0.262273 $ W182                                                  
        69-              74183  -0.142407 $ W183                                                  
        70-              74184  -0.306585 $ W184                                                  
        71-              74186  -0.287570 $ W186                                                  
        72-       c -----------------Source---------------------                                  
        73-       c ----- Source: point source with biasing tabulated photon energy distribution  
        74-       SDEF POS=0.00 -5.00 0.00 VEC=0.00 1.00 0.00 ERG=d1 DIR=d2 PAR=e  $ energy distri
        75-       SI2   -1.00   0.999999984769129102   1.0     $ for DIR, histogram of cosine bin,
        76-       SP2    0.     0.     1.0      $ Source *probability* for each bin, integrated   
        77-       SI1 L 8.0000E-02 $ L for discrete or A for continuous, followed by the n energie
        78-       SP1    1.0000E+00 $ relative frequency of each energy                           
        79-       c -----------------Tally----------------------                                  
        80-       c -- F5 Tally --                                                                
        81-       F115:p    $ Point detectors                                                     
        82-            0.00 40.00 0.00 1.00 $ x y z r                                             
        83-       c Energy bins                                                                   
        84-       E115  0  1E-5  0.001  160i  0.0800                                              
        85-       c -- F5 Tally --                                                                
        86-       F125:p    $ Point detectors                                                     
        87-            0.00 40.00 5.00 1.00 $ x y z r                                             
        88-       c Energy bins                                                                   
        89-       E125  0  1E-5  0.001  160i  0.0800                                              
        90-       c -- F5 Tally --                                                                
        91-       F135:p    $ Point detectors                                                     
        92-            0.00 40.00 10.00 1.00 $ x y z r                                            
        93-       c Energy bins                                                                   
        94-       E135  0  1E-5  0.001  160i  0.0800                                              
        95-       c -- F5 Tally --                                                                
        96-       F215:p    $ Point detectors                                                     
        97-            0.00 40.00 0.00 1.00 $ x y z r                                             
        98-       c Energy bins                                                                   
        99-       E215  0  1E-5  0.001  160i  0.0800                                              
       100-       c -- F5 Tally --                                                                
       101-       F225:p    $ Point detectors                                                     
       102-            0.00 40.00 5.00 1.00 $ x y z r                                             
       103-       c Energy bins                                                                   
       104-       E225  0  1E-5  0.001  160i  0.0800                                              
       105-       c -- F5 Tally --                                                                
       106-       F235:p    $ Point detectors                                                     
       107-            0.00 40.00 10.00 1.00 $ x y z r                                            
       108-       c Energy bins                                                                   
       109-       E235  0  1E-5  0.001  160i  0.0800                                              
       110-       c -- F1 Tally --                                                                
       111-       F31:p         $ pulse height tally                                              
       112-            2.2   $ cell/surface String                                                
       113-       c Energy bins                                                                   
       114-       E31  0  1E-5  0.001  160i  0.0800                                               
       115-       c -- F1 Tally --                                                                
       116-       F41:p         $ pulse height tally                                              
       117-            5.2   $ cell/surface String                                                
       118-       c Energy bins                                                                   
       119-       E41  0  1E-5  0.001  160i  0.0800                                               
       120-       c -- Debug tally --                                                             
       121-       F1011:p 100              $ debug tally with universe surface to see if all parti
       122-       c -----------------Physics -------------------                                  
       123-       c --mode, cut, phys --                                                          
       124-       MPHYS  OFF $ needed only when particles other than N P E are run                
       125-       MODE p e   $ particles to transport, default n (anti particles included)        
       126-       CUT:n  j 0.0                                                                    
       127-       CUT:p  j 0.001                                                                  
       128-       CUT:e  j 0.001                                                                  
       129-       PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
  comment.  photon Doppler energy broadening turned off (phys:p).
       130-       PHYS:e 100 0 0 0 0 1 1 1 1 0                                                    
       131-       c -----------------Output Control-------------                                  
       132-       c --MCTAL nps --                                                                
       133-       c NOTRN                $ uncomment then you get ray tracing only, not scatter   
       134-       c PRDMP NDP NDM MCT NDMP DMMP                                                   
       135-       PRDMP   j   10000    1    1    j  $ write MCTAL file                            
       136-       PRINT                                                                           
       137-       c PRINT 40 $ For material normalization check, see .io file                     
       138-       c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommend
       139-       c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.        
       140-       c DBCN j 10000 $ nj is jump over n options, debug print and multitasking are inc
       141-       NPS 100000     $ stop after number of source particles have been run            
       142-       c CTME 2.0 $ stop run after number of minutes                                   
       143-       c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir

 surface        2.2 and surface        3.2 are the same.        3.2 will be deleted.

 surface        2.2 and surface        4.2 are the same.        4.2 will be deleted.

 surface        2.3 and surface        3.3 are the same.        3.3 will be deleted.

 surface        2.3 and surface        4.3 are the same.        4.3 will be deleted.

 surface        5.2 and surface        6.2 are the same.        6.2 will be deleted.

 surface        5.2 and surface        7.2 are the same.        7.2 will be deleted.

 surface        5.3 and surface        6.3 are the same.        6.3 will be deleted.

 surface        5.3 and surface        7.3 are the same.        7.3 will be deleted.
 
  comment.           8 surfaces were deleted for being the same as others.
1source                                                                                                 print table 10

 values of defaulted or explicitly defined source variables

    cel        0.0000E+00
    sur        0.0000E+00
    tme        0.0000E+00
    pos        0.0000E+00  -5.0000E+00   0.0000E+00
    x          0.0000E+00
    y          0.0000E+00
    z          0.0000E+00
    rad        0.0000E+00
    ext        0.0000E+00
    axs        0.0000E+00   0.0000E+00   0.0000E+00
    vec        0.0000E+00   1.0000E+00   0.0000E+00
    ccc        0.0000E+00
    nrm        1.0000E+00
    ara        0.0000E+00
    wgt        1.0000E+00
    eff        1.0000E-02
    par        3.0000E+00
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
    2       1.00000E+00        0.000000E+00        0.000000E+00
    3       1.00000E+00        1.000000E+00        1.000000E+00

     the mean of source distribution        2 is  1.0000E+00



 probability distribution        1 for source variable erg
 unbiased discrete  distribution

 source        source           cumulative          probability
  entry         value           probability           of bin

    1       8.00000E-02        1.000000E+00        1.000000E+00

     the mean of source distribution        1 is  8.0000E-02


 order of sampling source variables.
 par pos vec dir erg tme

1tally       31                                                                                         print table 30
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 
  warning.     3 energy bins of tally       31 are below energy cutoff.
 surfaces  2.2                                                                                                                         

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally       41                                                                                         print table 30
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 
  warning.     3 energy bins of tally       41 are below energy cutoff.
 surfaces  5.2                                                                                                                         

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      115                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      115 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    0.00000E+00    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      125                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      125 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    5.00000E+00    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      135                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      135 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    1.00000E+01    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      215                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      215 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    0.00000E+00    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      225                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      225 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    5.00000E+00    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally      235                                                                                         print table 30
           tally type 5    particle flux at a point detector.                                  
           particle(s): photons  
 
  warning.     3 energy bins of tally      235 are below energy cutoff.

 point detector specifications
    detector        x              y              z             r0
       1        0.00000E+00    4.00000E+01    1.00000E+01    1.00000E+00

 energy bins
      1.00000E-03  to  0.00000E+00 MeV   
      0.00000E+00  to  1.00000E-05 MeV   
      1.00000E-05  to  1.00000E-03 MeV   
      1.00000E-03  to  1.49068E-03 MeV   
      1.49068E-03  to  1.98137E-03 MeV   
      1.98137E-03  to  2.47205E-03 MeV   
      2.47205E-03  to  2.96273E-03 MeV   
      2.96273E-03  to  3.45342E-03 MeV   
      3.45342E-03  to  3.94410E-03 MeV   
      3.94410E-03  to  4.43478E-03 MeV   
      4.43478E-03  to  4.92547E-03 MeV   
      4.92547E-03  to  5.41615E-03 MeV   
      5.41615E-03  to  5.90683E-03 MeV   
      5.90683E-03  to  6.39752E-03 MeV   
      6.39752E-03  to  6.88820E-03 MeV   
      6.88820E-03  to  7.37888E-03 MeV   
      7.37888E-03  to  7.86957E-03 MeV   
      7.86957E-03  to  8.36025E-03 MeV   
      8.36025E-03  to  8.85093E-03 MeV   
      8.85093E-03  to  9.34161E-03 MeV   
      9.34161E-03  to  9.83230E-03 MeV   
      9.83230E-03  to  1.03230E-02 MeV   
      1.03230E-02  to  1.08137E-02 MeV   
      1.08137E-02  to  1.13043E-02 MeV   
      1.13043E-02  to  1.17950E-02 MeV   
      1.17950E-02  to  1.22857E-02 MeV   
      1.22857E-02  to  1.27764E-02 MeV   
      1.27764E-02  to  1.32671E-02 MeV   
      1.32671E-02  to  1.37578E-02 MeV   
      1.37578E-02  to  1.42484E-02 MeV   
      1.42484E-02  to  1.47391E-02 MeV   
      1.47391E-02  to  1.52298E-02 MeV   
      1.52298E-02  to  1.57205E-02 MeV   
      1.57205E-02  to  1.62112E-02 MeV   
      1.62112E-02  to  1.67019E-02 MeV   
      1.67019E-02  to  1.71925E-02 MeV   
      1.71925E-02  to  1.76832E-02 MeV   
      1.76832E-02  to  1.81739E-02 MeV   
      1.81739E-02  to  1.86646E-02 MeV   
      1.86646E-02  to  1.91553E-02 MeV   
      1.91553E-02  to  1.96460E-02 MeV   
      1.96460E-02  to  2.01366E-02 MeV   
      2.01366E-02  to  2.06273E-02 MeV   
      2.06273E-02  to  2.11180E-02 MeV   
      2.11180E-02  to  2.16087E-02 MeV   
      2.16087E-02  to  2.20994E-02 MeV   
      2.20994E-02  to  2.25901E-02 MeV   
      2.25901E-02  to  2.30807E-02 MeV   
      2.30807E-02  to  2.35714E-02 MeV   
      2.35714E-02  to  2.40621E-02 MeV   
      2.40621E-02  to  2.45528E-02 MeV   
      2.45528E-02  to  2.50435E-02 MeV   
      2.50435E-02  to  2.55342E-02 MeV   
      2.55342E-02  to  2.60248E-02 MeV   
      2.60248E-02  to  2.65155E-02 MeV   
      2.65155E-02  to  2.70062E-02 MeV   
      2.70062E-02  to  2.74969E-02 MeV   
      2.74969E-02  to  2.79876E-02 MeV   
      2.79876E-02  to  2.84783E-02 MeV   
      2.84783E-02  to  2.89689E-02 MeV   
      2.89689E-02  to  2.94596E-02 MeV   
      2.94596E-02  to  2.99503E-02 MeV   
      2.99503E-02  to  3.04410E-02 MeV   
      3.04410E-02  to  3.09317E-02 MeV   
      3.09317E-02  to  3.14224E-02 MeV   
      3.14224E-02  to  3.19130E-02 MeV   
      3.19130E-02  to  3.24037E-02 MeV   
      3.24037E-02  to  3.28944E-02 MeV   
      3.28944E-02  to  3.33851E-02 MeV   
      3.33851E-02  to  3.38758E-02 MeV   
      3.38758E-02  to  3.43665E-02 MeV   
      3.43665E-02  to  3.48571E-02 MeV   
      3.48571E-02  to  3.53478E-02 MeV   
      3.53478E-02  to  3.58385E-02 MeV   
      3.58385E-02  to  3.63292E-02 MeV   
      3.63292E-02  to  3.68199E-02 MeV   
      3.68199E-02  to  3.73106E-02 MeV   
      3.73106E-02  to  3.78012E-02 MeV   
      3.78012E-02  to  3.82919E-02 MeV   
      3.82919E-02  to  3.87826E-02 MeV   
      3.87826E-02  to  3.92733E-02 MeV   
      3.92733E-02  to  3.97640E-02 MeV   
      3.97640E-02  to  4.02547E-02 MeV   
      4.02547E-02  to  4.07453E-02 MeV   
      4.07453E-02  to  4.12360E-02 MeV   
      4.12360E-02  to  4.17267E-02 MeV   
      4.17267E-02  to  4.22174E-02 MeV   
      4.22174E-02  to  4.27081E-02 MeV   
      4.27081E-02  to  4.31988E-02 MeV   
      4.31988E-02  to  4.36894E-02 MeV   
      4.36894E-02  to  4.41801E-02 MeV   
      4.41801E-02  to  4.46708E-02 MeV   
      4.46708E-02  to  4.51615E-02 MeV   
      4.51615E-02  to  4.56522E-02 MeV   
      4.56522E-02  to  4.61429E-02 MeV   
      4.61429E-02  to  4.66335E-02 MeV   
      4.66335E-02  to  4.71242E-02 MeV   
      4.71242E-02  to  4.76149E-02 MeV   
      4.76149E-02  to  4.81056E-02 MeV   
      4.81056E-02  to  4.85963E-02 MeV   
      4.85963E-02  to  4.90870E-02 MeV   
      4.90870E-02  to  4.95776E-02 MeV   
      4.95776E-02  to  5.00683E-02 MeV   
      5.00683E-02  to  5.05590E-02 MeV   
      5.05590E-02  to  5.10497E-02 MeV   
      5.10497E-02  to  5.15404E-02 MeV   
      5.15404E-02  to  5.20311E-02 MeV   
      5.20311E-02  to  5.25217E-02 MeV   
      5.25217E-02  to  5.30124E-02 MeV   
      5.30124E-02  to  5.35031E-02 MeV   
      5.35031E-02  to  5.39938E-02 MeV   
      5.39938E-02  to  5.44845E-02 MeV   
      5.44845E-02  to  5.49752E-02 MeV   
      5.49752E-02  to  5.54658E-02 MeV   
      5.54658E-02  to  5.59565E-02 MeV   
      5.59565E-02  to  5.64472E-02 MeV   
      5.64472E-02  to  5.69379E-02 MeV   
      5.69379E-02  to  5.74286E-02 MeV   
      5.74286E-02  to  5.79193E-02 MeV   
      5.79193E-02  to  5.84099E-02 MeV   
      5.84099E-02  to  5.89006E-02 MeV   
      5.89006E-02  to  5.93913E-02 MeV   
      5.93913E-02  to  5.98820E-02 MeV   
      5.98820E-02  to  6.03727E-02 MeV   
      6.03727E-02  to  6.08634E-02 MeV   
      6.08634E-02  to  6.13540E-02 MeV   
      6.13540E-02  to  6.18447E-02 MeV   
      6.18447E-02  to  6.23354E-02 MeV   
      6.23354E-02  to  6.28261E-02 MeV   
      6.28261E-02  to  6.33168E-02 MeV   
      6.33168E-02  to  6.38075E-02 MeV   
      6.38075E-02  to  6.42981E-02 MeV   
      6.42981E-02  to  6.47888E-02 MeV   
      6.47888E-02  to  6.52795E-02 MeV   
      6.52795E-02  to  6.57702E-02 MeV   
      6.57702E-02  to  6.62609E-02 MeV   
      6.62609E-02  to  6.67516E-02 MeV   
      6.67516E-02  to  6.72422E-02 MeV   
      6.72422E-02  to  6.77329E-02 MeV   
      6.77329E-02  to  6.82236E-02 MeV   
      6.82236E-02  to  6.87143E-02 MeV   
      6.87143E-02  to  6.92050E-02 MeV   
      6.92050E-02  to  6.96957E-02 MeV   
      6.96957E-02  to  7.01863E-02 MeV   
      7.01863E-02  to  7.06770E-02 MeV   
      7.06770E-02  to  7.11677E-02 MeV   
      7.11677E-02  to  7.16584E-02 MeV   
      7.16584E-02  to  7.21491E-02 MeV   
      7.21491E-02  to  7.26398E-02 MeV   
      7.26398E-02  to  7.31304E-02 MeV   
      7.31304E-02  to  7.36211E-02 MeV   
      7.36211E-02  to  7.41118E-02 MeV   
      7.41118E-02  to  7.46025E-02 MeV   
      7.46025E-02  to  7.50932E-02 MeV   
      7.50932E-02  to  7.55839E-02 MeV   
      7.55839E-02  to  7.60745E-02 MeV   
      7.60745E-02  to  7.65652E-02 MeV   
      7.65652E-02  to  7.70559E-02 MeV   
      7.70559E-02  to  7.75466E-02 MeV   
      7.75466E-02  to  7.80373E-02 MeV   
      7.80373E-02  to  7.85280E-02 MeV   
      7.85280E-02  to  7.90186E-02 MeV   
      7.90186E-02  to  7.95093E-02 MeV   
      7.95093E-02  to  8.00000E-02 MeV   
      total bin

1tally     1011                                                                                         print table 30
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 surfaces  100                                                                                                                         
1the following detectors are coincident:                                                                print table 35

     detector     tally          detector     tally

         1         215               1         115
         1         225               1         125
         1         235               1         135
1material composition                                                                                   print table 40

 the sum of the fractions of material      369 was 1.000010E+00

 material
  number     component nuclide, atom fraction

      369           74180, 1.20042E-03      74182, 2.65000E-01      74183, 1.43100E-01      74184, 3.06400E-01
                    74186, 2.84300E-01





 material
  number     component nuclide, mass fraction

      369           74180, 1.17499E-03      74182, 2.62270E-01      74183, 1.42406E-01      74184, 3.06582E-01
                    74186, 2.87567E-01
 
  warning.    1 materials had unnormalized fractions. print table 40.
1cell volumes and masses                                                                                print table 50

              cell     atom          gram         input       calculated                            reason volume
                      density       density       volume        volume         mass       pieces    not calculated

        1        1  0.00000E+00   0.00000E+00   0.00000E+00   5.23599E-01   0.00000E+00      1                      
        2        2  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        3        3  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        4        4  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        5        5  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        6        6  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        7        7  0.00000E+00   0.00000E+00   0.00000E+00   1.57080E+00   0.00000E+00      1                      
        8        8  6.32204E-02   1.93000E+01   0.00000E+00   4.00000E-08   7.72000E-07      0                      
        9        9  0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00      0      asymmetric      
       10       10  0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00      0      infinite        
1surface areas                                                                                          print table 50

           surface      input      calculated    reason area
                        area          area       not calculated

        1        1      0.00000E+00   3.14159E+00                   
        3        2.1    0.00000E+00   3.14159E+00                   
        4        2.2    0.00000E+00   9.42478E+00                   
        5        2.3    0.00000E+00   9.42478E+00                   
        7        3.1    0.00000E+00   3.14159E+00                   
       11        4.1    0.00000E+00   3.14159E+00                   
       15        5.1    0.00000E+00   3.14159E+00                   
       16        5.2    0.00000E+00   9.42478E+00                   
       17        5.3    0.00000E+00   9.42478E+00                   
       19        6.1    0.00000E+00   3.14159E+00                   
       23        7.1    0.00000E+00   3.14159E+00                   
       27        8.1    0.00000E+00   4.00000E-06                   
       28        8.2    0.00000E+00   4.00000E-06                   
       29        8.3    0.00000E+00   1.00000E-04                   
       30        8.4    0.00000E+00   1.00000E-04                   
       31        8.5    0.00000E+00   4.00000E-06                   
       32        8.6    0.00000E+00   4.00000E-06                   
       33      100      0.00000E+00   6.15752E+04                   
1cells                                                                                                  print table 60

                               atom        gram                                            photon     electron                         
              cell      mat   density     density     volume       mass            pieces importance importance                        

        1        1        0  0.00000E+00 0.00000E+00 5.23599E-01 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        2        2        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        3        3        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        4        4        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        5        5        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        6        6        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        7        7        0  0.00000E+00 0.00000E+00 1.57080E+00 0.00000E+00           1  1.0000E+00 1.0000E+00                        
        8        8      369  6.32204E-02 1.93000E+01 4.00000E-08 7.72000E-07           0  1.0000E+00 1.0000E+00                        
        9        9        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  1.0000E+00 1.0000E+00                        
       10       10        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  0.0000E+00 0.0000E+00                        

 total                                               9.94838E+00 7.72000E-07
1surfaces                                                                                               print table 70

           surface        trans  type   surface coefficients

        1        1                sy   -5.0000000E+00   5.0000000E-01
        2        2                rcc
        3        2.1              cy    1.0000000E+00
        4        2.2              py    4.0500000E+01
        5        2.3              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00  -4.0000000E+01
        6        3                rcc
        7        3.1              c/y   0.0000000E+00   5.0000000E+00   1.0000000E+00
       10        4                rcc
       11        4.1              c/y   0.0000000E+00   1.0000000E+01   1.0000000E+00
       14        5                rcc
       15        5.1              cx    1.0000000E+00
       16        5.2              px    4.0500000E+01
       17        5.3              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00  -4.0000000E+01
       18        6                rcc
       19        6.1              c/x   0.0000000E+00   5.0000000E+00   1.0000000E+00
       22        7                rcc
       23        7.1              c/x   0.0000000E+00   1.0000000E+01   1.0000000E+00
       26        8                rpp
       27        8.1              px    5.0000000E-03
       28        8.2              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00   5.0000000E-03
       29        8.3              py    2.0000000E-04
       30        8.4              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00   2.0000000E-04
       31        8.5              pz    5.0000000E-03
       32        8.6              p     0.0000000E+00   0.0000000E+00  -1.0000000E+00   5.0000000E-03
       33      100                so    7.0000000E+01
1  identical surfaces                                                                                   print table 70

   master surface     identical surfaces

         2.2           3.2        4.2                                                                                                  
         2.3           3.3        4.3                                                                                                  
         5.2           6.2        7.2                                                                                                  
         5.3           6.3        7.3                                                                                                  


   surface coefficients for identical surfaces not used.

             surface     trans  type   surface coefficients

        8        3.2              py    4.0500000E+01
       12        4.2              py    4.0500000E+01
        9        3.3              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00  -4.0000000E+01
       13        4.3              p     0.0000000E+00  -1.0000000E+00   0.0000000E+00  -4.0000000E+01
       20        6.2              px    4.0500000E+01
       24        7.2              px    4.0500000E+01
       21        6.3              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00  -4.0000000E+01
       25        7.3              p    -1.0000000E+00   0.0000000E+00   0.0000000E+00  -4.0000000E+01

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

         9 warning messages so far.
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

  74000.84p    9792  Update of MCPLIB04 Photon Compton Broadening Data For MCNP5 see LA-UR-    12-00018        01/03/12

  total        9792

 maximum photon energy set to    100.0 mev (maximum electron energy)

                        tables from file xdata/el03                                                      

  74000.03e    2367                                                                                          6/6/98    

1particles and energy limits                                                                            print table 101

                         particle      maximum       smallest      largest       always        always
                         cutoff        particle      table         table         use table     use model
   particle type         energy        energy        maximum       maximum       below         above

    2  p    photon      1.0000E-03    1.0000E+02    1.0000E+05    1.0000E+05    1.0000E+36    1.0000E+36
    3  e    electron    1.0000E-03    1.0000E+02    1.0000E+02    1.0000E+02    1.0000E+36    1.0000E+36
 
 
  warning.  material      369 has been set to a conductor.
1range table for material      369 (condensed)                                                          print table 85

 electron substeps per energy step =  12,  default =  12.  mean ionization energy = 7.27000E+02 ev.

 density effect data
 conductor
   z =  74
    occ no, be(ev) pairs
       2.  69529.000       2.  12103.000       2.  11546.000       4.  10209.000       2.   2823.000       2.   2577.000
       4.   2283.000       4.   1874.000       6.   1811.000       2.    599.000       2.    495.000       4.    428.000
       4.    261.000       6.    248.000       6.     38.000       8.     36.000       2.     80.000       2.     51.000
       4.     41.000      -6.      8.667
   z =  74
    occ no, be(ev) pairs
       2.  69529.000       2.  12103.000       2.  11546.000       4.  10209.000       2.   2823.000       2.   2577.000
       4.   2283.000       4.   1874.000       6.   1811.000       2.    599.000       2.    495.000       4.    428.000
       4.    261.000       6.    248.000       6.     38.000       8.     36.000       2.     80.000       2.     51.000
       4.     41.000      -6.      8.667
   z =  74
    occ no, be(ev) pairs
       2.  69529.000       2.  12103.000       2.  11546.000       4.  10209.000       2.   2823.000       2.   2577.000
       4.   2283.000       4.   1874.000       6.   1811.000       2.    599.000       2.    495.000       4.    428.000
       4.    261.000       6.    248.000       6.     38.000       8.     36.000       2.     80.000       2.     51.000
       4.     41.000      -6.      8.667
   z =  74
    occ no, be(ev) pairs
       2.  69529.000       2.  12103.000       2.  11546.000       4.  10209.000       2.   2823.000       2.   2577.000
       4.   2283.000       4.   1874.000       6.   1811.000       2.    599.000       2.    495.000       4.    428.000
       4.    261.000       6.    248.000       6.     38.000       8.     36.000       2.     80.000       2.     51.000
       4.     41.000      -6.      8.667
   z =  74
    occ no, be(ev) pairs
       2.  69529.000       2.  12103.000       2.  11546.000       4.  10209.000       2.   2823.000       2.   2577.000
       4.   2283.000       4.   1874.000       6.   1811.000       2.    599.000       2.    495.000       4.    428.000
       4.    261.000       6.    248.000       6.     38.000       8.     36.000       2.     80.000       2.     51.000
       4.     41.000      -6.      8.667
       plas(ev)       wt       tmin(mev)
       80.31613     2.13451     0.00000

         energy           stopping power           range   radiation   beta**2   density   rad/col   e-step    dyield
    n              collision radiation   total               yield                corr                range
          mev      mev cm2/g mev cm2/g mev cm2/g   g/cm2                        mev cm2/g             g/cm2

  133  1.0790E-03  1.603E+01 4.691E-03 1.604E+01 3.943E-05 2.444E-05  4.210E-03 1.843E-02 2.926E-04 5.813E-06 2.637E-08
  132  1.1766E-03  1.703E+01 5.017E-03 1.704E+01 4.533E-05 4.673E-05  4.589E-03 1.834E-02 2.945E-04 5.895E-06 2.861E-08
  131  1.2831E-03  1.776E+01 5.366E-03 1.777E+01 5.144E-05 6.757E-05  5.003E-03 1.824E-02 3.022E-04 6.111E-06 3.172E-08
  130  1.3992E-03  1.825E+01 5.738E-03 1.826E+01 5.788E-05 8.752E-05  5.454E-03 1.815E-02 3.144E-04 6.440E-06 3.576E-08
  129  1.5259E-03  1.854E+01 6.133E-03 1.854E+01 6.475E-05 1.070E-04  5.945E-03 1.806E-02 3.308E-04 6.876E-06 4.082E-08
  128  1.6640E-03  1.865E+01 6.551E-03 1.866E+01 7.217E-05 1.264E-04  6.481E-03 1.797E-02 3.512E-04 7.419E-06 4.706E-08
  127  1.8146E-03  1.862E+01 6.992E-03 1.863E+01 8.024E-05 1.460E-04  7.064E-03 1.788E-02 3.755E-04 8.073E-06 5.468E-08
  126  1.9788E-03  1.847E+01 7.458E-03 1.848E+01 8.909E-05 1.662E-04  7.700E-03 1.779E-02 4.038E-04 8.847E-06 6.394E-08
  125  2.1579E-03  1.822E+01 7.949E-03 1.823E+01 9.885E-05 1.873E-04  8.393E-03 1.770E-02 4.363E-04 9.756E-06 7.517E-08
  124  2.3532E-03  1.788E+01 8.464E-03 1.789E+01 1.097E-04 2.095E-04  9.147E-03 1.761E-02 4.733E-04 1.081E-05 8.877E-08
  123  2.5662E-03  1.748E+01 9.003E-03 1.749E+01 1.217E-04 2.331E-04  9.969E-03 1.753E-02 5.151E-04 1.204E-05 1.052E-07
  122  2.7985E-03  1.702E+01 9.565E-03 1.703E+01 1.352E-04 2.584E-04  1.086E-02 1.745E-02 5.621E-04 1.346E-05 1.250E-07
  121  3.0518E-03  1.652E+01 1.015E-02 1.653E+01 1.503E-04 2.857E-04  1.184E-02 1.736E-02 6.145E-04 1.510E-05 1.489E-07
  120  3.3280E-03  1.598E+01 1.076E-02 1.599E+01 1.672E-04 3.154E-04  1.290E-02 1.728E-02 6.730E-04 1.699E-05 1.777E-07
  119  3.6292E-03  1.543E+01 1.138E-02 1.544E+01 1.864E-04 3.477E-04  1.405E-02 1.720E-02 7.380E-04 1.917E-05 2.123E-07
  118  3.9576E-03  1.485E+01 1.203E-02 1.487E+01 2.081E-04 3.831E-04  1.531E-02 1.712E-02 8.102E-04 2.169E-05 2.540E-07
  117  4.3158E-03  1.427E+01 1.270E-02 1.428E+01 2.327E-04 4.218E-04  1.668E-02 1.705E-02 8.902E-04 2.459E-05 3.042E-07
  116  4.7065E-03  1.369E+01 1.339E-02 1.370E+01 2.606E-04 4.642E-04  1.817E-02 1.697E-02 9.785E-04 2.793E-05 3.646E-07
  115  5.1324E-03  1.310E+01 1.410E-02 1.312E+01 2.924E-04 5.109E-04  1.979E-02 1.689E-02 1.076E-03 3.178E-05 4.371E-07
  114  5.5969E-03  1.252E+01 1.481E-02 1.254E+01 3.286E-04 5.621E-04  2.155E-02 1.682E-02 1.183E-03 3.623E-05 5.240E-07
  113  6.1035E-03  1.195E+01 1.554E-02 1.197E+01 3.700E-04 6.183E-04  2.347E-02 1.674E-02 1.300E-03 4.137E-05 6.281E-07
  112  6.6559E-03  1.139E+01 1.628E-02 1.141E+01 4.173E-04 6.801E-04  2.555E-02 1.666E-02 1.429E-03 4.729E-05 7.528E-07
  111  7.2583E-03  1.084E+01 1.702E-02 1.086E+01 4.714E-04 7.479E-04  2.781E-02 1.659E-02 1.570E-03 5.414E-05 9.019E-07
  110  7.9153E-03  1.031E+01 1.777E-02 1.033E+01 5.335E-04 8.223E-04  3.027E-02 1.651E-02 1.724E-03 6.204E-05 1.080E-06
  109  8.6317E-03  9.796E+00 1.852E-02 9.814E+00 6.047E-04 9.038E-04  3.295E-02 1.643E-02 1.891E-03 7.118E-05 1.292E-06
  108  9.4129E-03  9.297E+00 1.928E-02 9.316E+00 6.864E-04 9.930E-04  3.585E-02 1.636E-02 2.073E-03 8.174E-05 1.546E-06
  107  1.0265E-02  8.816E+00 2.003E-02 8.836E+00 7.803E-04 1.091E-03  3.900E-02 1.628E-02 2.272E-03 9.394E-05 1.847E-06
  106  1.1194E-02  8.353E+00 2.078E-02 8.374E+00 8.884E-04 1.197E-03  4.241E-02 1.620E-02 2.488E-03 1.081E-04 2.206E-06
  105  1.2207E-02  7.910E+00 2.153E-02 7.931E+00 1.013E-03 1.313E-03  4.612E-02 1.612E-02 2.722E-03 1.244E-04 2.633E-06
  104  1.3312E-02  7.485E+00 2.228E-02 7.507E+00 1.156E-03 1.440E-03  5.013E-02 1.604E-02 2.977E-03 1.432E-04 3.140E-06
  103  1.4517E-02  7.079E+00 2.303E-02 7.102E+00 1.321E-03 1.578E-03  5.448E-02 1.595E-02 3.253E-03 1.651E-04 3.741E-06
  102  1.5831E-02  6.692E+00 2.377E-02 6.716E+00 1.511E-03 1.729E-03  5.919E-02 1.587E-02 3.551E-03 1.903E-04 4.455E-06
  101  1.7263E-02  6.324E+00 2.450E-02 6.348E+00 1.731E-03 1.892E-03  6.429E-02 1.578E-02 3.874E-03 2.195E-04 5.300E-06
  100  1.8826E-02  5.973E+00 2.523E-02 5.999E+00 1.984E-03 2.070E-03  6.980E-02 1.570E-02 4.223E-03 2.533E-04 6.301E-06
   99  2.0530E-02  5.641E+00 2.595E-02 5.667E+00 2.277E-03 2.263E-03  7.575E-02 1.561E-02 4.601E-03 2.924E-04 7.485E-06
   98  2.2388E-02  5.325E+00 2.667E-02 5.352E+00 2.614E-03 2.472E-03  8.218E-02 1.552E-02 5.008E-03 3.376E-04 8.885E-06
   97  2.4414E-02  5.027E+00 2.739E-02 5.054E+00 3.004E-03 2.698E-03  8.912E-02 1.543E-02 5.448E-03 3.898E-04 1.054E-05
   96  2.6624E-02  4.744E+00 2.810E-02 4.773E+00 3.454E-03 2.944E-03  9.659E-02 1.534E-02 5.923E-03 4.502E-04 1.249E-05
   95  2.9033E-02  4.478E+00 2.882E-02 4.507E+00 3.974E-03 3.209E-03  1.046E-01 1.524E-02 6.436E-03 5.199E-04 1.480E-05
   94  3.1661E-02  4.226E+00 2.954E-02 4.256E+00 4.574E-03 3.496E-03  1.133E-01 1.515E-02 6.990E-03 6.004E-04 1.752E-05
   93  3.4527E-02  3.989E+00 3.026E-02 4.019E+00 5.268E-03 3.807E-03  1.226E-01 1.506E-02 7.587E-03 6.933E-04 2.074E-05
   92  3.7652E-02  3.766E+00 3.099E-02 3.797E+00 6.068E-03 4.142E-03  1.325E-01 1.497E-02 8.230E-03 8.004E-04 2.452E-05
   91  4.1059E-02  3.556E+00 3.173E-02 3.588E+00 6.992E-03 4.504E-03  1.432E-01 1.487E-02 8.923E-03 9.238E-04 2.898E-05
   90  4.4776E-02  3.359E+00 3.248E-02 3.391E+00 8.058E-03 4.895E-03  1.546E-01 1.479E-02 9.669E-03 1.066E-03 3.423E-05
   89  4.8828E-02  3.174E+00 3.324E-02 3.207E+00 9.288E-03 5.316E-03  1.668E-01 1.470E-02 1.047E-02 1.230E-03 4.041E-05
   88  5.3247E-02  3.000E+00 3.404E-02 3.034E+00 1.071E-02 5.771E-03  1.798E-01 1.462E-02 1.134E-02 1.418E-03 4.769E-05
   87  5.8067E-02  2.838E+00 3.486E-02 2.872E+00 1.234E-02 6.261E-03  1.937E-01 1.454E-02 1.228E-02 1.633E-03 5.628E-05
   86  6.3322E-02  2.685E+00 3.571E-02 2.721E+00 1.422E-02 6.790E-03  2.084E-01 1.446E-02 1.330E-02 1.881E-03 6.638E-05
   85  6.9053E-02  2.543E+00 3.658E-02 2.580E+00 1.638E-02 7.359E-03  2.239E-01 1.440E-02 1.438E-02 2.164E-03 7.824E-05
   84  7.5303E-02  2.410E+00 3.747E-02 2.448E+00 1.887E-02 7.972E-03  2.404E-01 1.434E-02 1.555E-02 2.488E-03 9.215E-05
   83  8.2119E-02  2.287E+00 3.841E-02 2.325E+00 2.173E-02 8.631E-03  2.577E-01 1.429E-02 1.680E-02 2.858E-03 1.085E-04
   82  8.9551E-02  2.171E+00 3.937E-02 2.211E+00 2.501E-02 9.340E-03  2.760E-01 1.425E-02 1.813E-02 3.280E-03 1.276E-04
   81  9.7656E-02  2.064E+00 4.037E-02 2.104E+00 2.877E-02 1.010E-02  2.951E-01 1.423E-02 1.956E-02 3.760E-03 1.500E-04
   80  1.0649E-01  1.964E+00 4.139E-02 2.005E+00 3.308E-02 1.091E-02  3.152E-01 1.422E-02 2.108E-02 4.305E-03 1.760E-04
   79  1.1613E-01  1.871E+00 4.244E-02 1.914E+00 3.800E-02 1.179E-02  3.361E-01 1.422E-02 2.268E-02 4.923E-03 2.064E-04
   78  1.2664E-01  1.785E+00 4.352E-02 1.829E+00 4.362E-02 1.272E-02  3.578E-01 1.425E-02 2.438E-02 5.621E-03 2.417E-04
   77  1.3811E-01  1.706E+00 4.464E-02 1.750E+00 5.003E-02 1.371E-02  3.803E-01 1.429E-02 2.617E-02 6.410E-03 2.826E-04
   76  1.5061E-01  1.632E+00 4.580E-02 1.678E+00 5.733E-02 1.476E-02  4.035E-01 1.437E-02 2.806E-02 7.297E-03 3.301E-04
   75  1.6424E-01  1.564E+00 4.702E-02 1.611E+00 6.562E-02 1.588E-02  4.273E-01 1.446E-02 3.005E-02 8.293E-03 3.850E-04
   74  1.7910E-01  1.502E+00 4.829E-02 1.550E+00 7.503E-02 1.707E-02  4.517E-01 1.459E-02 3.215E-02 9.409E-03 4.484E-04
   73  1.9531E-01  1.445E+00 4.963E-02 1.494E+00 8.568E-02 1.832E-02  4.766E-01 1.475E-02 3.436E-02 1.066E-02 5.218E-04
   72  2.1299E-01  1.392E+00 5.106E-02 1.443E+00 9.773E-02 1.965E-02  5.018E-01 1.495E-02 3.668E-02 1.204E-02 6.064E-04
   71  2.3227E-01  1.344E+00 5.259E-02 1.397E+00 1.113E-01 2.105E-02  5.273E-01 1.519E-02 3.913E-02 1.359E-02 7.041E-04
   70  2.5329E-01  1.300E+00 5.423E-02 1.354E+00 1.266E-01 2.253E-02  5.530E-01 1.548E-02 4.171E-02 1.529E-02 8.168E-04
   69  2.7621E-01  1.260E+00 5.599E-02 1.316E+00 1.438E-01 2.408E-02  5.786E-01 1.583E-02 4.443E-02 1.718E-02 9.467E-04
   68  3.0121E-01  1.224E+00 5.791E-02 1.282E+00 1.630E-01 2.573E-02  6.042E-01 1.623E-02 4.730E-02 1.925E-02 1.097E-03
   67  3.2848E-01  1.192E+00 5.998E-02 1.252E+00 1.846E-01 2.745E-02  6.295E-01 1.669E-02 5.034E-02 2.153E-02 1.269E-03
   66  3.5820E-01  1.162E+00 6.225E-02 1.225E+00 2.086E-01 2.927E-02  6.544E-01 1.723E-02 5.355E-02 2.402E-02 1.468E-03
   65  3.9062E-01  1.136E+00 6.472E-02 1.201E+00 2.353E-01 3.119E-02  6.788E-01 1.784E-02 5.695E-02 2.674E-02 1.698E-03
   64  4.2598E-01  1.113E+00 6.744E-02 1.181E+00 2.650E-01 3.321E-02  7.026E-01 1.854E-02 6.057E-02 2.970E-02 1.962E-03
   63  4.6453E-01  1.093E+00 7.042E-02 1.163E+00 2.979E-01 3.533E-02  7.256E-01 1.933E-02 6.443E-02 3.290E-02 2.268E-03
   62  5.0658E-01  1.075E+00 7.372E-02 1.149E+00 3.343E-01 3.758E-02  7.478E-01 2.022E-02 6.855E-02 3.637E-02 2.621E-03
   61  5.5243E-01  1.060E+00 7.735E-02 1.137E+00 3.744E-01 3.994E-02  7.691E-01 2.121E-02 7.297E-02 4.012E-02 3.030E-03
   60  6.0243E-01  1.047E+00 8.138E-02 1.128E+00 4.186E-01 4.244E-02  7.894E-01 2.231E-02 7.772E-02 4.414E-02 3.503E-03
   59  6.5695E-01  1.036E+00 8.584E-02 1.122E+00 4.670E-01 4.509E-02  8.086E-01 2.353E-02 8.283E-02 4.846E-02 4.052E-03
   58  7.1641E-01  1.027E+00 9.078E-02 1.118E+00 5.201E-01 4.789E-02  8.267E-01 2.485E-02 8.836E-02 5.309E-02 4.688E-03
   57  7.8125E-01  1.020E+00 9.626E-02 1.117E+00 5.781E-01 5.086E-02  8.436E-01 2.630E-02 9.433E-02 5.804E-02 5.427E-03
   56  8.5196E-01  1.015E+00 1.023E-01 1.118E+00 6.415E-01 5.402E-02  8.594E-01 2.788E-02 1.008E-01 6.331E-02 6.286E-03
   55  9.2907E-01  1.012E+00 1.091E-01 1.121E+00 7.104E-01 5.738E-02  8.741E-01 2.958E-02 1.078E-01 6.891E-02 7.285E-03
   54  1.0132E+00  1.009E+00 1.166E-01 1.126E+00 7.852E-01 6.095E-02  8.876E-01 3.141E-02 1.155E-01 7.487E-02 8.446E-03
   53  1.1049E+00  1.009E+00 1.248E-01 1.133E+00 8.664E-01 6.476E-02  9.000E-01 3.337E-02 1.238E-01 8.118E-02 9.798E-03
   52  1.2049E+00  1.009E+00 1.340E-01 1.143E+00 9.543E-01 6.882E-02  9.113E-01 3.547E-02 1.328E-01 8.786E-02 1.137E-02
   51  1.3139E+00  1.011E+00 1.442E-01 1.155E+00 1.049E+00 7.316E-02  9.216E-01 3.770E-02 1.426E-01 9.492E-02 1.320E-02
   50  1.4328E+00  1.013E+00 1.554E-01 1.169E+00 1.152E+00 7.778E-02  9.309E-01 4.008E-02 1.533E-01 1.024E-01 1.533E-02
   49  1.5625E+00  1.017E+00 1.678E-01 1.185E+00 1.262E+00 8.272E-02  9.393E-01 4.259E-02 1.650E-01 1.102E-01 1.780E-02
   48  1.7039E+00  1.022E+00 1.815E-01 1.203E+00 1.380E+00 8.799E-02  9.468E-01 4.524E-02 1.777E-01 1.185E-01 2.068E-02
   47  1.8581E+00  1.027E+00 1.967E-01 1.224E+00 1.507E+00 9.362E-02  9.535E-01 4.803E-02 1.915E-01 1.271E-01 2.403E-02
   46  2.0263E+00  1.033E+00 2.134E-01 1.246E+00 1.643E+00 9.963E-02  9.594E-01 5.096E-02 2.066E-01 1.362E-01 2.792E-02
   45  2.2097E+00  1.040E+00 2.319E-01 1.272E+00 1.789E+00 1.060E-01  9.647E-01 5.403E-02 2.231E-01 1.457E-01 3.243E-02
   44  2.4097E+00  1.047E+00 2.524E-01 1.299E+00 1.945E+00 1.129E-01  9.694E-01 5.724E-02 2.411E-01 1.556E-01 3.767E-02
   43  2.6278E+00  1.054E+00 2.750E-01 1.329E+00 2.111E+00 1.202E-01  9.735E-01 6.059E-02 2.608E-01 1.659E-01 4.375E-02
   42  2.8656E+00  1.063E+00 2.999E-01 1.362E+00 2.287E+00 1.279E-01  9.771E-01 6.409E-02 2.822E-01 1.767E-01 5.078E-02
   41  3.1250E+00  1.071E+00 3.274E-01 1.398E+00 2.475E+00 1.361E-01  9.802E-01 6.773E-02 3.057E-01 1.879E-01 5.892E-02
   40  3.4078E+00  1.080E+00 3.578E-01 1.438E+00 2.675E+00 1.449E-01  9.830E-01 7.153E-02 3.313E-01 1.995E-01 6.831E-02
   39  3.7163E+00  1.089E+00 3.912E-01 1.480E+00 2.886E+00 1.542E-01  9.854E-01 7.547E-02 3.593E-01 2.114E-01 7.916E-02
   38  4.0526E+00  1.098E+00 4.281E-01 1.526E+00 3.110E+00 1.640E-01  9.875E-01 7.957E-02 3.898E-01 2.238E-01 9.164E-02
   37  4.4194E+00  1.108E+00 4.688E-01 1.576E+00 3.346E+00 1.744E-01  9.893E-01 8.382E-02 4.233E-01 2.364E-01 1.060E-01
   36  4.8194E+00  1.117E+00 5.137E-01 1.631E+00 3.596E+00 1.853E-01  9.908E-01 8.823E-02 4.598E-01 2.494E-01 1.225E-01
   35  5.2556E+00  1.127E+00 5.631E-01 1.690E+00 3.859E+00 1.968E-01  9.921E-01 9.281E-02 4.997E-01 2.627E-01 1.414E-01
   34  5.7313E+00  1.137E+00 6.176E-01 1.754E+00 4.135E+00 2.089E-01  9.933E-01 9.754E-02 5.434E-01 2.762E-01 1.630E-01
   33  6.2500E+00  1.146E+00 6.777E-01 1.824E+00 4.425E+00 2.216E-01  9.943E-01 1.024E-01 5.912E-01 2.900E-01 1.877E-01
   32  6.8157E+00  1.156E+00 7.439E-01 1.900E+00 4.729E+00 2.349E-01  9.951E-01 1.075E-01 6.434E-01 3.038E-01 2.159E-01
   31  7.4325E+00  1.166E+00 8.169E-01 1.983E+00 5.046E+00 2.488E-01  9.959E-01 1.127E-01 7.006E-01 3.178E-01 2.479E-01
   30  8.1052E+00  1.176E+00 8.972E-01 2.073E+00 5.378E+00 2.632E-01  9.965E-01 1.181E-01 7.631E-01 3.318E-01 2.842E-01
   29  8.8388E+00  1.185E+00 9.857E-01 2.171E+00 5.724E+00 2.782E-01  9.970E-01 1.236E-01 8.315E-01 3.458E-01 3.254E-01
   28  9.6388E+00  1.195E+00 1.083E+00 2.278E+00 6.084E+00 2.936E-01  9.975E-01 1.292E-01 9.062E-01 3.597E-01 3.719E-01
   27  1.0511E+01  1.205E+00 1.190E+00 2.395E+00 6.457E+00 3.096E-01  9.979E-01 1.351E-01 9.880E-01 3.734E-01 4.243E-01
   26  1.1463E+01  1.214E+00 1.308E+00 2.523E+00 6.844E+00 3.261E-01  9.982E-01 1.410E-01 1.077E+00 3.870E-01 4.832E-01
   25  1.2500E+01  1.224E+00 1.438E+00 2.662E+00 7.244E+00 3.430E-01  9.985E-01 1.471E-01 1.175E+00 4.003E-01 5.494E-01
   24  1.3631E+01  1.233E+00 1.581E+00 2.814E+00 7.658E+00 3.603E-01  9.987E-01 1.534E-01 1.282E+00 4.133E-01 6.235E-01
   23  1.4865E+01  1.243E+00 1.737E+00 2.980E+00 8.084E+00 3.779E-01  9.989E-01 1.597E-01 1.398E+00 4.260E-01 7.064E-01
   22  1.6210E+01  1.252E+00 1.910E+00 3.162E+00 8.522E+00 3.958E-01  9.991E-01 1.663E-01 1.526E+00 4.383E-01 7.988E-01
   21  1.7678E+01  1.261E+00 2.099E+00 3.360E+00 8.972E+00 4.139E-01  9.992E-01 1.729E-01 1.665E+00 4.501E-01 9.017E-01
   20  1.9278E+01  1.270E+00 2.307E+00 3.577E+00 9.433E+00 4.323E-01  9.993E-01 1.797E-01 1.817E+00 4.614E-01 1.016E+00
   19  2.1022E+01  1.279E+00 2.536E+00 3.815E+00 9.906E+00 4.508E-01  9.994E-01 1.867E-01 1.983E+00 4.722E-01 1.143E+00
   18  2.2925E+01  1.288E+00 2.787E+00 4.075E+00 1.039E+01 4.694E-01  9.995E-01 1.938E-01 2.165E+00 4.825E-01 1.284E+00
   17  2.5000E+01  1.296E+00 3.063E+00 4.360E+00 1.088E+01 4.880E-01  9.996E-01 2.010E-01 2.363E+00 4.922E-01 1.439E+00
   16  2.7263E+01  1.305E+00 3.366E+00 4.671E+00 1.138E+01 5.065E-01  9.997E-01 2.084E-01 2.579E+00 5.013E-01 1.611E+00
   15  2.9730E+01  1.313E+00 3.698E+00 5.012E+00 1.189E+01 5.250E-01  9.997E-01 2.160E-01 2.816E+00 5.099E-01 1.800E+00
   14  3.2421E+01  1.322E+00 4.063E+00 5.384E+00 1.241E+01 5.434E-01  9.998E-01 2.237E-01 3.074E+00 5.179E-01 2.008E+00
   13  3.5355E+01  1.330E+00 4.462E+00 5.792E+00 1.293E+01 5.616E-01  9.998E-01 2.315E-01 3.356E+00 5.254E-01 2.238E+00
   12  3.8555E+01  1.338E+00 4.900E+00 6.237E+00 1.347E+01 5.796E-01  9.998E-01 2.395E-01 3.663E+00 5.323E-01 2.490E+00
   11  4.2045E+01  1.346E+00 5.379E+00 6.725E+00 1.401E+01 5.973E-01  9.999E-01 2.477E-01 3.998E+00 5.387E-01 2.767E+00
   10  4.5850E+01  1.353E+00 5.905E+00 7.258E+00 1.455E+01 6.147E-01  9.999E-01 2.560E-01 4.364E+00 5.445E-01 3.071E+00
    9  5.0000E+01  1.361E+00 6.481E+00 7.842E+00 1.510E+01 6.317E-01  9.999E-01 2.644E-01 4.762E+00 5.499E-01 3.404E+00
    8  5.4525E+01  1.368E+00 7.112E+00 8.480E+00 1.565E+01 6.484E-01  9.999E-01 2.729E-01 5.198E+00 5.548E-01 3.768E+00
    7  5.9460E+01  1.376E+00 7.803E+00 9.179E+00 1.621E+01 6.647E-01  9.999E-01 2.816E-01 5.672E+00 5.592E-01 4.168E+00
    6  6.4842E+01  1.383E+00 8.560E+00 9.943E+00 1.678E+01 6.805E-01  9.999E-01 2.904E-01 6.189E+00 5.632E-01 4.605E+00
    5  7.0711E+01  1.390E+00 9.387E+00 1.078E+01 1.734E+01 6.959E-01  9.999E-01 2.993E-01 6.753E+00 5.668E-01 5.083E+00
    4  7.7111E+01  1.397E+00 1.029E+01 1.169E+01 1.791E+01 7.109E-01  1.000E+00 3.082E-01 7.367E+00 5.700E-01 5.605E+00
    3  8.4090E+01  1.404E+00 1.128E+01 1.269E+01 1.849E+01 7.253E-01  1.000E+00 3.173E-01 8.037E+00 5.729E-01 6.177E+00
    2  9.1700E+01  1.411E+00 1.237E+01 1.378E+01 1.906E+01 7.393E-01  1.000E+00 3.265E-01 8.766E+00 5.754E-01 6.801E+00
    1  1.0000E+02  1.418E+00 1.355E+01 1.497E+01 1.964E+01 7.528E-01  1.000E+00 3.358E-01 9.560E+00 5.777E-01 7.483E+00

1electron secondary production for material      369                                                        print table 86

         energy           stopping power           brems   thick tgt   k x-ray   knock-on
    n              collision radiation   total               brems
          mev      mev barn  mev barn  mev barn    barn                 barn      barn
  133  1.0790E-03  4.894E+03 1.432E+00 4.896E+03 1.266E+04 2.426E-04  0.000E+00 0.000E+00
  132  1.1766E-03  5.200E+03 1.532E+00 5.202E+03 1.250E+04 4.855E-04  0.000E+00 0.000E+00
  131  1.2831E-03  5.422E+03 1.638E+00 5.424E+03 1.234E+04 7.342E-04  0.000E+00 0.000E+00
  130  1.3992E-03  5.572E+03 1.752E+00 5.573E+03 1.218E+04 9.929E-04  0.000E+00 0.000E+00
  129  1.5259E-03  5.659E+03 1.872E+00 5.661E+03 1.203E+04 1.266E-03  0.000E+00 0.000E+00
  128  1.6640E-03  5.695E+03 2.000E+00 5.697E+03 1.188E+04 1.556E-03  0.000E+00 0.000E+00
  127  1.8146E-03  5.685E+03 2.135E+00 5.688E+03 1.172E+04 1.868E-03  0.000E+00 0.000E+00
  126  1.9788E-03  5.639E+03 2.277E+00 5.641E+03 1.156E+04 2.205E-03  0.000E+00 0.000E+00
  125  2.1579E-03  5.562E+03 2.427E+00 5.564E+03 1.140E+04 2.572E-03  0.000E+00 1.542E+05
  124  2.3532E-03  5.459E+03 2.584E+00 5.461E+03 1.124E+04 2.973E-03  0.000E+00 2.739E+05
  123  2.5662E-03  5.335E+03 2.748E+00 5.338E+03 1.106E+04 3.413E-03  0.000E+00 3.541E+05
  122  2.7985E-03  5.195E+03 2.920E+00 5.198E+03 1.088E+04 3.897E-03  0.000E+00 4.077E+05
  121  3.0518E-03  5.042E+03 3.098E+00 5.045E+03 1.069E+04 4.431E-03  0.000E+00 4.426E+05
  120  3.3280E-03  4.879E+03 3.284E+00 4.883E+03 1.050E+04 5.020E-03  0.000E+00 4.640E+05
  119  3.6292E-03  4.709E+03 3.475E+00 4.713E+03 1.029E+04 5.673E-03  0.000E+00 4.753E+05
  118  3.9576E-03  4.535E+03 3.674E+00 4.538E+03 1.006E+04 6.395E-03  0.000E+00 4.790E+05
  117  4.3158E-03  4.357E+03 3.878E+00 4.361E+03 9.825E+03 7.196E-03  0.000E+00 4.769E+05
  116  4.7065E-03  4.178E+03 4.089E+00 4.182E+03 9.584E+03 8.084E-03  0.000E+00 4.702E+05
  115  5.1324E-03  4.000E+03 4.304E+00 4.004E+03 9.348E+03 9.070E-03  0.000E+00 4.601E+05
  114  5.5969E-03  3.823E+03 4.522E+00 3.828E+03 9.120E+03 1.017E-02  0.000E+00 4.474E+05
  113  6.1035E-03  3.649E+03 4.744E+00 3.653E+03 8.886E+03 1.139E-02  0.000E+00 4.327E+05
  112  6.6559E-03  3.478E+03 4.970E+00 3.483E+03 8.637E+03 1.274E-02  0.000E+00 4.166E+05
  111  7.2583E-03  3.311E+03 5.197E+00 3.316E+03 8.378E+03 1.425E-02  0.000E+00 3.994E+05
  110  7.9153E-03  3.148E+03 5.426E+00 3.153E+03 8.115E+03 1.593E-02  0.000E+00 3.817E+05
  109  8.6317E-03  2.990E+03 5.655E+00 2.996E+03 7.851E+03 1.779E-02  0.000E+00 3.636E+05
  108  9.4129E-03  2.838E+03 5.885E+00 2.844E+03 7.586E+03 1.986E-02  0.000E+00 3.455E+05
  107  1.0265E-02  2.691E+03 6.115E+00 2.697E+03 7.318E+03 2.215E-02  0.000E+00 3.274E+05
  106  1.1194E-02  2.550E+03 6.345E+00 2.557E+03 7.046E+03 2.469E-02  0.000E+00 3.096E+05
  105  1.2207E-02  2.415E+03 6.574E+00 2.421E+03 6.774E+03 2.751E-02  0.000E+00 2.923E+05
  104  1.3312E-02  2.285E+03 6.802E+00 2.292E+03 6.503E+03 3.062E-02  0.000E+00 2.754E+05
  103  1.4517E-02  2.161E+03 7.030E+00 2.168E+03 6.237E+03 3.407E-02  0.000E+00 2.592E+05
  102  1.5831E-02  2.043E+03 7.255E+00 2.050E+03 5.977E+03 3.787E-02  0.000E+00 2.435E+05
  101  1.7263E-02  1.931E+03 7.479E+00 1.938E+03 5.725E+03 4.208E-02  0.000E+00 2.286E+05
  100  1.8826E-02  1.824E+03 7.702E+00 1.831E+03 5.479E+03 4.673E-02  0.000E+00 2.143E+05
   99  2.0530E-02  1.722E+03 7.923E+00 1.730E+03 5.239E+03 5.186E-02  0.000E+00 2.007E+05
   98  2.2388E-02  1.626E+03 8.142E+00 1.634E+03 5.005E+03 5.753E-02  0.000E+00 1.879E+05
   97  2.4414E-02  1.535E+03 8.361E+00 1.543E+03 4.777E+03 6.377E-02  0.000E+00 1.758E+05
   96  2.6624E-02  1.448E+03 8.579E+00 1.457E+03 4.555E+03 7.065E-02  0.000E+00 1.643E+05
   95  2.9033E-02  1.367E+03 8.798E+00 1.376E+03 4.339E+03 7.822E-02  0.000E+00 1.536E+05
   94  3.1661E-02  1.290E+03 9.018E+00 1.299E+03 4.129E+03 8.655E-02  0.000E+00 1.435E+05
   93  3.4527E-02  1.218E+03 9.239E+00 1.227E+03 3.929E+03 9.570E-02  0.000E+00 1.340E+05
   92  3.7652E-02  1.150E+03 9.462E+00 1.159E+03 3.744E+03 1.058E-01  0.000E+00 1.252E+05
   91  4.1059E-02  1.086E+03 9.686E+00 1.095E+03 3.578E+03 1.168E-01  0.000E+00 1.169E+05
   90  4.4776E-02  1.025E+03 9.914E+00 1.035E+03 3.429E+03 1.291E-01  0.000E+00 1.092E+05
   89  4.8828E-02  9.689E+02 1.015E+01 9.790E+02 3.283E+03 1.426E-01  0.000E+00 1.021E+05
   88  5.3247E-02  9.159E+02 1.039E+01 9.263E+02 3.131E+03 1.575E-01  0.000E+00 9.539E+04
   87  5.8067E-02  8.663E+02 1.064E+01 8.769E+02 2.978E+03 1.738E-01  0.000E+00 8.920E+04
   86  6.3322E-02  8.198E+02 1.090E+01 8.307E+02 2.835E+03 1.917E-01  0.000E+00 8.345E+04
   85  6.9053E-02  7.764E+02 1.117E+01 7.876E+02 2.702E+03 2.114E-01  0.000E+00 7.812E+04
   84  7.5303E-02  7.359E+02 1.144E+01 7.473E+02 2.574E+03 2.329E-01  7.020E+00 7.318E+04
   83  8.2119E-02  6.981E+02 1.172E+01 7.098E+02 2.447E+03 2.564E-01  7.475E+00 6.861E+04
   82  8.9551E-02  6.628E+02 1.202E+01 6.749E+02 2.321E+03 2.820E-01  7.990E+00 6.439E+04
   81  9.7656E-02  6.300E+02 1.232E+01 6.424E+02 2.202E+03 3.098E-01  8.527E+00 6.049E+04
   80  1.0649E-01  5.996E+02 1.264E+01 6.122E+02 2.094E+03 3.401E-01  9.059E+00 5.688E+04
   79  1.1613E-01  5.713E+02 1.296E+01 5.842E+02 1.998E+03 3.731E-01  9.568E+00 5.356E+04
   78  1.2664E-01  5.450E+02 1.329E+01 5.583E+02 1.911E+03 4.091E-01  1.004E+01 5.050E+04
   77  1.3811E-01  5.208E+02 1.363E+01 5.344E+02 1.831E+03 4.484E-01  1.048E+01 4.768E+04
   76  1.5061E-01  4.983E+02 1.398E+01 5.123E+02 1.757E+03 4.912E-01  1.087E+01 4.508E+04
   75  1.6424E-01  4.776E+02 1.435E+01 4.920E+02 1.687E+03 5.380E-01  1.122E+01 4.269E+04
   74  1.7910E-01  4.585E+02 1.474E+01 4.733E+02 1.621E+03 5.890E-01  1.153E+01 4.050E+04
   73  1.9531E-01  4.410E+02 1.515E+01 4.562E+02 1.557E+03 6.444E-01  1.181E+01 3.849E+04
   72  2.1299E-01  4.250E+02 1.559E+01 4.406E+02 1.496E+03 7.047E-01  1.205E+01 3.664E+04
   71  2.3227E-01  4.103E+02 1.605E+01 4.263E+02 1.438E+03 7.699E-01  1.226E+01 3.495E+04
   70  2.5329E-01  3.969E+02 1.655E+01 4.135E+02 1.383E+03 8.406E-01  1.245E+01 3.340E+04
   69  2.7621E-01  3.847E+02 1.709E+01 4.018E+02 1.331E+03 9.169E-01  1.262E+01 3.198E+04
   68  3.0121E-01  3.737E+02 1.768E+01 3.914E+02 1.284E+03 9.994E-01  1.277E+01 3.069E+04
   67  3.2848E-01  3.638E+02 1.831E+01 3.821E+02 1.242E+03 1.088E+00  1.291E+01 2.950E+04
   66  3.5820E-01  3.549E+02 1.900E+01 3.739E+02 1.203E+03 1.185E+00  1.304E+01 2.843E+04
   65  3.9062E-01  3.469E+02 1.976E+01 3.667E+02 1.167E+03 1.288E+00  1.317E+01 2.744E+04
   64  4.2598E-01  3.399E+02 2.059E+01 3.605E+02 1.135E+03 1.400E+00  1.329E+01 2.655E+04
   63  4.6453E-01  3.337E+02 2.150E+01 3.552E+02 1.105E+03 1.521E+00  1.341E+01 2.574E+04
   62  5.0658E-01  3.283E+02 2.250E+01 3.508E+02 1.078E+03 1.651E+00  1.353E+01 2.501E+04
   61  5.5243E-01  3.236E+02 2.361E+01 3.472E+02 1.052E+03 1.791E+00  1.366E+01 2.434E+04
   60  6.0243E-01  3.197E+02 2.484E+01 3.445E+02 1.029E+03 1.942E+00  1.379E+01 2.374E+04
   59  6.5695E-01  3.164E+02 2.620E+01 3.426E+02 1.008E+03 2.103E+00  1.393E+01 2.320E+04
   58  7.1641E-01  3.137E+02 2.771E+01 3.414E+02 9.886E+02 2.277E+00  1.408E+01 2.271E+04
   57  7.8125E-01  3.115E+02 2.939E+01 3.409E+02 9.714E+02 2.463E+00  1.423E+01 2.227E+04
   56  8.5196E-01  3.099E+02 3.124E+01 3.412E+02 9.558E+02 2.663E+00  1.440E+01 2.187E+04
   55  9.2907E-01  3.088E+02 3.330E+01 3.421E+02 9.418E+02 2.877E+00  1.457E+01 2.152E+04
   54  1.0132E+00  3.082E+02 3.559E+01 3.437E+02 9.292E+02 3.107E+00  1.475E+01 2.120E+04
   53  1.1049E+00  3.079E+02 3.811E+01 3.460E+02 9.178E+02 3.352E+00  1.494E+01 2.092E+04
   52  1.2049E+00  3.081E+02 4.091E+01 3.490E+02 9.074E+02 3.615E+00  1.514E+01 2.067E+04
   51  1.3139E+00  3.086E+02 4.401E+01 3.526E+02 8.981E+02 3.895E+00  1.535E+01 2.045E+04
   50  1.4328E+00  3.094E+02 4.743E+01 3.568E+02 8.897E+02 4.195E+00  1.557E+01 2.025E+04
   49  1.5625E+00  3.105E+02 5.122E+01 3.617E+02 8.821E+02 4.515E+00  1.580E+01 2.008E+04
   48  1.7039E+00  3.119E+02 5.541E+01 3.673E+02 8.752E+02 4.856E+00  1.604E+01 1.993E+04
   47  1.8581E+00  3.135E+02 6.004E+01 3.735E+02 8.689E+02 5.219E+00  1.629E+01 1.979E+04
   46  2.0263E+00  3.153E+02 6.515E+01 3.805E+02 8.631E+02 5.605E+00  1.654E+01 1.967E+04
   45  2.2097E+00  3.174E+02 7.081E+01 3.882E+02 8.577E+02 6.016E+00  1.680E+01 1.957E+04
   44  2.4097E+00  3.196E+02 7.705E+01 3.966E+02 8.527E+02 6.452E+00  1.707E+01 1.948E+04
   43  2.6278E+00  3.219E+02 8.395E+01 4.059E+02 8.482E+02 6.914E+00  1.735E+01 1.940E+04
   42  2.8656E+00  3.244E+02 9.156E+01 4.159E+02 8.440E+02 7.404E+00  1.763E+01 1.933E+04
   41  3.1250E+00  3.270E+02 9.995E+01 4.269E+02 8.403E+02 7.922E+00  1.792E+01 1.927E+04
   40  3.4078E+00  3.297E+02 1.092E+02 4.389E+02 8.370E+02 8.470E+00  1.821E+01 1.922E+04
   39  3.7163E+00  3.324E+02 1.194E+02 4.519E+02 8.339E+02 9.049E+00  1.851E+01 1.917E+04
   38  4.0526E+00  3.353E+02 1.307E+02 4.660E+02 8.311E+02 9.659E+00  1.882E+01 1.914E+04
   37  4.4194E+00  3.381E+02 1.431E+02 4.813E+02 8.285E+02 1.030E+01  1.913E+01 1.910E+04
   36  4.8194E+00  3.411E+02 1.568E+02 4.979E+02 8.260E+02 1.098E+01  1.944E+01 1.907E+04
   35  5.2556E+00  3.440E+02 1.719E+02 5.159E+02 8.237E+02 1.169E+01  1.976E+01 1.905E+04
   34  5.7313E+00  3.470E+02 1.886E+02 5.355E+02 8.215E+02 1.243E+01  2.008E+01 1.903E+04
   33  6.2500E+00  3.500E+02 2.069E+02 5.569E+02 8.194E+02 1.321E+01  2.040E+01 1.901E+04
   32  6.8157E+00  3.530E+02 2.271E+02 5.801E+02 8.174E+02 1.403E+01  2.073E+01 1.899E+04
   31  7.4325E+00  3.559E+02 2.494E+02 6.053E+02 8.154E+02 1.488E+01  2.106E+01 1.898E+04
   30  8.1052E+00  3.589E+02 2.739E+02 6.328E+02 8.135E+02 1.576E+01  2.139E+01 1.897E+04
   29  8.8388E+00  3.619E+02 3.009E+02 6.628E+02 8.118E+02 1.668E+01  2.172E+01 1.896E+04
   28  9.6388E+00  3.649E+02 3.307E+02 6.955E+02 8.104E+02 1.764E+01  2.206E+01 1.895E+04
   27  1.0511E+01  3.678E+02 3.634E+02 7.312E+02 8.095E+02 1.863E+01  2.240E+01 1.895E+04
   26  1.1463E+01  3.707E+02 3.994E+02 7.701E+02 8.091E+02 1.965E+01  2.274E+01 1.894E+04
   25  1.2500E+01  3.736E+02 4.390E+02 8.126E+02 8.090E+02 2.071E+01  2.308E+01 1.893E+04
   24  1.3631E+01  3.765E+02 4.825E+02 8.590E+02 8.090E+02 2.181E+01  2.342E+01 1.893E+04
   23  1.4865E+01  3.794E+02 5.304E+02 9.097E+02 8.090E+02 2.294E+01  2.376E+01 1.893E+04
   22  1.6210E+01  3.822E+02 5.830E+02 9.652E+02 8.088E+02 2.410E+01  2.411E+01 1.892E+04
   21  1.7678E+01  3.850E+02 6.408E+02 1.026E+03 8.083E+02 2.529E+01  2.445E+01 1.892E+04
   20  1.9278E+01  3.877E+02 7.044E+02 1.092E+03 8.076E+02 2.651E+01  2.480E+01 1.892E+04
   19  2.1022E+01  3.904E+02 7.742E+02 1.165E+03 8.067E+02 2.776E+01  2.515E+01 1.892E+04
   18  2.2925E+01  3.931E+02 8.509E+02 1.244E+03 8.058E+02 2.904E+01  2.550E+01 1.892E+04
   17  2.5000E+01  3.958E+02 9.352E+02 1.331E+03 8.048E+02 3.033E+01  2.585E+01 1.891E+04
   16  2.7263E+01  3.984E+02 1.028E+03 1.426E+03 8.041E+02 3.165E+01  2.620E+01 1.891E+04
   15  2.9730E+01  4.009E+02 1.129E+03 1.530E+03 8.037E+02 3.300E+01  2.655E+01 1.891E+04
   14  3.2421E+01  4.035E+02 1.240E+03 1.644E+03 8.037E+02 3.436E+01  2.690E+01 1.891E+04
   13  3.5355E+01  4.059E+02 1.362E+03 1.768E+03 8.040E+02 3.574E+01  2.725E+01 1.891E+04
   12  3.8555E+01  4.084E+02 1.496E+03 1.904E+03 8.045E+02 3.715E+01  2.760E+01 1.891E+04
   11  4.2045E+01  4.108E+02 1.642E+03 2.053E+03 8.050E+02 3.857E+01  2.795E+01 1.891E+04
   10  4.5850E+01  4.131E+02 1.803E+03 2.216E+03 8.054E+02 4.000E+01  2.831E+01 1.891E+04
    9  5.0000E+01  4.154E+02 1.979E+03 2.394E+03 8.058E+02 4.145E+01  2.866E+01 1.891E+04
    8  5.4525E+01  4.177E+02 2.171E+03 2.589E+03 8.061E+02 4.292E+01  2.901E+01 1.891E+04
    7  5.9460E+01  4.200E+02 2.382E+03 2.802E+03 8.064E+02 4.440E+01  2.937E+01 1.891E+04
    6  6.4842E+01  4.222E+02 2.613E+03 3.035E+03 8.065E+02 4.588E+01  2.972E+01 1.891E+04
    5  7.0711E+01  4.244E+02 2.866E+03 3.290E+03 8.066E+02 4.738E+01  3.007E+01 1.891E+04
    4  7.7111E+01  4.265E+02 3.142E+03 3.569E+03 8.069E+02 4.889E+01  3.043E+01 1.891E+04
    3  8.4090E+01  4.286E+02 3.445E+03 3.874E+03 8.075E+02 5.040E+01  3.078E+01 1.891E+04
    2  9.1700E+01  4.307E+02 3.776E+03 4.207E+03 8.083E+02 5.192E+01  3.114E+01 1.891E+04
    1  1.0000E+02  4.328E+02 4.138E+03 4.570E+03 8.089E+02 5.346E+01  3.149E+01 1.891E+04

 ***********************************************************************************************************************

 dump no.    1 on file bremms.ir     nps =           0     coll =              0     ctm =        0.00   nrn =          
       0

        10 warning messages so far.
1starting mcrun.      cp0 =  0.04                                                                       print table 110

      Generated using CardSharp:Bremmstrahlung Xray source, simple model.             


     nps    x          y          z          cell       surf     u          v          w        energy     weight      time
 
      1  0.000E+00 -5.000E+00  0.000E+00        1          0 -6.403E-05  1.000E+00 -6.214E-05  8.000E-02  1.000E+00  0.000E+00
      2  0.000E+00 -5.000E+00  0.000E+00        1          0  1.380E-04  1.000E+00 -1.048E-04  8.000E-02  1.000E+00  0.000E+00
      4  0.000E+00 -5.000E+00  0.000E+00        1          0  1.319E-04  1.000E+00  3.767E-05  8.000E-02  1.000E+00  0.000E+00
      3  0.000E+00 -5.000E+00  0.000E+00        1          0 -7.687E-05  1.000E+00  5.360E-05  8.000E-02  1.000E+00  0.000E+00
      6  0.000E+00 -5.000E+00  0.000E+00        1          0 -6.757E-05  1.000E+00 -1.112E-04  8.000E-02  1.000E+00  0.000E+00
      5  0.000E+00 -5.000E+00  0.000E+00        1          0  1.601E-04  1.000E+00 -3.009E-05  8.000E-02  1.000E+00  0.000E+00
      7  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.013E-05  1.000E+00 -1.216E-04  8.000E-02  1.000E+00  0.000E+00
      8  0.000E+00 -5.000E+00  0.000E+00        1          0  7.538E-05  1.000E+00  7.274E-05  8.000E-02  1.000E+00  0.000E+00
     10  0.000E+00 -5.000E+00  0.000E+00        1          0  1.124E-04  1.000E+00  8.030E-05  8.000E-02  1.000E+00  0.000E+00
      9  0.000E+00 -5.000E+00  0.000E+00        1          0 -7.877E-05  1.000E+00  1.016E-05  8.000E-02  1.000E+00  0.000E+00
     11  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.110E-04  1.000E+00 -9.427E-05  8.000E-02  1.000E+00  0.000E+00
     12  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.300E-05  1.000E+00 -1.354E-04  8.000E-02  1.000E+00  0.000E+00
     13  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.541E-04  1.000E+00 -5.320E-06  8.000E-02  1.000E+00  0.000E+00
     14  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.414E-04  1.000E+00  1.327E-05  8.000E-02  1.000E+00  0.000E+00
     15  0.000E+00 -5.000E+00  0.000E+00        1          0 -3.086E-05  1.000E+00 -7.021E-06  8.000E-02  1.000E+00  0.000E+00
     16  0.000E+00 -5.000E+00  0.000E+00        1          0 -4.408E-07  1.000E+00  3.604E-06  8.000E-02  1.000E+00  0.000E+00
     17  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.190E-04  1.000E+00  1.218E-04  8.000E-02  1.000E+00  0.000E+00
     18  0.000E+00 -5.000E+00  0.000E+00        1          0 -8.511E-05  1.000E+00 -5.948E-05  8.000E-02  1.000E+00  0.000E+00
     19  0.000E+00 -5.000E+00  0.000E+00        1          0 -9.982E-05  1.000E+00  7.950E-05  8.000E-02  1.000E+00  0.000E+00
     20  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.430E-05  1.000E+00  6.811E-05  8.000E-02  1.000E+00  0.000E+00
     21  0.000E+00 -5.000E+00  0.000E+00        1          0  4.575E-05  1.000E+00 -5.913E-05  8.000E-02  1.000E+00  0.000E+00
     22  0.000E+00 -5.000E+00  0.000E+00        1          0  3.987E-05  1.000E+00 -1.284E-04  8.000E-02  1.000E+00  0.000E+00
     23  0.000E+00 -5.000E+00  0.000E+00        1          0  5.248E-05  1.000E+00  7.031E-05  8.000E-02  1.000E+00  0.000E+00
     24  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.027E-04  1.000E+00 -2.815E-05  8.000E-02  1.000E+00  0.000E+00
     25  0.000E+00 -5.000E+00  0.000E+00        1          0  9.196E-05  1.000E+00  2.011E-06  8.000E-02  1.000E+00  0.000E+00
     26  0.000E+00 -5.000E+00  0.000E+00        1          0 -9.747E-06  1.000E+00 -1.459E-04  8.000E-02  1.000E+00  0.000E+00
     27  0.000E+00 -5.000E+00  0.000E+00        1          0  1.508E-05  1.000E+00  8.567E-05  8.000E-02  1.000E+00  0.000E+00
     28  0.000E+00 -5.000E+00  0.000E+00        1          0 -4.427E-05  1.000E+00  1.557E-04  8.000E-02  1.000E+00  0.000E+00
     29  0.000E+00 -5.000E+00  0.000E+00        1          0  9.486E-05  1.000E+00  1.128E-04  8.000E-02  1.000E+00  0.000E+00
     30  0.000E+00 -5.000E+00  0.000E+00        1          0  1.259E-04  1.000E+00 -1.193E-04  8.000E-02  1.000E+00  0.000E+00
     31  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.036E-04  1.000E+00 -3.038E-06  8.000E-02  1.000E+00  0.000E+00
     32  0.000E+00 -5.000E+00  0.000E+00        1          0 -8.747E-05  1.000E+00  1.064E-04  8.000E-02  1.000E+00  0.000E+00
     33  0.000E+00 -5.000E+00  0.000E+00        1          0 -3.508E-05  1.000E+00  1.308E-04  8.000E-02  1.000E+00  0.000E+00
     34  0.000E+00 -5.000E+00  0.000E+00        1          0  5.476E-05  1.000E+00 -1.911E-05  8.000E-02  1.000E+00  0.000E+00
     35  0.000E+00 -5.000E+00  0.000E+00        1          0  7.024E-06  1.000E+00 -7.654E-05  8.000E-02  1.000E+00  0.000E+00
     36  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.654E-04  1.000E+00  1.216E-05  8.000E-02  1.000E+00  0.000E+00
     37  0.000E+00 -5.000E+00  0.000E+00        1          0  2.049E-05  1.000E+00 -1.731E-04  8.000E-02  1.000E+00  0.000E+00
     38  0.000E+00 -5.000E+00  0.000E+00        1          0 -5.524E-05  1.000E+00  9.970E-05  8.000E-02  1.000E+00  0.000E+00
     39  0.000E+00 -5.000E+00  0.000E+00        1          0  1.159E-05  1.000E+00  1.437E-04  8.000E-02  1.000E+00  0.000E+00
     40  0.000E+00 -5.000E+00  0.000E+00        1          0 -2.416E-05  1.000E+00  1.533E-04  8.000E-02  1.000E+00  0.000E+00
     41  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.270E-04  1.000E+00  7.939E-05  8.000E-02  1.000E+00  0.000E+00
     42  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.617E-04  1.000E+00  2.773E-05  8.000E-02  1.000E+00  0.000E+00
     43  0.000E+00 -5.000E+00  0.000E+00        1          0  3.836E-05  1.000E+00  6.573E-05  8.000E-02  1.000E+00  0.000E+00
     44  0.000E+00 -5.000E+00  0.000E+00        1          0 -4.605E-05  1.000E+00 -6.557E-05  8.000E-02  1.000E+00  0.000E+00
     45  0.000E+00 -5.000E+00  0.000E+00        1          0  8.937E-05  1.000E+00  1.020E-04  8.000E-02  1.000E+00  0.000E+00
     46  0.000E+00 -5.000E+00  0.000E+00        1          0 -1.552E-04  1.000E+00  4.115E-05  8.000E-02  1.000E+00  0.000E+00
     47  0.000E+00 -5.000E+00  0.000E+00        1          0  5.238E-05  1.000E+00 -2.757E-05  8.000E-02  1.000E+00  0.000E+00
     48  0.000E+00 -5.000E+00  0.000E+00        1          0 -3.398E-05  1.000E+00 -3.486E-05  8.000E-02  1.000E+00  0.000E+00
     49  0.000E+00 -5.000E+00  0.000E+00        1          0  5.899E-05  1.000E+00  7.034E-05  8.000E-02  1.000E+00  0.000E+00
     50  0.000E+00 -5.000E+00  0.000E+00        1          0  1.209E-04  1.000E+00  1.032E-04  8.000E-02  1.000E+00  0.000E+00

 ***********************************************************************************************************************

 dump no.    2 on file bremms.ir     nps =       10000     coll =        5597280     ctm =        1.76   nrn =         
 52365821

 ***********************************************************************************************************************

 dump no.    3 on file bremms.ir     nps =       20000     coll =       11238306     ctm =        3.56   nrn =        
 105149783

 ***********************************************************************************************************************

 dump no.    4 on file bremms.ir     nps =       30000     coll =       16818944     ctm =        5.43   nrn =        
 157371407

 ***********************************************************************************************************************

 dump no.    5 on file bremms.ir     nps =       40000     coll =       22421687     ctm =        7.14   nrn =        
 209789205

 ***********************************************************************************************************************

 dump no.    6 on file bremms.ir     nps =       50000     coll =       28024504     ctm =        8.86   nrn =        
 262211229

 ***********************************************************************************************************************

 dump no.    7 on file bremms.ir     nps =       60000     coll =       33594593     ctm =       10.54   nrn =        
 314324727

 ***********************************************************************************************************************

 dump no.    8 on file bremms.ir     nps =       70000     coll =       39266896     ctm =       12.29   nrn =        
 367388226

 ***********************************************************************************************************************

 dump no.    9 on file bremms.ir     nps =       80000     coll =       44824306     ctm =       13.93   nrn =        
 419386528

 ***********************************************************************************************************************

 dump no.   10 on file bremms.ir     nps =       90000     coll =       50366240     ctm =       15.65   nrn =        
 471234133
1problem summary                                                                                                           

      run terminated when      100000  particle histories were done.
+                                                                                                    12/25/24 22:21:06 
      Generated using CardSharp:Bremmstrahlung Xray source, simple model.                  probid =  12/25/24 22:20:59 

 photon creation     tracks      weight        energy            photon loss         tracks      weight        energy
                                 (per source particle)                                           (per source particle)

 source                   0    0.            0.                  escape                1049    1.0490E-02    2.5737E-04
 nucl. interaction        0    0.            0.                  energy cutoff            0    0.            1.2053E-05
 particle decay           0    0.            0.                  time cutoff              0    0.            0.        
 weight window            0    0.            0.                  weight window            0    0.            0.        
 cell importance          0    0.            0.                  cell importance          0    0.            0.        
 weight cutoff            0    0.            0.                  weight cutoff            0    0.            0.        
 e or t importance        0    0.            0.                  e or t importance        0    0.            0.        
 dxtran                   0    0.            0.                  dxtran                   0    0.            0.        
 forced collisions        0    0.            0.                  forced collisions        0    0.            0.        
 exp. transform           0    0.            0.                  exp. transform           0    0.            0.        
 from neutrons            0    0.            0.                  compton scatter          0    0.            0.        
 bremsstrahlung        4055    4.0550E-02    4.6011E-04          capture               3113    3.1130E-02    2.0171E-04
 p-annihilation           0    0.            0.                  pair production          0    0.            0.        
 photonuclear             0    0.            0.                  photonuclear abs         0    0.            0.        
 electron x-rays          6    6.0000E-05    5.2871E-07          loss to photofis         0    0.            0.        
 compton fluores          0    0.            0.                                                                        
 muon capt fluores        0    0.            0.                                                                        
 1st fluorescence       101    1.0100E-03    1.0499E-05                                                                
 2nd fluorescence         0    0.            0.                                                                        
 (gamma,xgamma)           0    0.            0.                                                                        
 tabular sampling         0    0.            0.                                                                        
 prompt photofis          0    0.            0.                                                                        
     total             4162    4.1620E-02    4.7114E-04              total             4162    4.1620E-02    4.7114E-04

   number of photons banked                     4061        average time of (shakes)              cutoffs
   photon tracks per source particle      4.1620E-02          escape            2.6669E-01          tco   1.0000E+33
   photon collisions per source particle  3.1570E-02          capture           3.2123E-02          eco   1.0000E-03
   total photon collisions                      3157          capture or escape 9.1245E-02          wc1  -5.0000E-01
                                                              any termination   9.1245E-02          wc2  -2.5000E-01

 electron creation   tracks      weight        energy            electron loss       tracks      weight        energy
                                 (per source particle)                                           (per source particle)

 source              100000    1.0000E+00    8.0000E-02          escape               50609    5.0609E-01    2.9963E-02
 nucl. interaction        0    0.            0.                  energy cutoff       576677    5.7668E+00    5.3851E-03
 particle decay           0    0.            0.                  time cutoff              0    0.            0.        
 weight window            0    0.            0.                  weight window            0    0.            0.        
 cell importance          0    0.            0.                  cell importance          0    0.            0.        
 weight cutoff            0    0.            0.                  weight cutoff            0    0.            0.        
 e or t importance        0    0.            0.                  e or t importance        0    0.            0.        
 pair production          0    0.            0.                  scattering               0    0.            5.8994E-02
 compton recoil           0    0.            0.                  bremsstrahlung           0    0.            4.6011E-04
 photo-electric        3098    3.0980E-02    1.8731E-04          p-annihilation           0    0.            0.        
 photon auger             0    0.            0.                  atomic excitation        0    0.            0.        
 electron auger           0    0.            0.                                                                        
 knock-on            524188    5.2419E+00    1.4615E-02          electroionization        0    0.            0.        
 (gamma,xelectron)        0    0.            0.                                                                        
     total           627286    6.2729E+00    9.4802E-02              total           627286    6.2729E+00    9.4802E-02

   number of electrons banked                 527286                                              cutoffs
   electron tracks per source particle    6.2729E+00                                                tco   1.0000E+33
   electron sub-steps per source particle 5.5847E+02                                                eco   1.0000E-03
   total electron sub-steps                 55846879                                                wc1   0.0000E+00
                                                                                                    wc2   0.0000E+00

 computer time so far in this run    17.42 minutes            maximum number ever in bank        22
 computer time in mcrun              17.33 minutes            bank overflows to backup file       0
 source particles per minute            5.7711E+03
 random numbers generated                522558131            most random numbers used was       29832 in history       18754

 range of sampled source weights = 1.0000E+00 to 1.0000E+00

 number of histories processed by each thread
        7329        7270        7242        6908        6913        7116        7083        7329        7555        7143
        7173        6743        7141        7055
1source distribution frequency tables                                                                   print table 170

 the expected values below do not include the effect of the rejection loop which samples position.


 source distribution   2  for dir

                                         number                                       weight
             source
   n          value         sampled      expected  sampled/expected      sampled      expected  sampled/expected

   1      1.00000E+00      0.0000E+00   0.0000E+00   1.0000E+00         0.0000E+00   0.0000E+00   1.0000E+00
   2      1.00000E+00      1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
 total                     1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00


 source distribution   1  for erg

                                         number                                       weight
             source
   n          value         sampled      expected  sampled/expected      sampled      expected  sampled/expected

   1      8.00000E-02      1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
 total                     1.0000E+00   1.0000E+00   1.0000E+00         1.0000E+00   1.0000E+00   1.0000E+00
1the following cells are bounded by cells with photon   importances                                     print table 120
 that may be different by more than a factor of four.

                           maximum                             minimum
  cell     importance     neighbor     importance   ratio     neighbor     importance   ratio

        3     no data available yet for this cell.
        4     no data available yet for this cell.
        5     no data available yet for this cell.
        7     no data available yet for this cell.
1the following cells are bounded by cells with electron importances                                     print table 120
 that may be different by more than a factor of four.

                           maximum                             minimum
  cell     importance     neighbor     importance   ratio     neighbor     importance   ratio

        3     no data available yet for this cell.
        4     no data available yet for this cell.
        5     no data available yet for this cell.
        7     no data available yet for this cell.
1photon   activity in each cell                                                                         print table 126

                       tracks     population   collisions   collisions     number        flux        average      average
              cell    entering                               * weight     weighted     weighted   track weight   track mfp
                                                          (per history)    energy       energy     (relative)      (cm)

        1        1           2            2            0    0.0000E+00   1.1190E-02   1.1190E-02   1.0000E+00   0.0000E+00
        2        2           0            0            0    0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00
        3        3           0            0            0    0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00
        4        4           0            0            0    0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00
        5        5           0            0            0    0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00
        6        6           0            0            0    0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00   0.0000E+00
        7        7           1            1            0    0.0000E+00   6.0439E-02   6.0439E-02   1.0000E+00   0.0000E+00
        8        8           0         4061         3157    3.1570E-02   2.5183E-02   2.5183E-02   1.0000E+00   3.0977E-03
        9        9        1052         1049            0    0.0000E+00   2.4535E-02   2.4535E-02   1.0000E+00   0.0000E+00

           total          1055         5113         3157    3.1570E-02
1electron activity in each cell                                                                         print table 126

                       tracks     population    substeps     substeps      number        flux        average      average
              cell    entering                               * weight     weighted     weighted   track weight    substep 
                                                          (per history)    energy       energy     (relative)      (cm)

        1        1      100509       100014            0    0.0000E+00   7.9795E-02   7.9865E-02   1.0000E+00   0.0000E+00
        2        2           3            3            0    0.0000E+00   5.5917E-02   5.5927E-02   1.0000E+00   0.0000E+00
        3        3           2            2            0    0.0000E+00   4.2018E-02   4.3433E-02   1.0000E+00   0.0000E+00
        4        4           4            4            0    0.0000E+00   5.1421E-02   5.1557E-02   1.0000E+00   0.0000E+00
        5        5           3            3            0    0.0000E+00   4.0396E-02   4.1458E-02   1.0000E+00   0.0000E+00
        6        6           4            4            0    0.0000E+00   6.4453E-02   6.5086E-02   1.0000E+00   0.0000E+00
        7        7           2            2            0    0.0000E+00   6.3374E-02   6.3395E-02   1.0000E+00   0.0000E+00
        8        8      100000       627286     55846879    5.5847E+02   4.5517E-02   5.3931E-02   1.0000E+00   7.2773E-06
        9        9      151136       101021            0    0.0000E+00   5.7157E-02   6.1548E-02   1.0000E+00   0.0000E+00

           total        351663       828339     55846879    5.5847E+02
1photon   weight balance in each cell                                                                   print table 130

        cell index        1           2           3           4           5           6           7           8           9
       cell number        1           2           3           4           5           6           7           8           9

 external events:
          entering  2.0000E-05  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0000E-05  0.0000E+00  1.0520E-02
            source  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
     energy cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
       time cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
           exiting -2.0000E-05  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -1.0000E-05 -1.0490E-02 -1.0520E-02
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -1.0490E-02  0.0000E+00

 variance reduction events:
     weight window  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   cell importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
     weight cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 e or t importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            dxtran  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 forced collisions  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    exp. transform  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

 physical events:
     from neutrons  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    bremsstrahlung  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  4.0550E-02  0.0000E+00
           capture  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -3.1130E-02  0.0000E+00
    p-annihilation  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   pair production  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      photonuclear  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  photonuclear abs  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   electron x-rays  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  6.0000E-05  0.0000E+00
   compton fluores  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 muon capt fluores  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      fluorescence  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0100E-03  0.0000E+00
        decay gain  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 nucl. interaction  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  tabular sampling  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      photofission  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  loss to photofis  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  1.0490E-02  0.0000E+00

                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 

        cell index
       cell number    total

 external events:
          entering  1.0550E-02
            source  0.0000E+00
     energy cutoff  0.0000E+00
       time cutoff  0.0000E+00
           exiting -2.1040E-02
                    ----------
             total -1.0490E-02

 variance reduction events:
     weight window  0.0000E+00
   cell importance  0.0000E+00
     weight cutoff  0.0000E+00
 e or t importance  0.0000E+00
            dxtran  0.0000E+00
 forced collisions  0.0000E+00
    exp. transform  0.0000E+00
                    ----------
             total  0.0000E+00

 physical events:
     from neutrons  0.0000E+00
    bremsstrahlung  4.0550E-02
           capture -3.1130E-02
    p-annihilation  0.0000E+00
   pair production  0.0000E+00
      photonuclear  0.0000E+00
  photonuclear abs  0.0000E+00
   electron x-rays  6.0000E-05
   compton fluores  0.0000E+00
 muon capt fluores  0.0000E+00
      fluorescence  1.0100E-03
        decay gain  0.0000E+00
 nucl. interaction  0.0000E+00
  tabular sampling  0.0000E+00
      photofission  0.0000E+00
  loss to photofis  0.0000E+00
                    ----------
             total  1.0490E-02

                    ----------
             total  0.0000E+00
 
1electron weight balance in each cell                                                                   print table 130

        cell index        1           2           3           4           5           6           7           8           9
       cell number        1           2           3           4           5           6           7           8           9

 external events:
          entering  5.0900E-03  3.0000E-05  2.0000E-05  4.0000E-05  3.0000E-05  4.0000E-05  2.0000E-05  1.0000E+00  1.5114E+00
            source  1.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
     energy cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -5.7668E+00  0.0000E+00
       time cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
           exiting -1.0051E+00 -3.0000E-05 -2.0000E-05 -4.0000E-05 -3.0000E-05 -4.0000E-05 -2.0000E-05 -5.0609E-01 -1.5114E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00 -5.2729E+00  0.0000E+00

 variance reduction events:
     weight window  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   cell importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
     weight cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 e or t importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00

 physical events:
   pair production  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    compton recoil  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    photo-electric  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  3.0980E-02  0.0000E+00
      photon auger  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    electron auger  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
          knock-on  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  5.2419E+00  0.0000E+00
 nucl. interaction  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
        decay gain  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    p-annihilation  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  5.2729E+00  0.0000E+00

                    ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 

        cell index
       cell number    total

 external events:
          entering  2.5166E+00
            source  1.0000E+00
     energy cutoff -5.7668E+00
       time cutoff  0.0000E+00
           exiting -3.0227E+00
                    ----------
             total -5.2729E+00

 variance reduction events:
     weight window  0.0000E+00
   cell importance  0.0000E+00
     weight cutoff  0.0000E+00
 e or t importance  0.0000E+00
                    ----------
             total  0.0000E+00

 physical events:
   pair production  0.0000E+00
    compton recoil  0.0000E+00
    photo-electric  3.0980E-02
      photon auger  0.0000E+00
    electron auger  0.0000E+00
          knock-on  5.2419E+00
 nucl. interaction  0.0000E+00
        decay gain  0.0000E+00
    p-annihilation  0.0000E+00
                    ----------
             total  5.2729E+00

                    ----------
             total  0.0000E+00
 
1photoatomic activity of each nuclide in each cell, per source particle                                 print table 140

      cell     cell   nuclides     atom       total  collisions   wgt. lost   weight of       total   weight of       total   weight of
     index     name            fraction  collisions    * weight  to capture   pair prod  incoherent  incoherent    coherent    coherent

         8        8  74000.84p 1.20E-03           3  3.0000E-05  3.0000E-05  0.0000E+00           0  0.0000E+00           0  0.0000E+00
                     74000.84p 2.65E-01         848  8.4800E-03  8.3900E-03  0.0000E+00           0  0.0000E+00           9  9.0000E-05
                     74000.84p 1.43E-01         464  4.6400E-03  4.5600E-03  0.0000E+00           0  0.0000E+00           8  8.0000E-05
                     74000.84p 3.06E-01         970  9.7000E-03  9.6000E-03  0.0000E+00           0  0.0000E+00          10  1.0000E-04
                     74000.84p 2.84E-01         872  8.7200E-03  8.5500E-03  0.0000E+00           0  0.0000E+00          17  1.7000E-04

              total                            3157  3.1570E-02  3.1130E-02  0.0000E+00           0  0.0000E+00          44  4.4000E-04


        total over all cells by nuclide       total  collisions   wgt. lost   weight of       total   weight of       total   weight of
                                         collisions    * weight  to capture   pair prod  incoherent  incoherent    coherent    coherent

                     74000.84p                 3157  3.1570E-02  3.1130E-02  0.0000E+00           0  0.0000E+00          44  4.4000E-04

1tally       31        nps =      100000
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 
 surface  2.2                                                                                                                          
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   0.00000E+00 0.0000
    1.9814E-03   0.00000E+00 0.0000
    2.4720E-03   0.00000E+00 0.0000
    2.9627E-03   0.00000E+00 0.0000
    3.4534E-03   0.00000E+00 0.0000
    3.9441E-03   0.00000E+00 0.0000
    4.4348E-03   0.00000E+00 0.0000
    4.9255E-03   0.00000E+00 0.0000
    5.4161E-03   0.00000E+00 0.0000
    5.9068E-03   0.00000E+00 0.0000
    6.3975E-03   0.00000E+00 0.0000
    6.8882E-03   0.00000E+00 0.0000
    7.3789E-03   0.00000E+00 0.0000
    7.8696E-03   0.00000E+00 0.0000
    8.3602E-03   0.00000E+00 0.0000
    8.8509E-03   0.00000E+00 0.0000
    9.3416E-03   0.00000E+00 0.0000
    9.8323E-03   0.00000E+00 0.0000
    1.0323E-02   0.00000E+00 0.0000
    1.0814E-02   0.00000E+00 0.0000
    1.1304E-02   0.00000E+00 0.0000
    1.1795E-02   0.00000E+00 0.0000
    1.2286E-02   0.00000E+00 0.0000
    1.2776E-02   0.00000E+00 0.0000
    1.3267E-02   0.00000E+00 0.0000
    1.3758E-02   0.00000E+00 0.0000
    1.4248E-02   0.00000E+00 0.0000
    1.4739E-02   0.00000E+00 0.0000
    1.5230E-02   0.00000E+00 0.0000
    1.5720E-02   0.00000E+00 0.0000
    1.6211E-02   0.00000E+00 0.0000
    1.6702E-02   0.00000E+00 0.0000
    1.7193E-02   0.00000E+00 0.0000
    1.7683E-02   0.00000E+00 0.0000
    1.8174E-02   0.00000E+00 0.0000
    1.8665E-02   0.00000E+00 0.0000
    1.9155E-02   0.00000E+00 0.0000
    1.9646E-02   0.00000E+00 0.0000
    2.0137E-02   0.00000E+00 0.0000
    2.0627E-02   0.00000E+00 0.0000
    2.1118E-02   0.00000E+00 0.0000
    2.1609E-02   0.00000E+00 0.0000
    2.2099E-02   0.00000E+00 0.0000
    2.2590E-02   0.00000E+00 0.0000
    2.3081E-02   0.00000E+00 0.0000
    2.3571E-02   0.00000E+00 0.0000
    2.4062E-02   0.00000E+00 0.0000
    2.4553E-02   0.00000E+00 0.0000
    2.5043E-02   0.00000E+00 0.0000
    2.5534E-02   0.00000E+00 0.0000
    2.6025E-02   0.00000E+00 0.0000
    2.6516E-02   0.00000E+00 0.0000
    2.7006E-02   0.00000E+00 0.0000
    2.7497E-02   0.00000E+00 0.0000
    2.7988E-02   0.00000E+00 0.0000
    2.8478E-02   0.00000E+00 0.0000
    2.8969E-02   0.00000E+00 0.0000
    2.9460E-02   0.00000E+00 0.0000
    2.9950E-02   0.00000E+00 0.0000
    3.0441E-02   0.00000E+00 0.0000
    3.0932E-02   0.00000E+00 0.0000
    3.1422E-02   0.00000E+00 0.0000
    3.1913E-02   0.00000E+00 0.0000
    3.2404E-02   0.00000E+00 0.0000
    3.2894E-02   0.00000E+00 0.0000
    3.3385E-02   0.00000E+00 0.0000
    3.3876E-02   0.00000E+00 0.0000
    3.4366E-02   0.00000E+00 0.0000
    3.4857E-02   0.00000E+00 0.0000
    3.5348E-02   0.00000E+00 0.0000
    3.5839E-02   0.00000E+00 0.0000
    3.6329E-02   0.00000E+00 0.0000
    3.6820E-02   0.00000E+00 0.0000
    3.7311E-02   0.00000E+00 0.0000
    3.7801E-02   0.00000E+00 0.0000
    3.8292E-02   0.00000E+00 0.0000
    3.8783E-02   0.00000E+00 0.0000
    3.9273E-02   0.00000E+00 0.0000
    3.9764E-02   0.00000E+00 0.0000
    4.0255E-02   0.00000E+00 0.0000
    4.0745E-02   0.00000E+00 0.0000
    4.1236E-02   0.00000E+00 0.0000
    4.1727E-02   0.00000E+00 0.0000
    4.2217E-02   0.00000E+00 0.0000
    4.2708E-02   0.00000E+00 0.0000
    4.3199E-02   0.00000E+00 0.0000
    4.3689E-02   0.00000E+00 0.0000
    4.4180E-02   0.00000E+00 0.0000
    4.4671E-02   0.00000E+00 0.0000
    4.5161E-02   0.00000E+00 0.0000
    4.5652E-02   0.00000E+00 0.0000
    4.6143E-02   0.00000E+00 0.0000
    4.6634E-02   0.00000E+00 0.0000
    4.7124E-02   0.00000E+00 0.0000
    4.7615E-02   0.00000E+00 0.0000
    4.8106E-02   0.00000E+00 0.0000
    4.8596E-02   0.00000E+00 0.0000
    4.9087E-02   0.00000E+00 0.0000
    4.9578E-02   0.00000E+00 0.0000
    5.0068E-02   0.00000E+00 0.0000
    5.0559E-02   0.00000E+00 0.0000
    5.1050E-02   0.00000E+00 0.0000
    5.1540E-02   0.00000E+00 0.0000
    5.2031E-02   0.00000E+00 0.0000
    5.2522E-02   0.00000E+00 0.0000
    5.3012E-02   0.00000E+00 0.0000
    5.3503E-02   0.00000E+00 0.0000
    5.3994E-02   0.00000E+00 0.0000
    5.4484E-02   0.00000E+00 0.0000
    5.4975E-02   0.00000E+00 0.0000
    5.5466E-02   0.00000E+00 0.0000
    5.5957E-02   0.00000E+00 0.0000
    5.6447E-02   0.00000E+00 0.0000
    5.6938E-02   0.00000E+00 0.0000
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   0.00000E+00 0.0000
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   0.00000E+00 0.0000
    5.9391E-02   0.00000E+00 0.0000
    5.9882E-02   0.00000E+00 0.0000
    6.0373E-02   0.00000E+00 0.0000
    6.0863E-02   0.00000E+00 0.0000
    6.1354E-02   0.00000E+00 0.0000
    6.1845E-02   0.00000E+00 0.0000
    6.2335E-02   0.00000E+00 0.0000
    6.2826E-02   0.00000E+00 0.0000
    6.3317E-02   0.00000E+00 0.0000
    6.3807E-02   0.00000E+00 0.0000
    6.4298E-02   0.00000E+00 0.0000
    6.4789E-02   0.00000E+00 0.0000
    6.5280E-02   0.00000E+00 0.0000
    6.5770E-02   0.00000E+00 0.0000
    6.6261E-02   0.00000E+00 0.0000
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   0.00000E+00 0.0000
    6.7733E-02   0.00000E+00 0.0000
    6.8224E-02   0.00000E+00 0.0000
    6.8714E-02   0.00000E+00 0.0000
    6.9205E-02   0.00000E+00 0.0000
    6.9696E-02   0.00000E+00 0.0000
    7.0186E-02   0.00000E+00 0.0000
    7.0677E-02   0.00000E+00 0.0000
    7.1168E-02   0.00000E+00 0.0000
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   0.00000E+00 0.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   0.00000E+00 0.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   0.00000E+00 0.0000
    7.7547E-02   0.00000E+00 0.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      0.00000E+00 0.0000

 there are no nonzero tallies in the tally fluctuation chart bin for tally       31

1tally       41        nps =      100000
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 
 surface  5.2                                                                                                                          
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   0.00000E+00 0.0000
    1.9814E-03   0.00000E+00 0.0000
    2.4720E-03   0.00000E+00 0.0000
    2.9627E-03   0.00000E+00 0.0000
    3.4534E-03   0.00000E+00 0.0000
    3.9441E-03   0.00000E+00 0.0000
    4.4348E-03   0.00000E+00 0.0000
    4.9255E-03   0.00000E+00 0.0000
    5.4161E-03   0.00000E+00 0.0000
    5.9068E-03   0.00000E+00 0.0000
    6.3975E-03   0.00000E+00 0.0000
    6.8882E-03   0.00000E+00 0.0000
    7.3789E-03   0.00000E+00 0.0000
    7.8696E-03   0.00000E+00 0.0000
    8.3602E-03   0.00000E+00 0.0000
    8.8509E-03   0.00000E+00 0.0000
    9.3416E-03   0.00000E+00 0.0000
    9.8323E-03   0.00000E+00 0.0000
    1.0323E-02   0.00000E+00 0.0000
    1.0814E-02   0.00000E+00 0.0000
    1.1304E-02   0.00000E+00 0.0000
    1.1795E-02   0.00000E+00 0.0000
    1.2286E-02   0.00000E+00 0.0000
    1.2776E-02   0.00000E+00 0.0000
    1.3267E-02   0.00000E+00 0.0000
    1.3758E-02   0.00000E+00 0.0000
    1.4248E-02   0.00000E+00 0.0000
    1.4739E-02   0.00000E+00 0.0000
    1.5230E-02   0.00000E+00 0.0000
    1.5720E-02   0.00000E+00 0.0000
    1.6211E-02   0.00000E+00 0.0000
    1.6702E-02   0.00000E+00 0.0000
    1.7193E-02   0.00000E+00 0.0000
    1.7683E-02   0.00000E+00 0.0000
    1.8174E-02   0.00000E+00 0.0000
    1.8665E-02   0.00000E+00 0.0000
    1.9155E-02   0.00000E+00 0.0000
    1.9646E-02   0.00000E+00 0.0000
    2.0137E-02   0.00000E+00 0.0000
    2.0627E-02   0.00000E+00 0.0000
    2.1118E-02   0.00000E+00 0.0000
    2.1609E-02   0.00000E+00 0.0000
    2.2099E-02   0.00000E+00 0.0000
    2.2590E-02   0.00000E+00 0.0000
    2.3081E-02   0.00000E+00 0.0000
    2.3571E-02   0.00000E+00 0.0000
    2.4062E-02   0.00000E+00 0.0000
    2.4553E-02   0.00000E+00 0.0000
    2.5043E-02   0.00000E+00 0.0000
    2.5534E-02   0.00000E+00 0.0000
    2.6025E-02   0.00000E+00 0.0000
    2.6516E-02   0.00000E+00 0.0000
    2.7006E-02   0.00000E+00 0.0000
    2.7497E-02   0.00000E+00 0.0000
    2.7988E-02   0.00000E+00 0.0000
    2.8478E-02   0.00000E+00 0.0000
    2.8969E-02   0.00000E+00 0.0000
    2.9460E-02   0.00000E+00 0.0000
    2.9950E-02   0.00000E+00 0.0000
    3.0441E-02   0.00000E+00 0.0000
    3.0932E-02   0.00000E+00 0.0000
    3.1422E-02   0.00000E+00 0.0000
    3.1913E-02   0.00000E+00 0.0000
    3.2404E-02   0.00000E+00 0.0000
    3.2894E-02   0.00000E+00 0.0000
    3.3385E-02   0.00000E+00 0.0000
    3.3876E-02   0.00000E+00 0.0000
    3.4366E-02   0.00000E+00 0.0000
    3.4857E-02   0.00000E+00 0.0000
    3.5348E-02   0.00000E+00 0.0000
    3.5839E-02   0.00000E+00 0.0000
    3.6329E-02   0.00000E+00 0.0000
    3.6820E-02   0.00000E+00 0.0000
    3.7311E-02   0.00000E+00 0.0000
    3.7801E-02   0.00000E+00 0.0000
    3.8292E-02   0.00000E+00 0.0000
    3.8783E-02   0.00000E+00 0.0000
    3.9273E-02   0.00000E+00 0.0000
    3.9764E-02   0.00000E+00 0.0000
    4.0255E-02   0.00000E+00 0.0000
    4.0745E-02   0.00000E+00 0.0000
    4.1236E-02   0.00000E+00 0.0000
    4.1727E-02   0.00000E+00 0.0000
    4.2217E-02   0.00000E+00 0.0000
    4.2708E-02   0.00000E+00 0.0000
    4.3199E-02   0.00000E+00 0.0000
    4.3689E-02   0.00000E+00 0.0000
    4.4180E-02   0.00000E+00 0.0000
    4.4671E-02   0.00000E+00 0.0000
    4.5161E-02   0.00000E+00 0.0000
    4.5652E-02   0.00000E+00 0.0000
    4.6143E-02   0.00000E+00 0.0000
    4.6634E-02   0.00000E+00 0.0000
    4.7124E-02   0.00000E+00 0.0000
    4.7615E-02   0.00000E+00 0.0000
    4.8106E-02   0.00000E+00 0.0000
    4.8596E-02   0.00000E+00 0.0000
    4.9087E-02   0.00000E+00 0.0000
    4.9578E-02   0.00000E+00 0.0000
    5.0068E-02   0.00000E+00 0.0000
    5.0559E-02   0.00000E+00 0.0000
    5.1050E-02   0.00000E+00 0.0000
    5.1540E-02   0.00000E+00 0.0000
    5.2031E-02   0.00000E+00 0.0000
    5.2522E-02   0.00000E+00 0.0000
    5.3012E-02   0.00000E+00 0.0000
    5.3503E-02   0.00000E+00 0.0000
    5.3994E-02   0.00000E+00 0.0000
    5.4484E-02   0.00000E+00 0.0000
    5.4975E-02   0.00000E+00 0.0000
    5.5466E-02   0.00000E+00 0.0000
    5.5957E-02   0.00000E+00 0.0000
    5.6447E-02   0.00000E+00 0.0000
    5.6938E-02   0.00000E+00 0.0000
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   0.00000E+00 0.0000
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   0.00000E+00 0.0000
    5.9391E-02   0.00000E+00 0.0000
    5.9882E-02   0.00000E+00 0.0000
    6.0373E-02   0.00000E+00 0.0000
    6.0863E-02   1.00000E-05 1.0000
    6.1354E-02   0.00000E+00 0.0000
    6.1845E-02   0.00000E+00 0.0000
    6.2335E-02   0.00000E+00 0.0000
    6.2826E-02   0.00000E+00 0.0000
    6.3317E-02   0.00000E+00 0.0000
    6.3807E-02   0.00000E+00 0.0000
    6.4298E-02   0.00000E+00 0.0000
    6.4789E-02   0.00000E+00 0.0000
    6.5280E-02   0.00000E+00 0.0000
    6.5770E-02   0.00000E+00 0.0000
    6.6261E-02   0.00000E+00 0.0000
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   0.00000E+00 0.0000
    6.7733E-02   0.00000E+00 0.0000
    6.8224E-02   0.00000E+00 0.0000
    6.8714E-02   0.00000E+00 0.0000
    6.9205E-02   0.00000E+00 0.0000
    6.9696E-02   0.00000E+00 0.0000
    7.0186E-02   0.00000E+00 0.0000
    7.0677E-02   0.00000E+00 0.0000
    7.1168E-02   0.00000E+00 0.0000
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   0.00000E+00 0.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   0.00000E+00 0.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   0.00000E+00 0.0000
    7.7547E-02   0.00000E+00 0.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      1.00000E-05 1.0000


 ***** the nps-dependent tfc bin check results are suspect because there are only  1 nps tally values to analyze *****


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally       41

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        1.00      yes          yes            1.00      yes         yes            constant    random       0.00
 passed?        yes           no      yes          yes              no      yes         yes               yes        yes          no

 ===================================================================================================================================


 warning.  the tally in the tally fluctuation chart bin did not pass  3 of the 10 statistical checks.

1analysis of the results in the tally fluctuation chart bin (tfc) for tally       41 with nps =      100000  print table 160


 normed average tally per history  = 1.00000E-05          unnormed average tally per history  = 1.00000E-05
 estimated tally relative error    = 1.0000               estimated variance of the variance  = 1.0000
 relative error from zero tallies  = 1.0000               relative error from nonzero scores  = 0.0000

 number of nonzero history tallies =           1          efficiency for the nonzero tallies  = 0.0000
 history number of largest  tally  =       96272          largest  unnormalized history tally = 1.00000E+00
 (largest  tally)/(average tally)  = 1.00000E+05          (largest  tally)/(avg nonzero tally)= 1.00000E+00

 (confidence interval shift)/mean  = 0.5000               shifted confidence interval center  = 1.49999E-05


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            1.00000E-05             1.99998E-05                     0.999980
      relative error                  9.99995E-01             7.07100E-01                    -0.292897
      variance of the variance        9.99970E-01             4.99970E-01                    -0.500015
      shifted center                  1.49999E-05             1.49998E-05                    -0.000005
      figure of merit                 5.77111E-02             1.15423E-01                     1.000020

 there is not enough information in the largest  history scores (usually less than 500 scores) for a reliable estimate of the slope.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 3.162E-03)**2 = (5.771E+03)*(1.000E-05) = 5.771E-02
 print table 161 cannot be done for this tally because all tallies were between 1.00000E+00 and 1.25893E+00 which is one tally bin.

1tally      115        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 0.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.72237E-09 0.2675
    1.9814E-03   2.19129E-09 0.2420
    2.4720E-03   3.72626E-10 0.7071
    2.9627E-03   7.11717E-10 0.4244
    3.4534E-03   1.60078E-09 0.4451
    3.9441E-03   2.01873E-09 0.2981
    4.4348E-03   3.37369E-09 0.2963
    4.9255E-03   5.29807E-09 0.1560
    5.4161E-03   4.78306E-09 0.1505
    5.9068E-03   1.02975E-08 0.1971
    6.3975E-03   8.83954E-09 0.1503
    6.8882E-03   1.56575E-08 0.1195
    7.3789E-03   1.13528E-08 0.1507
    7.8696E-03   1.70979E-08 0.1342
    8.3602E-03   2.23437E-08 0.1298
    8.8509E-03   4.66601E-08 0.0852
    9.3416E-03   1.62294E-08 0.1508
    9.8323E-03   2.32406E-08 0.1492
    1.0323E-02   1.24686E-08 0.1760
    1.0814E-02   1.29205E-08 0.1680
    1.1304E-02   1.01608E-08 0.1647
    1.1795E-02   1.01760E-08 0.1771
    1.2286E-02   7.56769E-09 0.2023
    1.2776E-02   7.05939E-09 0.1864
    1.3267E-02   7.01998E-09 0.1903
    1.3758E-02   8.35211E-09 0.1982
    1.4248E-02   8.51884E-09 0.1856
    1.4739E-02   1.17088E-08 0.1900
    1.5230E-02   1.08444E-08 0.1855
    1.5720E-02   1.09448E-08 0.2002
    1.6211E-02   8.44340E-09 0.2229
    1.6702E-02   9.54081E-09 0.2344
    1.7193E-02   9.02275E-09 0.2124
    1.7683E-02   1.03033E-08 0.2314
    1.8174E-02   7.97232E-09 0.2278
    1.8665E-02   9.12454E-09 0.2243
    1.9155E-02   8.18338E-09 0.2307
    1.9646E-02   1.66021E-08 0.1978
    2.0137E-02   9.06860E-09 0.2225
    2.0627E-02   5.37004E-09 0.2806
    2.1118E-02   1.06803E-08 0.3747
    2.1609E-02   6.57944E-09 0.2902
    2.2099E-02   7.38174E-09 0.2874
    2.2590E-02   8.86016E-09 0.2652
    2.3081E-02   5.17919E-09 0.2953
    2.3571E-02   7.53950E-09 0.2690
    2.4062E-02   4.30375E-09 0.3123
    2.4553E-02   4.87647E-09 0.3559
    2.5043E-02   1.09470E-08 0.2476
    2.5534E-02   6.93862E-09 0.3201
    2.6025E-02   5.31306E-09 0.3485
    2.6516E-02   6.72415E-09 0.3282
    2.7006E-02   7.21729E-09 0.2771
    2.7497E-02   6.90103E-09 0.3454
    2.7988E-02   6.49138E-09 0.3083
    2.8478E-02   4.11102E-09 0.4146
    2.8969E-02   1.03778E-08 0.2632
    2.9460E-02   3.05296E-09 0.3933
    2.9950E-02   6.69746E-09 0.3429
    3.0441E-02   9.07807E-09 0.2834
    3.0932E-02   1.10830E-08 0.3863
    3.1422E-02   7.59331E-09 0.2999
    3.1913E-02   4.16523E-09 0.3856
    3.2404E-02   6.93188E-09 0.3134
    3.2894E-02   5.53467E-09 0.3724
    3.3385E-02   8.02777E-09 0.2934
    3.3876E-02   1.24885E-09 0.6386
    3.4366E-02   3.35344E-09 0.4785
    3.4857E-02   5.07798E-09 0.3719
    3.5348E-02   3.74978E-09 0.3440
    3.5839E-02   2.10802E-09 0.5819
    3.6329E-02   5.69042E-09 0.3673
    3.6820E-02   4.29919E-09 0.4401
    3.7311E-02   3.56348E-09 0.4595
    3.7801E-02   4.52496E-09 0.3495
    3.8292E-02   1.19713E-09 0.4523
    3.8783E-02   3.25680E-09 0.4973
    3.9273E-02   3.23087E-09 0.4684
    3.9764E-02   4.23108E-09 0.4260
    4.0255E-02   4.57554E-09 0.3581
    4.0745E-02   2.13289E-09 0.6563
    4.1236E-02   2.82351E-09 0.5528
    4.1727E-02   2.80230E-09 0.5348
    4.2217E-02   3.31577E-09 0.4380
    4.2708E-02   3.82347E-09 0.4295
    4.3199E-02   5.32837E-09 0.4229
    4.3689E-02   5.46851E-10 0.7074
    4.4180E-02   6.02721E-09 0.4172
    4.4671E-02   4.41953E-09 0.3942
    4.5161E-02   1.79357E-09 0.6105
    4.5652E-02   2.33580E-09 0.6595
    4.6143E-02   6.40965E-09 0.4031
    4.6634E-02   1.14124E-09 0.6164
    4.7124E-02   1.52707E-09 0.5404
    4.7615E-02   2.93838E-09 0.5070
    4.8106E-02   2.57934E-10 1.0000
    4.8596E-02   2.19848E-09 0.6172
    4.9087E-02   3.35862E-09 0.4764
    4.9578E-02   2.43681E-09 0.4635
    5.0068E-02   4.07000E-09 0.3875
    5.0559E-02   1.33409E-09 0.5351
    5.1050E-02   3.36695E-09 0.5600
    5.1540E-02   3.87645E-10 1.0000
    5.2031E-02   2.93988E-09 0.6564
    5.2522E-02   2.02951E-09 0.5456
    5.3012E-02   2.35667E-09 0.4661
    5.3503E-02   1.28128E-09 0.6248
    5.3994E-02   1.90175E-09 0.5244
    5.4484E-02   1.40693E-09 0.7345
    5.4975E-02   1.02674E-09 0.7623
    5.5466E-02   4.97092E-09 0.4219
    5.5957E-02   1.61253E-09 0.7622
    5.6447E-02   2.32501E-09 0.5899
    5.6938E-02   2.07696E-09 0.5500
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   2.01146E-09 0.6524
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   9.59550E-10 0.7096
    5.9391E-02   1.71243E-09 0.6212
    5.9882E-02   2.06464E-09 0.6233
    6.0373E-02   1.19385E-09 0.7087
    6.0863E-02   3.11386E-09 0.5162
    6.1354E-02   2.46192E-09 0.7077
    6.1845E-02   1.85888E-09 0.6261
    6.2335E-02   1.62079E-09 0.7481
    6.2826E-02   1.55043E-09 0.7801
    6.3317E-02   2.21836E-09 0.7075
    6.3807E-02   2.40699E-09 0.5505
    6.4298E-02   1.45306E-09 1.0000
    6.4789E-02   2.82618E-09 0.6026
    6.5280E-02   2.34815E-09 0.6384
    6.5770E-02   1.54722E-09 0.8388
    6.6261E-02   1.53632E-09 0.7208
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.88646E-09 0.6164
    6.7733E-02   1.80478E-09 0.7777
    6.8224E-02   7.86716E-10 1.0000
    6.8714E-02   3.07920E-09 0.5946
    6.9205E-02   7.49267E-10 1.0000
    6.9696E-02   1.39275E-09 1.0000
    7.0186E-02   1.51931E-09 0.7267
    7.0677E-02   4.52108E-10 0.7152
    7.1168E-02   7.12972E-10 0.5819
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.30875E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.31938E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.17773E-09 1.0000
    7.7547E-02   1.18081E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.78730E-07 0.0276
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 0.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.72237E-09 0.2675
    1.9814E-03   2.17500E-09 0.2437
    2.4720E-03   3.72626E-10 0.7071
    2.9627E-03   7.11717E-10 0.4244
    3.4534E-03   1.60078E-09 0.4451
    3.9441E-03   2.01655E-09 0.2984
    4.4348E-03   3.37369E-09 0.2963
    4.9255E-03   5.19199E-09 0.1571
    5.4161E-03   4.65846E-09 0.1528
    5.9068E-03   9.03668E-09 0.1674
    6.3975E-03   8.76352E-09 0.1508
    6.8882E-03   1.51344E-08 0.1185
    7.3789E-03   1.12503E-08 0.1513
    7.8696E-03   1.65985E-08 0.1341
    8.3602E-03   2.21455E-08 0.1304
    8.8509E-03   1.93914E-08 0.1430
    9.3416E-03   1.52636E-08 0.1479
    9.8323E-03   2.20019E-08 0.1495
    1.0323E-02   1.24686E-08 0.1760
    1.0814E-02   1.29205E-08 0.1680
    1.1304E-02   1.01608E-08 0.1647
    1.1795E-02   1.01760E-08 0.1771
    1.2286E-02   7.56769E-09 0.2023
    1.2776E-02   7.05939E-09 0.1864
    1.3267E-02   7.01998E-09 0.1903
    1.3758E-02   8.27849E-09 0.1967
    1.4248E-02   8.51884E-09 0.1856
    1.4739E-02   1.16170E-08 0.1909
    1.5230E-02   1.08444E-08 0.1855
    1.5720E-02   1.06509E-08 0.1980
    1.6211E-02   8.06209E-09 0.2193
    1.6702E-02   9.23164E-09 0.2337
    1.7193E-02   9.02275E-09 0.2124
    1.7683E-02   9.68655E-09 0.2358
    1.8174E-02   7.97232E-09 0.2278
    1.8665E-02   9.12454E-09 0.2243
    1.9155E-02   8.18338E-09 0.2307
    1.9646E-02   1.66021E-08 0.1978
    2.0137E-02   9.06860E-09 0.2225
    2.0627E-02   5.37004E-09 0.2806
    2.1118E-02   7.74904E-09 0.2545
    2.1609E-02   6.57944E-09 0.2902
    2.2099E-02   7.38174E-09 0.2874
    2.2590E-02   8.86016E-09 0.2652
    2.3081E-02   5.17919E-09 0.2953
    2.3571E-02   7.36033E-09 0.2712
    2.4062E-02   4.30375E-09 0.3123
    2.4553E-02   4.87647E-09 0.3559
    2.5043E-02   1.09470E-08 0.2476
    2.5534E-02   6.72799E-09 0.3242
    2.6025E-02   5.31306E-09 0.3485
    2.6516E-02   6.72415E-09 0.3282
    2.7006E-02   7.21729E-09 0.2771
    2.7497E-02   6.90103E-09 0.3454
    2.7988E-02   6.49138E-09 0.3083
    2.8478E-02   4.11102E-09 0.4146
    2.8969E-02   1.03778E-08 0.2632
    2.9460E-02   3.05296E-09 0.3933
    2.9950E-02   6.69746E-09 0.3429
    3.0441E-02   9.07807E-09 0.2834
    3.0932E-02   6.70975E-09 0.3076
    3.1422E-02   7.59331E-09 0.2999
    3.1913E-02   4.16523E-09 0.3856
    3.2404E-02   6.93188E-09 0.3134
    3.2894E-02   5.53467E-09 0.3724
    3.3385E-02   8.02777E-09 0.2934
    3.3876E-02   1.24885E-09 0.6386
    3.4366E-02   3.35344E-09 0.4785
    3.4857E-02   5.07798E-09 0.3719
    3.5348E-02   3.74978E-09 0.3440
    3.5839E-02   2.10802E-09 0.5819
    3.6329E-02   5.69042E-09 0.3673
    3.6820E-02   4.29919E-09 0.4401
    3.7311E-02   3.56348E-09 0.4595
    3.7801E-02   4.52496E-09 0.3495
    3.8292E-02   1.19713E-09 0.4523
    3.8783E-02   3.25680E-09 0.4973
    3.9273E-02   3.23087E-09 0.4684
    3.9764E-02   4.23108E-09 0.4260
    4.0255E-02   4.57554E-09 0.3581
    4.0745E-02   2.13289E-09 0.6563
    4.1236E-02   2.82351E-09 0.5528
    4.1727E-02   2.80230E-09 0.5348
    4.2217E-02   3.31577E-09 0.4380
    4.2708E-02   3.82347E-09 0.4295
    4.3199E-02   5.21509E-09 0.4214
    4.3689E-02   5.46851E-10 0.7074
    4.4180E-02   6.02721E-09 0.4172
    4.4671E-02   4.41953E-09 0.3942
    4.5161E-02   1.79357E-09 0.6105
    4.5652E-02   2.33580E-09 0.6595
    4.6143E-02   6.40965E-09 0.4031
    4.6634E-02   1.14124E-09 0.6164
    4.7124E-02   1.52707E-09 0.5404
    4.7615E-02   2.93838E-09 0.5070
    4.8106E-02   2.57934E-10 1.0000
    4.8596E-02   2.19848E-09 0.6172
    4.9087E-02   3.35862E-09 0.4764
    4.9578E-02   2.43681E-09 0.4635
    5.0068E-02   4.07000E-09 0.3875
    5.0559E-02   1.33409E-09 0.5351
    5.1050E-02   3.36695E-09 0.5600
    5.1540E-02   3.87645E-10 1.0000
    5.2031E-02   2.93988E-09 0.6564
    5.2522E-02   2.02951E-09 0.5456
    5.3012E-02   2.35667E-09 0.4661
    5.3503E-02   1.28128E-09 0.6248
    5.3994E-02   1.90175E-09 0.5244
    5.4484E-02   1.40693E-09 0.7345
    5.4975E-02   1.02674E-09 0.7623
    5.5466E-02   4.97092E-09 0.4219
    5.5957E-02   1.61253E-09 0.7622
    5.6447E-02   2.32501E-09 0.5899
    5.6938E-02   2.07696E-09 0.5500
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   2.01146E-09 0.6524
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   9.59550E-10 0.7096
    5.9391E-02   1.71243E-09 0.6212
    5.9882E-02   1.08425E-09 1.0000
    6.0373E-02   1.19385E-09 0.7087
    6.0863E-02   3.11386E-09 0.5162
    6.1354E-02   2.46192E-09 0.7077
    6.1845E-02   1.85888E-09 0.6261
    6.2335E-02   1.62079E-09 0.7481
    6.2826E-02   1.55043E-09 0.7801
    6.3317E-02   2.21836E-09 0.7075
    6.3807E-02   2.40699E-09 0.5505
    6.4298E-02   1.45306E-09 1.0000
    6.4789E-02   2.82618E-09 0.6026
    6.5280E-02   2.34815E-09 0.6384
    6.5770E-02   1.54722E-09 0.8388
    6.6261E-02   1.53632E-09 0.7208
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.88646E-09 0.6164
    6.7733E-02   1.31555E-09 1.0000
    6.8224E-02   7.86716E-10 1.0000
    6.8714E-02   3.07920E-09 0.5946
    6.9205E-02   7.49267E-10 1.0000
    6.9696E-02   1.39275E-09 1.0000
    7.0186E-02   1.51931E-09 0.7267
    7.0677E-02   4.52108E-10 0.7152
    7.1168E-02   7.12972E-10 0.5819
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.30875E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.31938E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.17773E-09 1.0000
    7.7547E-02   1.18081E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.35303E-07 0.0272
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                131         0.04312        1.02632E-10        0.00013
        1.00000E+00                329         0.15142        1.04726E-09        0.00148
        2.00000E+00                114         0.18894        1.31591E-09        0.00317
        5.00000E+00                155         0.23996        3.94934E-09        0.00824
        1.00000E+01                196         0.30448        1.13410E-08        0.02280
        1.00000E+02               1892         0.92725        5.70316E-07        0.75517
        1.00000E+03                176         0.98519        1.83604E-07        0.99094
        1.00000E+38                  0         0.98519        0.00000E+00        0.99094
 before dd roulette                 45         1.00000        7.05341E-09        1.00000

 average tally per history = 7.78730E-07            largest score = 2.93129E-04
 (largest score)/(average tally) = 3.76419E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1168        3038       7.78730E-07         2.56330E-05
       total        1168        3038       7.78730E-07         2.56330E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1168
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      115

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random       9.15
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 7.5767E-07 to 8.0070E-07; 7.3615E-07 to 8.2222E-07; 7.1463E-07 to 8.4374E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 7.5722E-07 to 8.0024E-07; 7.3572E-07 to 8.2174E-07; 7.1421E-07 to 8.4325E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      115 with nps =      100000  print table 160


 normed average tally per history  = 7.78730E-07          unnormed average tally per history  = 7.78730E-07
 estimated tally relative error    = 0.0276               estimated variance of the variance  = 0.0027
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0205

 number of nonzero history tallies =        2852          efficiency for the nonzero tallies  = 0.0285
 history number of largest  tally  =        7279          largest  unnormalized history tally = 3.53366E-04
 (largest  tally)/(average tally)  = 4.53772E+02          (largest  tally)/(avg nonzero tally)= 1.29416E+01

 (confidence interval shift)/mean  = 0.0006               shifted confidence interval center  = 7.79185E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.78730E-07             7.82256E-07                     0.004528
      relative error                  2.76173E-02             2.78595E-02                     0.008772
      variance of the variance        2.73423E-03             3.27727E-03                     0.198609
      shifted center                  7.79185E-07             7.79219E-07                     0.000044
      figure of merit                 7.56648E+01             7.43545E+01                    -0.017316

 the estimated inverse power slope of the 142 largest  tallies starting at 9.08316E-05 is 9.1481
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.145E-01)**2 = (5.771E+03)*(1.311E-02) = 7.566E+01

1unnormed tally density for tally      115          nonzero tally mean(m) = 2.730E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 9.1)
  tally  number num den log den:d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
 1.26-14      1 2.15+09   9.333 *********|********|*********|*********|********|*********|*********|********|*********|*********|***
 2.00-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-14      1 8.57+08   8.933 *********|********|*********|*********|********|*********|*********|********|*********|*********|   
 5.01-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-12      1 3.41+06   6.533 *********|********|*********|*********|********|*********|*********|*****   |         |         |   
 1.26-11      1 2.15+06   6.333 *********|********|*********|*********|********|*********|*********|***     |         |         |   
 2.00-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-11      1 5.41+05   5.733 *********|********|*********|*********|********|*********|*******  |        |         |         |   
 7.94-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-10      2 6.82+04   4.834 *********|********|*********|*********|********|*********|         |        |         |         |   
 1.26-09      1 2.15+04   4.333 *********|********|*********|*********|********|****     |         |        |         |         |   
 2.00-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-09      1 8.57+03   3.933 *********|********|*********|*********|********|         |         |        |         |         |   
 5.01-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-08      1 2.15+03   3.333 *********|********|*********|*********|***     |         |         |        |         |         |   
 2.00-08      2 2.72+03   3.434 *********|********|*********|*********|****    |         |         |        |         |         |   
 3.16-08      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-08      2 1.08+03   3.034 *********|********|*********|*********|        |         |         |        |         |         |   
 7.94-08    119 4.06+04   4.608 *********|********|*********|*********|********|******   |         |        |         |         |   
 1.26-07     62 1.33+04   4.125 *********|********|*********|*********|********|**       |         |        |         |         |   
 2.00-07     63 8.56+03   3.932 *********|********|*********|*********|********|         |         |        |         |         |   
 3.16-07     64 5.48+03   3.739 *********|********|*********|*********|******* |         |         |        |         |         |   
 5.01-07     68 3.68+03   3.565 *********|********|*********|*********|*****   |         |         |        |         |         |   
 7.94-07     66 2.25+03   3.352 *********|********|*********|*********|***     |         |         |        |         |         |   
 1.26-06     67 1.44+03   3.159 *********|********|*********|*********|*       |         |         |        |         |         |   
 2.00-06     90 1.22+03   3.087 *********|********|*********|*********|*       |         |         |        |         |         |   
 3.16-06     75 6.43+02   2.808 *********|********|*********|******** |        |         |         |        |         |         |   
 5.01-06    107 5.79+02   2.762 *********|********|*********|******** |        |         |         |        |         |         |   
 7.94-06    117 3.99+02   2.601 *********|********|*********|******   |        |         |         |        |         |         |   
 1.26-05    191 4.11+02   2.614 *********|********|*********|******   |        |         |         |        |         |         |   
 2.00-05    332 4.51+02   2.654 *********|********|*********|******   |        |         |         |        |         |         |   
 3.16-05    489 4.19+02   2.622 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmmmm   |        |         |         |        |         |         |   
 5.01-05    437 2.36+02   2.373 *********|********|*********|****     |        |         |         |        |         |         |   
 7.94-05    296 1.01+02   2.004 *********|********|*********|         |        |         |         |        |         |         |   
 1.26-04    165 3.55+01   1.550 *********|********|******   |     s   |        |         |         |        |         |         |   
 2.00-04     27 3.67+00   0.564 *********|*****   |        s|         |        |         |         |        |         |         |   
 3.16-04      2 1.71-01  -0.766 **       |        s         |         |        |         |         |        |         |         |   
 3.98-04      1 1.22-01  -0.913 *        s        |         |         |        |         |         |        |         |         |   
  total    2852 2.85-02         d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
1cumulative tally number for tally      115         nonzero tally mean(m) = 2.730E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.25893E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.99526E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 3.16228E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.25893E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.99526E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.16228E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.25893E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.99526E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.16228E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-12        3    0.105|         |         |         |         |         |         |         |         |         |         |
 1.25893E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 1.99526E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 3.16228E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 5.01187E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 7.94328E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.25893E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.99526E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 3.16228E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 5.01187E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 7.94328E-10        7    0.245|         |         |         |         |         |         |         |         |         |         |
 1.25893E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 1.99526E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 3.16228E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 5.01187E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 7.94328E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.25893E-08       10    0.351|         |         |         |         |         |         |         |         |         |         |
 1.99526E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 3.16228E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 5.01187E-08       14    0.491|         |         |         |         |         |         |         |         |         |         |
 7.94328E-08      133    4.663|*****    |         |         |         |         |         |         |         |         |         |
 1.25893E-07      195    6.837|*******  |         |         |         |         |         |         |         |         |         |
 1.99526E-07      258    9.046|*********|         |         |         |         |         |         |         |         |         |
 3.16228E-07      322   11.290|*********|*        |         |         |         |         |         |         |         |         |
 5.01187E-07      390   13.675|*********|****     |         |         |         |         |         |         |         |         |
 7.94328E-07      456   15.989|*********|******   |         |         |         |         |         |         |         |         |
 1.25893E-06      523   18.338|*********|******** |         |         |         |         |         |         |         |         |
 1.99526E-06      613   21.494|*********|*********|*        |         |         |         |         |         |         |         |
 3.16228E-06      688   24.123|*********|*********|****     |         |         |         |         |         |         |         |
 5.01187E-06      795   27.875|*********|*********|******** |         |         |         |         |         |         |         |
 7.94328E-06      912   31.978|*********|*********|*********|**       |         |         |         |         |         |         |
 1.25893E-05     1103   38.675|*********|*********|*********|*********|         |         |         |         |         |         |
 1.99526E-05     1435   50.316|*********|*********|*********|*********|*********|         |         |         |         |         |
 3.16228E-05     1924   67.461|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmm  |         |         |         |
 5.01187E-05     2361   82.784|*********|*********|*********|*********|*********|*********|*********|*********|***      |         |
 7.94328E-05     2657   93.163|*********|*********|*********|*********|*********|*********|*********|*********|*********|***      |
 1.25893E-04     2822   98.948|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-04     2849   99.895|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04     2851   99.965|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-04     2852  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2852  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      115         nonzero tally mean(m) = 2.730E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.259E-14  8.534E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-14  8.534E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-12  6.603E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-11  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-11  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-10  1.240E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-09  2.216E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-09  2.216E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-08  1.473E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-08  4.861E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-08  4.861E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-08  1.211E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-08  9.364E-11    0.012|         |         |         |         |         |         |         |         |         |         |
 1.259E-07  1.537E-10    0.020|         |         |         |         |         |         |         |         |         |         |
 1.995E-07  2.565E-10    0.033|         |         |         |         |         |         |         |         |         |         |
 3.162E-07  4.176E-10    0.054|         |         |         |         |         |         |         |         |         |         |
 5.012E-07  6.861E-10    0.088|         |         |         |         |         |         |         |         |         |         |
 7.943E-07  1.117E-09    0.143|         |         |         |         |         |         |         |         |         |         |
 1.259E-06  1.791E-09    0.230|         |         |         |         |         |         |         |         |         |         |
 1.995E-06  3.237E-09    0.416|         |         |         |         |         |         |         |         |         |         |
 3.162E-06  5.181E-09    0.665|*        |         |         |         |         |         |         |         |         |         |
 5.012E-06  9.633E-09    1.237|*        |         |         |         |         |         |         |         |         |         |
 7.943E-06  1.734E-08    2.227|**       |         |         |         |         |         |         |         |         |         |
 1.259E-05  3.684E-08    4.730|*****    |         |         |         |         |         |         |         |         |         |
 1.995E-05  9.103E-08   11.690|*********|**       |         |         |         |         |         |         |         |         |
 3.162E-05  2.149E-07   27.591|mmmmmmmmm|mmmmmmmmm|mmmmmmmm |         |         |         |         |         |         |         |
 5.012E-05  3.870E-07   49.693|*********|*********|*********|*********|*********|         |         |         |         |         |
 7.943E-05  5.704E-07   73.254|*********|*********|*********|*********|*********|*********|*********|***      |         |         |
 1.259E-04  7.332E-07   94.156|*********|*********|*********|*********|*********|*********|*********|*********|*********|****     |
 1.995E-04  7.698E-07   98.859|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-04  7.752E-07   99.546|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-04  7.787E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.78730E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally      125        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 5.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.67910E-09 0.2673
    1.9814E-03   2.14607E-09 0.2433
    2.4720E-03   3.59616E-10 0.7018
    2.9627E-03   6.86691E-10 0.4261
    3.4534E-03   1.53260E-09 0.4431
    3.9441E-03   1.98733E-09 0.3059
    4.4348E-03   3.32514E-09 0.2984
    4.9255E-03   5.14265E-09 0.1583
    5.4161E-03   4.61266E-09 0.1507
    5.9068E-03   9.87884E-09 0.1972
    6.3975E-03   8.74246E-09 0.1532
    6.8882E-03   1.50982E-08 0.1191
    7.3789E-03   1.10912E-08 0.1500
    7.8696E-03   1.66486E-08 0.1345
    8.3602E-03   2.19359E-08 0.1307
    8.8509E-03   4.59824E-08 0.0851
    9.3416E-03   1.61322E-08 0.1523
    9.8323E-03   2.30003E-08 0.1496
    1.0323E-02   1.23310E-08 0.1759
    1.0814E-02   1.26109E-08 0.1669
    1.1304E-02   9.96133E-09 0.1652
    1.1795E-02   9.78307E-09 0.1769
    1.2286E-02   7.27609E-09 0.2004
    1.2776E-02   6.85372E-09 0.1867
    1.3267E-02   6.80284E-09 0.1907
    1.3758E-02   8.23945E-09 0.1996
    1.4248E-02   8.38858E-09 0.1847
    1.4739E-02   1.14534E-08 0.1899
    1.5230E-02   1.05021E-08 0.1849
    1.5720E-02   1.06667E-08 0.2024
    1.6211E-02   8.32476E-09 0.2248
    1.6702E-02   9.19040E-09 0.2334
    1.7193E-02   8.86351E-09 0.2128
    1.7683E-02   1.00583E-08 0.2318
    1.8174E-02   7.87771E-09 0.2280
    1.8665E-02   9.06873E-09 0.2245
    1.9155E-02   8.10456E-09 0.2317
    1.9646E-02   1.63341E-08 0.1978
    2.0137E-02   9.03710E-09 0.2249
    2.0627E-02   5.25478E-09 0.2796
    2.1118E-02   1.00864E-08 0.3540
    2.1609E-02   6.34474E-09 0.2879
    2.2099E-02   7.14720E-09 0.2863
    2.2590E-02   8.85842E-09 0.2646
    2.3081E-02   5.11646E-09 0.2960
    2.3571E-02   7.32826E-09 0.2660
    2.4062E-02   4.16689E-09 0.3126
    2.4553E-02   4.73471E-09 0.3600
    2.5043E-02   1.05550E-08 0.2464
    2.5534E-02   6.68794E-09 0.3159
    2.6025E-02   5.12695E-09 0.3462
    2.6516E-02   6.78657E-09 0.3264
    2.7006E-02   6.81289E-09 0.2756
    2.7497E-02   6.72539E-09 0.3435
    2.7988E-02   6.20678E-09 0.3125
    2.8478E-02   4.08261E-09 0.4107
    2.8969E-02   1.04507E-08 0.2641
    2.9460E-02   3.05654E-09 0.3963
    2.9950E-02   6.55462E-09 0.3462
    3.0441E-02   8.85657E-09 0.2813
    3.0932E-02   9.49514E-09 0.3565
    3.1422E-02   7.42225E-09 0.2975
    3.1913E-02   4.14341E-09 0.3787
    3.2404E-02   6.93508E-09 0.3128
    3.2894E-02   5.14317E-09 0.3794
    3.3385E-02   7.77032E-09 0.2926
    3.3876E-02   1.31877E-09 0.6390
    3.4366E-02   3.30592E-09 0.4822
    3.4857E-02   4.96816E-09 0.3749
    3.5348E-02   3.89928E-09 0.3508
    3.5839E-02   2.07028E-09 0.5823
    3.6329E-02   5.66254E-09 0.3688
    3.6820E-02   4.24558E-09 0.4383
    3.7311E-02   3.52241E-09 0.4526
    3.7801E-02   4.43619E-09 0.3560
    3.8292E-02   1.14933E-09 0.4514
    3.8783E-02   3.27154E-09 0.4950
    3.9273E-02   3.07476E-09 0.4663
    3.9764E-02   3.89648E-09 0.4239
    4.0255E-02   4.40454E-09 0.3632
    4.0745E-02   1.98498E-09 0.6513
    4.1236E-02   2.80767E-09 0.5518
    4.1727E-02   2.78361E-09 0.5350
    4.2217E-02   3.45904E-09 0.4385
    4.2708E-02   4.05276E-09 0.4310
    4.3199E-02   5.44818E-09 0.4225
    4.3689E-02   5.18150E-10 0.7083
    4.4180E-02   5.91391E-09 0.4202
    4.4671E-02   4.30608E-09 0.3917
    4.5161E-02   1.90012E-09 0.6230
    4.5652E-02   2.06480E-09 0.6536
    4.6143E-02   6.26696E-09 0.3999
    4.6634E-02   1.20502E-09 0.6181
    4.7124E-02   1.55377E-09 0.5367
    4.7615E-02   3.08418E-09 0.5134
    4.8106E-02   2.35908E-10 1.0000
    4.8596E-02   2.26242E-09 0.6169
    4.9087E-02   3.16784E-09 0.4728
    4.9578E-02   2.40879E-09 0.4652
    5.0068E-02   4.10066E-09 0.3942
    5.0559E-02   1.29894E-09 0.5330
    5.1050E-02   3.37742E-09 0.5539
    5.1540E-02   3.39989E-10 1.0000
    5.2031E-02   2.78805E-09 0.6566
    5.2522E-02   1.99727E-09 0.5381
    5.3012E-02   2.51192E-09 0.4782
    5.3503E-02   1.41329E-09 0.6308
    5.3994E-02   1.84320E-09 0.5395
    5.4484E-02   1.41261E-09 0.7211
    5.4975E-02   1.02693E-09 0.7795
    5.5466E-02   4.64303E-09 0.4249
    5.5957E-02   1.60725E-09 0.7452
    5.6447E-02   2.15315E-09 0.5892
    5.6938E-02   2.17634E-09 0.5432
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.82825E-09 0.6519
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.02423E-09 0.7135
    5.9391E-02   1.72534E-09 0.6278
    5.9882E-02   1.98969E-09 0.6187
    6.0373E-02   1.18705E-09 0.7109
    6.0863E-02   3.06072E-09 0.5208
    6.1354E-02   2.44949E-09 0.7075
    6.1845E-02   1.73776E-09 0.6321
    6.2335E-02   1.62033E-09 0.7525
    6.2826E-02   1.41075E-09 0.7739
    6.3317E-02   2.13979E-09 0.7114
    6.3807E-02   2.33671E-09 0.5350
    6.4298E-02   1.40696E-09 1.0000
    6.4789E-02   2.62326E-09 0.6054
    6.5280E-02   2.33342E-09 0.6432
    6.5770E-02   1.50563E-09 0.8239
    6.6261E-02   1.60952E-09 0.7137
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.81372E-09 0.6205
    6.7733E-02   1.75785E-09 0.7760
    6.8224E-02   7.16662E-10 1.0000
    6.8714E-02   2.97422E-09 0.6017
    6.9205E-02   7.68544E-10 1.0000
    6.9696E-02   1.36765E-09 1.0000
    7.0186E-02   1.67119E-09 0.7235
    7.0677E-02   4.65038E-10 0.7231
    7.1168E-02   6.99724E-10 0.5793
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.23069E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.44062E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24779E-09 1.0000
    7.7547E-02   1.10542E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.61951E-07 0.0274
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 5.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.67910E-09 0.2673
    1.9814E-03   2.13123E-09 0.2449
    2.4720E-03   3.59616E-10 0.7018
    2.9627E-03   6.86691E-10 0.4261
    3.4534E-03   1.53260E-09 0.4431
    3.9441E-03   1.98512E-09 0.3062
    4.4348E-03   3.32514E-09 0.2984
    4.9255E-03   5.03043E-09 0.1594
    5.4161E-03   4.48738E-09 0.1531
    5.9068E-03   8.67689E-09 0.1688
    6.3975E-03   8.67016E-09 0.1537
    6.8882E-03   1.46433E-08 0.1185
    7.3789E-03   1.09957E-08 0.1505
    7.8696E-03   1.61581E-08 0.1345
    8.3602E-03   2.17087E-08 0.1313
    8.8509E-03   1.92162E-08 0.1426
    9.3416E-03   1.50563E-08 0.1472
    9.8323E-03   2.19399E-08 0.1506
    1.0323E-02   1.23310E-08 0.1759
    1.0814E-02   1.26109E-08 0.1669
    1.1304E-02   9.96133E-09 0.1652
    1.1795E-02   9.78307E-09 0.1769
    1.2286E-02   7.27609E-09 0.2004
    1.2776E-02   6.85372E-09 0.1867
    1.3267E-02   6.80284E-09 0.1907
    1.3758E-02   8.16972E-09 0.1981
    1.4248E-02   8.38858E-09 0.1847
    1.4739E-02   1.13612E-08 0.1909
    1.5230E-02   1.05021E-08 0.1849
    1.5720E-02   1.03108E-08 0.1996
    1.6211E-02   7.96908E-09 0.2205
    1.6702E-02   8.92468E-09 0.2331
    1.7193E-02   8.86351E-09 0.2128
    1.7683E-02   9.47262E-09 0.2360
    1.8174E-02   7.87771E-09 0.2280
    1.8665E-02   9.06873E-09 0.2245
    1.9155E-02   8.10456E-09 0.2317
    1.9646E-02   1.63341E-08 0.1978
    2.0137E-02   9.03710E-09 0.2249
    2.0627E-02   5.25478E-09 0.2796
    2.1118E-02   7.62547E-09 0.2591
    2.1609E-02   6.34474E-09 0.2879
    2.2099E-02   7.14720E-09 0.2863
    2.2590E-02   8.85842E-09 0.2646
    2.3081E-02   5.11646E-09 0.2960
    2.3571E-02   7.12399E-09 0.2679
    2.4062E-02   4.16689E-09 0.3126
    2.4553E-02   4.73471E-09 0.3600
    2.5043E-02   1.05550E-08 0.2464
    2.5534E-02   6.42560E-09 0.3195
    2.6025E-02   5.12695E-09 0.3462
    2.6516E-02   6.78657E-09 0.3264
    2.7006E-02   6.81289E-09 0.2756
    2.7497E-02   6.72539E-09 0.3435
    2.7988E-02   6.20678E-09 0.3125
    2.8478E-02   4.08261E-09 0.4107
    2.8969E-02   1.04507E-08 0.2641
    2.9460E-02   3.05654E-09 0.3963
    2.9950E-02   6.55462E-09 0.3462
    3.0441E-02   8.85657E-09 0.2813
    3.0932E-02   6.60272E-09 0.3089
    3.1422E-02   7.42225E-09 0.2975
    3.1913E-02   4.14341E-09 0.3787
    3.2404E-02   6.93508E-09 0.3128
    3.2894E-02   5.14317E-09 0.3794
    3.3385E-02   7.77032E-09 0.2926
    3.3876E-02   1.31877E-09 0.6390
    3.4366E-02   3.30592E-09 0.4822
    3.4857E-02   4.96816E-09 0.3749
    3.5348E-02   3.89928E-09 0.3508
    3.5839E-02   2.07028E-09 0.5823
    3.6329E-02   5.66254E-09 0.3688
    3.6820E-02   4.24558E-09 0.4383
    3.7311E-02   3.52241E-09 0.4526
    3.7801E-02   4.43619E-09 0.3560
    3.8292E-02   1.14933E-09 0.4514
    3.8783E-02   3.27154E-09 0.4950
    3.9273E-02   3.07476E-09 0.4663
    3.9764E-02   3.89648E-09 0.4239
    4.0255E-02   4.40454E-09 0.3632
    4.0745E-02   1.98498E-09 0.6513
    4.1236E-02   2.80767E-09 0.5518
    4.1727E-02   2.78361E-09 0.5350
    4.2217E-02   3.45904E-09 0.4385
    4.2708E-02   4.05276E-09 0.4310
    4.3199E-02   5.33219E-09 0.4209
    4.3689E-02   5.18150E-10 0.7083
    4.4180E-02   5.91391E-09 0.4202
    4.4671E-02   4.30608E-09 0.3917
    4.5161E-02   1.90012E-09 0.6230
    4.5652E-02   2.06480E-09 0.6536
    4.6143E-02   6.26696E-09 0.3999
    4.6634E-02   1.20502E-09 0.6181
    4.7124E-02   1.55377E-09 0.5367
    4.7615E-02   3.08418E-09 0.5134
    4.8106E-02   2.35908E-10 1.0000
    4.8596E-02   2.26242E-09 0.6169
    4.9087E-02   3.16784E-09 0.4728
    4.9578E-02   2.40879E-09 0.4652
    5.0068E-02   4.10066E-09 0.3942
    5.0559E-02   1.29894E-09 0.5330
    5.1050E-02   3.37742E-09 0.5539
    5.1540E-02   3.39989E-10 1.0000
    5.2031E-02   2.78805E-09 0.6566
    5.2522E-02   1.99727E-09 0.5381
    5.3012E-02   2.51192E-09 0.4782
    5.3503E-02   1.41329E-09 0.6308
    5.3994E-02   1.84320E-09 0.5395
    5.4484E-02   1.41261E-09 0.7211
    5.4975E-02   1.02693E-09 0.7795
    5.5466E-02   4.64303E-09 0.4249
    5.5957E-02   1.60725E-09 0.7452
    5.6447E-02   2.15315E-09 0.5892
    5.6938E-02   2.17634E-09 0.5432
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.82825E-09 0.6519
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.02423E-09 0.7135
    5.9391E-02   1.72534E-09 0.6278
    5.9882E-02   1.02449E-09 1.0000
    6.0373E-02   1.18705E-09 0.7109
    6.0863E-02   3.06072E-09 0.5208
    6.1354E-02   2.44949E-09 0.7075
    6.1845E-02   1.73776E-09 0.6321
    6.2335E-02   1.62033E-09 0.7525
    6.2826E-02   1.41075E-09 0.7739
    6.3317E-02   2.13979E-09 0.7114
    6.3807E-02   2.33671E-09 0.5350
    6.4298E-02   1.40696E-09 1.0000
    6.4789E-02   2.62326E-09 0.6054
    6.5280E-02   2.33342E-09 0.6432
    6.5770E-02   1.50563E-09 0.8239
    6.6261E-02   1.60952E-09 0.7137
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.81372E-09 0.6205
    6.7733E-02   1.27621E-09 1.0000
    6.8224E-02   7.16662E-10 1.0000
    6.8714E-02   2.97422E-09 0.6017
    6.9205E-02   7.68544E-10 1.0000
    6.9696E-02   1.36765E-09 1.0000
    7.0186E-02   1.67119E-09 0.7235
    7.0677E-02   4.65038E-10 0.7231
    7.1168E-02   6.99724E-10 0.5793
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.23069E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.44062E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24779E-09 1.0000
    7.7547E-02   1.10542E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.21145E-07 0.0272
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                139         0.04575        1.06513E-10        0.00014
        1.00000E+00                325         0.15273        1.01532E-09        0.00147
        2.00000E+00                112         0.18960        1.26782E-09        0.00314
        5.00000E+00                163         0.24325        4.13983E-09        0.00857
        1.00000E+01                191         0.30612        1.09287E-08        0.02291
        1.00000E+02               1881         0.92528        5.54540E-07        0.75070
        1.00000E+03                182         0.98519        1.83071E-07        0.99097
        1.00000E+38                  0         0.98519        0.00000E+00        0.99097
 before dd roulette                 45         1.00000        6.88147E-09        1.00000

 average tally per history = 7.61951E-07            largest score = 2.46089E-04
 (largest score)/(average tally) = 3.22972E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1168        3038       7.61951E-07         2.50807E-05
       total        1168        3038       7.61951E-07         2.50807E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1168
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      125

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random      10.00
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 7.4146E-07 to 7.8327E-07; 7.2055E-07 to 8.0418E-07; 6.9964E-07 to 8.2509E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 7.4105E-07 to 7.8285E-07; 7.2016E-07 to 8.0374E-07; 6.9926E-07 to 8.2464E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      125 with nps =      100000  print table 160


 normed average tally per history  = 7.61951E-07          unnormed average tally per history  = 7.61951E-07
 estimated tally relative error    = 0.0274               estimated variance of the variance  = 0.0022
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0203

 number of nonzero history tallies =        2850          efficiency for the nonzero tallies  = 0.0285
 history number of largest  tally  =        7279          largest  unnormalized history tally = 3.02783E-04
 (largest  tally)/(average tally)  = 3.97378E+02          (largest  tally)/(avg nonzero tally)= 1.13253E+01

 (confidence interval shift)/mean  = 0.0005               shifted confidence interval center  = 7.62367E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.61951E-07             7.64972E-07                     0.003964
      relative error                  2.74253E-02             2.76006E-02                     0.006391
      variance of the variance        2.15362E-03             2.48442E-03                     0.153602
      shifted center                  7.62367E-07             7.62389E-07                     0.000029
      figure of merit                 7.67276E+01             7.57562E+01                    -0.012661

 the estimated slope of the 142 largest  tallies starting at  8.97206E-05 appears to be decreasing at least exponentially.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.153E-01)**2 = (5.771E+03)*(1.330E-02) = 7.673E+01

1unnormed tally density for tally      125          nonzero tally mean(m) = 2.674E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope=10.0)
  tally  number num den log den:d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
 1.00-14      1 2.71+09   9.433 *********|********|*********|*********|********|*********|*********|********|*********|*********|***
 1.58-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-14      1 1.08+09   9.033 *********|********|*********|*********|********|*********|*********|********|*********|*********|   
 3.98-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-12      1 4.29+06   6.633 *********|********|*********|*********|********|*********|*********|*****   |         |         |   
 1.00-11      1 2.71+06   6.433 *********|********|*********|*********|********|*********|*********|***     |         |         |   
 1.58-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-11      1 6.81+05   5.833 *********|********|*********|*********|********|*********|*******  |        |         |         |   
 6.31-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-10      2 8.59+04   4.934 *********|********|*********|*********|********|*********|         |        |         |         |   
 1.00-09      1 2.71+04   4.433 *********|********|*********|*********|********|****     |         |        |         |         |   
 1.58-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-09      1 1.08+04   4.033 *********|********|*********|*********|********|         |         |        |         |         |   
 3.98-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-08      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-08      2 3.42+03   3.534 *********|********|*********|*********|****    |         |         |        |         |         |   
 2.51-08      1 1.08+03   3.033 *********|********|*********|*********|        |         |         |        |         |         |   
 3.98-08      1 6.81+02   2.833 *********|********|*********|*******  |        |         |         |        |         |         |   
 6.31-08      1 4.29+02   2.633 *********|********|*********|*****    |        |         |         |        |         |         |   
 1.00-07    164 4.44+04   4.648 *********|********|*********|*********|********|******   |         |        |         |         |   
 1.58-07     52 8.89+03   3.949 *********|********|*********|*********|********|         |         |        |         |         |   
 2.51-07     66 7.12+03   3.852 *********|********|*********|*********|******* |         |         |        |         |         |   
 3.98-07     71 4.83+03   3.684 *********|********|*********|*********|*****   |         |         |        |         |         |   
 6.31-07     57 2.45+03   3.389 *********|********|*********|*********|***     |         |         |        |         |         |   
 1.00-06     70 1.90+03   3.278 *********|********|*********|*********|**      |         |         |        |         |         |   
 1.58-06     79 1.35+03   3.131 *********|********|*********|*********|        |         |         |        |         |         |   
 2.51-06     84 9.06+02   2.957 *********|********|*********|******** |        |         |         |        |         |         |   
 3.98-06     84 5.72+02   2.757 *********|********|*********|******   |        |         |         |        |         |         |   
 6.31-06    110 4.72+02   2.674 *********|********|*********|******   |        |         |         |        |         |         |   
 1.00-05    156 4.23+02   2.626 *********|********|*********|*****    |        |         |         |        |         |         |   
 1.58-05    251 4.29+02   2.633 *********|********|*********|*****    |        |         |         |        |         |         |   
 2.51-05    444 4.79+02   2.680 *********|********|*********|******   |        |         |         |        |         |         |   
 3.98-05    482 3.28+02   2.516 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmm     |        |         |         |        |         |         |   
 6.31-05    348 1.49+02   2.175 *********|********|*********|*        |        |         |         |        |         |         |   
 1.00-04    221 5.99+01   1.777 *********|********|*******  |         |        |         |         |        |         |         |   
 1.58-04     93 1.59+01   1.201 *********|********|*        |         |        |         |         |        |         |         |   
 2.51-04      3 3.24-01  -0.490 ****     |        |         |         |        |         |         |        |         |         |   
 3.16-04      1 1.54-01  -0.813 *        |        |         |         |        |         |         |        |         |         |   
  total    2850 2.85-02         d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
1cumulative tally number for tally      125         nonzero tally mean(m) = 2.674E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.00000E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.58489E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 2.51189E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-12        3    0.105|         |         |         |         |         |         |         |         |         |         |
 1.00000E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 1.58489E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 2.51189E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 3.98107E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 6.30957E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.00000E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.58489E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 2.51189E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 3.98107E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 6.30957E-10        7    0.246|         |         |         |         |         |         |         |         |         |         |
 1.00000E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 1.58489E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 2.51189E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 3.98107E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 6.30957E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.00000E-08        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.58489E-08       11    0.386|         |         |         |         |         |         |         |         |         |         |
 2.51189E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 3.98107E-08       13    0.456|         |         |         |         |         |         |         |         |         |         |
 6.30957E-08       14    0.491|         |         |         |         |         |         |         |         |         |         |
 1.00000E-07      178    6.246|******   |         |         |         |         |         |         |         |         |         |
 1.58489E-07      230    8.070|******** |         |         |         |         |         |         |         |         |         |
 2.51189E-07      296   10.386|*********|         |         |         |         |         |         |         |         |         |
 3.98107E-07      367   12.877|*********|***      |         |         |         |         |         |         |         |         |
 6.30957E-07      424   14.877|*********|*****    |         |         |         |         |         |         |         |         |
 1.00000E-06      494   17.333|*********|*******  |         |         |         |         |         |         |         |         |
 1.58489E-06      573   20.105|*********|*********|         |         |         |         |         |         |         |         |
 2.51189E-06      657   23.053|*********|*********|***      |         |         |         |         |         |         |         |
 3.98107E-06      741   26.000|*********|*********|******   |         |         |         |         |         |         |         |
 6.30957E-06      851   29.860|*********|*********|*********|         |         |         |         |         |         |         |
 1.00000E-05     1007   35.333|*********|*********|*********|*****    |         |         |         |         |         |         |
 1.58489E-05     1258   44.140|*********|*********|*********|*********|****     |         |         |         |         |         |
 2.51189E-05     1702   59.719|*********|*********|*********|*********|*********|*********|         |         |         |         |
 3.98107E-05     2184   76.632|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmm  |         |         |
 6.30957E-05     2532   88.842|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.00000E-04     2753   96.596|*********|*********|*********|*********|*********|*********|*********|*********|*********|*******  |
 1.58489E-04     2846   99.860|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04     2849   99.965|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04     2850  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2850  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      125         nonzero tally mean(m) = 2.674E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.000E-14  7.587E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-14  7.587E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-12  5.516E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-11  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-11  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-10  1.129E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-09  2.114E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-09  2.114E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-08  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-08  2.910E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-08  4.619E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-08  8.058E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-08  1.209E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-07  1.299E-10    0.017|         |         |         |         |         |         |         |         |         |         |
 1.585E-07  1.971E-10    0.026|         |         |         |         |         |         |         |         |         |         |
 2.512E-07  3.302E-10    0.043|         |         |         |         |         |         |         |         |         |         |
 3.981E-07  5.574E-10    0.073|         |         |         |         |         |         |         |         |         |         |
 6.310E-07  8.491E-10    0.111|         |         |         |         |         |         |         |         |         |         |
 1.000E-06  1.408E-09    0.185|         |         |         |         |         |         |         |         |         |         |
 1.585E-06  2.434E-09    0.319|         |         |         |         |         |         |         |         |         |         |
 2.512E-06  4.126E-09    0.541|*        |         |         |         |         |         |         |         |         |         |
 3.981E-06  6.925E-09    0.909|*        |         |         |         |         |         |         |         |         |         |
 6.310E-06  1.249E-08    1.639|**       |         |         |         |         |         |         |         |         |         |
 1.000E-05  2.524E-08    3.312|***      |         |         |         |         |         |         |         |         |         |
 1.585E-05  5.788E-08    7.597|******** |         |         |         |         |         |         |         |         |         |
 2.512E-05  1.490E-07   19.560|*********|*********|         |         |         |         |         |         |         |         |
 3.981E-05  3.020E-07   39.630|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|         |         |         |         |         |         |
 6.310E-05  4.733E-07   62.113|*********|*********|*********|*********|*********|*********|**       |         |         |         |
 1.000E-04  6.460E-07   84.781|*********|*********|*********|*********|*********|*********|*********|*********|*****    |         |
 1.585E-04  7.534E-07   98.880|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-04  7.589E-07   99.603|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-04  7.620E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.61951E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally      135        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 1.00000E+01
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.43279E-09 0.2704
    1.9814E-03   1.98181E-09 0.2497
    2.4720E-03   3.31875E-10 0.7019
    2.9627E-03   6.26653E-10 0.4274
    3.4534E-03   1.39308E-09 0.4434
    3.9441E-03   1.84966E-09 0.3187
    4.4348E-03   3.10052E-09 0.3051
    4.9255E-03   4.69030E-09 0.1622
    5.4161E-03   4.18231E-09 0.1524
    5.9068E-03   8.98133E-09 0.1978
    6.3975E-03   8.19818E-09 0.1572
    6.8882E-03   1.38741E-08 0.1191
    7.3789E-03   1.03490E-08 0.1497
    7.8696E-03   1.55129E-08 0.1353
    8.3602E-03   2.05886E-08 0.1316
    8.8509E-03   4.35807E-08 0.0852
    9.3416E-03   1.54578E-08 0.1548
    9.8323E-03   2.18322E-08 0.1502
    1.0323E-02   1.17354E-08 0.1762
    1.0814E-02   1.17478E-08 0.1661
    1.1304E-02   9.34672E-09 0.1661
    1.1795E-02   8.97087E-09 0.1769
    1.2286E-02   6.66971E-09 0.1991
    1.2776E-02   6.32338E-09 0.1875
    1.3267E-02   6.29710E-09 0.1917
    1.3758E-02   7.77754E-09 0.2006
    1.4248E-02   7.91565E-09 0.1843
    1.4739E-02   1.07281E-08 0.1902
    1.5230E-02   9.75242E-09 0.1841
    1.5720E-02   9.99547E-09 0.2048
    1.6211E-02   7.88525E-09 0.2268
    1.6702E-02   8.46841E-09 0.2325
    1.7193E-02   8.37487E-09 0.2129
    1.7683E-02   9.41328E-09 0.2323
    1.8174E-02   7.47595E-09 0.2285
    1.8665E-02   8.65167E-09 0.2239
    1.9155E-02   7.75669E-09 0.2328
    1.9646E-02   1.54129E-08 0.1979
    2.0137E-02   8.70000E-09 0.2270
    2.0627E-02   4.98439E-09 0.2792
    2.1118E-02   9.12371E-09 0.3304
    2.1609E-02   5.88950E-09 0.2848
    2.2099E-02   6.66823E-09 0.2851
    2.2590E-02   8.52075E-09 0.2646
    2.3081E-02   4.89459E-09 0.2960
    2.3571E-02   6.89114E-09 0.2624
    2.4062E-02   3.90827E-09 0.3125
    2.4553E-02   4.43348E-09 0.3639
    2.5043E-02   9.81231E-09 0.2449
    2.5534E-02   6.23882E-09 0.3122
    2.6025E-02   4.78050E-09 0.3448
    2.6516E-02   6.57414E-09 0.3240
    2.7006E-02   6.23683E-09 0.2736
    2.7497E-02   6.27253E-09 0.3403
    2.7988E-02   5.74137E-09 0.3160
    2.8478E-02   3.90320E-09 0.4070
    2.8969E-02   1.01313E-08 0.2646
    2.9460E-02   2.96605E-09 0.3962
    2.9950E-02   6.17435E-09 0.3499
    3.0441E-02   8.33221E-09 0.2789
    3.0932E-02   8.15555E-09 0.3375
    3.1422E-02   7.00764E-09 0.2953
    3.1913E-02   4.00272E-09 0.3737
    3.2404E-02   6.68160E-09 0.3111
    3.2894E-02   4.60817E-09 0.3837
    3.3385E-02   7.26966E-09 0.2919
    3.3876E-02   1.34509E-09 0.6382
    3.4366E-02   3.14514E-09 0.4828
    3.4857E-02   4.68501E-09 0.3773
    3.5348E-02   3.94409E-09 0.3577
    3.5839E-02   1.95713E-09 0.5787
    3.6329E-02   5.42042E-09 0.3701
    3.6820E-02   4.03600E-09 0.4381
    3.7311E-02   3.36223E-09 0.4461
    3.7801E-02   4.23239E-09 0.3633
    3.8292E-02   1.07918E-09 0.4508
    3.8783E-02   3.17813E-09 0.4951
    3.9273E-02   2.81930E-09 0.4628
    3.9764E-02   3.47599E-09 0.4189
    4.0255E-02   4.11558E-09 0.3685
    4.0745E-02   1.77476E-09 0.6441
    4.1236E-02   2.68632E-09 0.5483
    4.1727E-02   2.65552E-09 0.5353
    4.2217E-02   3.49085E-09 0.4400
    4.2708E-02   4.12671E-09 0.4310
    4.3199E-02   5.34437E-09 0.4234
    4.3689E-02   4.80218E-10 0.7099
    4.4180E-02   5.53765E-09 0.4224
    4.4671E-02   4.06241E-09 0.3889
    4.5161E-02   1.94516E-09 0.6339
    4.5652E-02   1.76173E-09 0.6463
    4.6143E-02   5.89172E-09 0.3982
    4.6634E-02   1.23177E-09 0.6188
    4.7124E-02   1.53301E-09 0.5325
    4.7615E-02   3.11873E-09 0.5191
    4.8106E-02   2.11639E-10 1.0000
    4.8596E-02   2.23141E-09 0.6167
    4.9087E-02   2.91309E-09 0.4711
    4.9578E-02   2.31490E-09 0.4684
    5.0068E-02   3.99429E-09 0.3982
    5.0559E-02   1.22937E-09 0.5303
    5.1050E-02   3.25012E-09 0.5502
    5.1540E-02   2.92379E-10 1.0000
    5.2031E-02   2.51085E-09 0.6552
    5.2522E-02   1.90707E-09 0.5320
    5.3012E-02   2.59766E-09 0.4888
    5.3503E-02   1.50854E-09 0.6355
    5.3994E-02   1.74484E-09 0.5566
    5.4484E-02   1.37601E-09 0.7115
    5.4975E-02   9.94149E-10 0.7946
    5.5466E-02   4.17154E-09 0.4264
    5.5957E-02   1.54364E-09 0.7290
    5.6447E-02   1.92333E-09 0.5861
    5.6938E-02   2.20464E-09 0.5375
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.60164E-09 0.6492
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.06060E-09 0.7191
    5.9391E-02   1.68661E-09 0.6378
    5.9882E-02   1.84629E-09 0.6126
    6.0373E-02   1.13911E-09 0.7137
    6.0863E-02   2.89118E-09 0.5248
    6.1354E-02   2.32510E-09 0.7110
    6.1845E-02   1.56815E-09 0.6368
    6.2335E-02   1.54929E-09 0.7522
    6.2826E-02   1.23601E-09 0.7663
    6.3317E-02   1.97428E-09 0.7093
    6.3807E-02   2.20325E-09 0.5193
    6.4298E-02   1.28563E-09 1.0000
    6.4789E-02   2.33828E-09 0.6083
    6.5280E-02   2.23863E-09 0.6506
    6.5770E-02   1.40395E-09 0.8055
    6.6261E-02   1.62256E-09 0.7089
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.64172E-09 0.6274
    6.7733E-02   1.63254E-09 0.7714
    6.8224E-02   6.29632E-10 1.0000
    6.8714E-02   2.74489E-09 0.6087
    6.9205E-02   7.54956E-10 1.0000
    6.9696E-02   1.26848E-09 1.0000
    7.0186E-02   1.75915E-09 0.7197
    7.0677E-02   4.68779E-10 0.7329
    7.1168E-02   6.71986E-10 0.5782
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.09600E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.50379E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24811E-09 1.0000
    7.7547E-02   9.84119E-10 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.17043E-07 0.0274
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 1.00000E+01
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.43207E-09 0.2704
    1.9814E-03   1.96925E-09 0.2511
    2.4720E-03   3.31875E-10 0.7019
    2.9627E-03   6.26653E-10 0.4274
    3.4534E-03   1.39236E-09 0.4436
    3.9441E-03   1.84768E-09 0.3191
    4.4348E-03   3.10052E-09 0.3051
    4.9255E-03   4.58088E-09 0.1633
    5.4161E-03   4.06510E-09 0.1548
    5.9068E-03   7.90529E-09 0.1719
    6.3975E-03   8.13269E-09 0.1578
    6.8882E-03   1.34935E-08 0.1187
    7.3789E-03   1.02644E-08 0.1502
    7.8696E-03   1.50518E-08 0.1354
    8.3602E-03   2.03379E-08 0.1323
    8.8509E-03   1.82839E-08 0.1424
    9.3416E-03   1.43051E-08 0.1470
    9.8323E-03   2.09468E-08 0.1514
    1.0323E-02   1.17354E-08 0.1762
    1.0814E-02   1.17478E-08 0.1661
    1.1304E-02   9.34672E-09 0.1661
    1.1795E-02   8.97087E-09 0.1769
    1.2286E-02   6.66971E-09 0.1991
    1.2776E-02   6.32338E-09 0.1875
    1.3267E-02   6.29710E-09 0.1917
    1.3758E-02   7.71470E-09 0.1991
    1.4248E-02   7.91565E-09 0.1843
    1.4739E-02   1.06391E-08 0.1912
    1.5230E-02   9.75242E-09 0.1841
    1.5720E-02   9.57648E-09 0.2008
    1.6211E-02   7.55255E-09 0.2215
    1.6702E-02   8.24314E-09 0.2324
    1.7193E-02   8.37487E-09 0.2129
    1.7683E-02   8.86691E-09 0.2361
    1.8174E-02   7.47595E-09 0.2285
    1.8665E-02   8.65167E-09 0.2239
    1.9155E-02   7.75669E-09 0.2328
    1.9646E-02   1.54129E-08 0.1979
    2.0137E-02   8.70000E-09 0.2270
    2.0627E-02   4.98439E-09 0.2792
    2.1118E-02   7.25060E-09 0.2642
    2.1609E-02   5.88950E-09 0.2848
    2.2099E-02   6.66823E-09 0.2851
    2.2590E-02   8.52075E-09 0.2646
    2.3081E-02   4.89459E-09 0.2960
    2.3571E-02   6.66429E-09 0.2638
    2.4062E-02   3.90827E-09 0.3125
    2.4553E-02   4.43348E-09 0.3639
    2.5043E-02   9.81231E-09 0.2449
    2.5534E-02   5.91142E-09 0.3141
    2.6025E-02   4.78050E-09 0.3448
    2.6516E-02   6.57414E-09 0.3240
    2.7006E-02   6.23683E-09 0.2736
    2.7497E-02   6.27253E-09 0.3403
    2.7988E-02   5.74137E-09 0.3160
    2.8478E-02   3.90320E-09 0.4070
    2.8969E-02   1.01313E-08 0.2646
    2.9460E-02   2.96605E-09 0.3962
    2.9950E-02   6.17435E-09 0.3499
    3.0441E-02   8.33221E-09 0.2789
    3.0932E-02   6.27160E-09 0.3092
    3.1422E-02   7.00764E-09 0.2953
    3.1913E-02   4.00272E-09 0.3737
    3.2404E-02   6.68160E-09 0.3111
    3.2894E-02   4.60817E-09 0.3837
    3.3385E-02   7.26966E-09 0.2919
    3.3876E-02   1.34509E-09 0.6382
    3.4366E-02   3.14514E-09 0.4828
    3.4857E-02   4.68501E-09 0.3773
    3.5348E-02   3.94409E-09 0.3577
    3.5839E-02   1.95713E-09 0.5787
    3.6329E-02   5.42042E-09 0.3701
    3.6820E-02   4.03600E-09 0.4381
    3.7311E-02   3.36223E-09 0.4461
    3.7801E-02   4.23239E-09 0.3633
    3.8292E-02   1.07918E-09 0.4508
    3.8783E-02   3.17813E-09 0.4951
    3.9273E-02   2.81930E-09 0.4628
    3.9764E-02   3.47599E-09 0.4189
    4.0255E-02   4.11558E-09 0.3685
    4.0745E-02   1.77476E-09 0.6441
    4.1236E-02   2.68632E-09 0.5483
    4.1727E-02   2.65552E-09 0.5353
    4.2217E-02   3.49085E-09 0.4400
    4.2708E-02   4.12671E-09 0.4310
    4.3199E-02   5.22822E-09 0.4218
    4.3689E-02   4.80218E-10 0.7099
    4.4180E-02   5.53765E-09 0.4224
    4.4671E-02   4.06241E-09 0.3889
    4.5161E-02   1.94516E-09 0.6339
    4.5652E-02   1.76173E-09 0.6463
    4.6143E-02   5.89172E-09 0.3982
    4.6634E-02   1.23177E-09 0.6188
    4.7124E-02   1.53301E-09 0.5325
    4.7615E-02   3.11873E-09 0.5191
    4.8106E-02   2.11639E-10 1.0000
    4.8596E-02   2.23141E-09 0.6167
    4.9087E-02   2.91309E-09 0.4711
    4.9578E-02   2.31490E-09 0.4684
    5.0068E-02   3.99429E-09 0.3982
    5.0559E-02   1.22937E-09 0.5303
    5.1050E-02   3.25012E-09 0.5502
    5.1540E-02   2.92379E-10 1.0000
    5.2031E-02   2.51085E-09 0.6552
    5.2522E-02   1.90707E-09 0.5320
    5.3012E-02   2.59766E-09 0.4888
    5.3503E-02   1.50854E-09 0.6355
    5.3994E-02   1.74484E-09 0.5566
    5.4484E-02   1.37601E-09 0.7115
    5.4975E-02   9.94149E-10 0.7946
    5.5466E-02   4.17154E-09 0.4264
    5.5957E-02   1.54364E-09 0.7290
    5.6447E-02   1.92333E-09 0.5861
    5.6938E-02   2.20464E-09 0.5375
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.60164E-09 0.6492
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.06060E-09 0.7191
    5.9391E-02   1.68661E-09 0.6378
    5.9882E-02   9.23983E-10 1.0000
    6.0373E-02   1.13911E-09 0.7137
    6.0863E-02   2.89118E-09 0.5248
    6.1354E-02   2.32510E-09 0.7110
    6.1845E-02   1.56815E-09 0.6368
    6.2335E-02   1.54929E-09 0.7522
    6.2826E-02   1.23601E-09 0.7663
    6.3317E-02   1.97428E-09 0.7093
    6.3807E-02   2.20325E-09 0.5193
    6.4298E-02   1.28563E-09 1.0000
    6.4789E-02   2.33828E-09 0.6083
    6.5280E-02   2.23863E-09 0.6506
    6.5770E-02   1.40395E-09 0.8055
    6.6261E-02   1.62256E-09 0.7089
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.64172E-09 0.6274
    6.7733E-02   1.17233E-09 1.0000
    6.8224E-02   6.29632E-10 1.0000
    6.8714E-02   2.74489E-09 0.6087
    6.9205E-02   7.54956E-10 1.0000
    6.9696E-02   1.26848E-09 1.0000
    7.0186E-02   1.75915E-09 0.7197
    7.0677E-02   4.68779E-10 0.7329
    7.1168E-02   6.71986E-10 0.5782
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.09600E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.50379E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24811E-09 1.0000
    7.7547E-02   9.84119E-10 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      6.79662E-07 0.0273
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                152         0.05021        1.10157E-10        0.00015
        1.00000E+00                310         0.15263        9.10318E-10        0.00142
        2.00000E+00                119         0.19194        1.27808E-09        0.00321
        5.00000E+00                163         0.24579        4.02404E-09        0.00882
        1.00000E+01                178         0.30459        9.59127E-09        0.02219
        1.00000E+02               1870         0.92237        5.17003E-07        0.74321
        1.00000E+03                190         0.98513        1.77661E-07        0.99098
        1.00000E+38                  0         0.98513        0.00000E+00        0.99098
 before dd roulette                 45         1.00000        6.46506E-09        1.00000

 average tally per history = 7.17043E-07            largest score = 1.87311E-04
 (largest score)/(average tally) = 2.61226E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1179        3027       7.17043E-07         2.36883E-05
       total        1179        3027       7.17043E-07         2.36883E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1179
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      135

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random      10.00
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 6.9778E-07 to 7.3706E-07; 6.7814E-07 to 7.5670E-07; 6.5851E-07 to 7.7634E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 6.9742E-07 to 7.3667E-07; 6.7779E-07 to 7.5630E-07; 6.5816E-07 to 7.7593E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      135 with nps =      100000  print table 160


 normed average tally per history  = 7.17043E-07          unnormed average tally per history  = 7.17043E-07
 estimated tally relative error    = 0.0274               estimated variance of the variance  = 0.0019
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0202

 number of nonzero history tallies =        2841          efficiency for the nonzero tallies  = 0.0284
 history number of largest  tally  =        7279          largest  unnormalized history tally = 2.38339E-04
 (largest  tally)/(average tally)  = 3.32391E+02          (largest  tally)/(avg nonzero tally)= 9.44324E+00

 (confidence interval shift)/mean  = 0.0005               shifted confidence interval center  = 7.17421E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.17043E-07             7.19420E-07                     0.003314
      relative error                  2.73736E-02             2.74821E-02                     0.003964
      variance of the variance        1.87984E-03             2.03409E-03                     0.082056
      shifted center                  7.17421E-07             7.17432E-07                     0.000016
      figure of merit                 7.70178E+01             7.64108E+01                    -0.007882

 the estimated slope of the 142 largest  tallies starting at  8.38835E-05 appears to be decreasing at least exponentially.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.155E-01)**2 = (5.771E+03)*(1.335E-02) = 7.702E+01

1unnormed tally density for tally      135          nonzero tally mean(m) = 2.524E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope=10.0)
  tally  number num den log den:d--------d--------d---------d--------d---------d---------d--------d---------d---------d--------d----
 6.31-15      1 4.29+09   9.633 *********|********|*********|********|*********|*********|********|*********|*********|********|****
 1.00-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-14      1 1.71+09   9.233 *********|********|*********|********|*********|*********|********|*********|*********|********|    
 2.51-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-12      1 6.81+06   6.833 *********|********|*********|********|*********|*********|********|******   |         |        |    
 6.31-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-11      1 2.71+06   6.433 *********|********|*********|********|*********|*********|********|**       |         |        |    
 1.58-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-11      1 6.81+05   5.833 *********|********|*********|********|*********|*********|*****   |         |         |        |    
 6.31-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-10      1 6.81+04   4.833 *********|********|*********|********|*********|******   |        |         |         |        |    
 6.31-10      1 4.29+04   4.633 *********|********|*********|********|*********|****     |        |         |         |        |    
 1.00-09      1 2.71+04   4.433 *********|********|*********|********|*********|**       |        |         |         |        |    
 1.58-09      1 1.71+04   4.233 *********|********|*********|********|*********|         |        |         |         |        |    
 2.51-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-08      1 2.71+03   3.433 *********|********|*********|********|**       |         |        |         |         |        |    
 1.58-08      2 3.42+03   3.534 *********|********|*********|********|***      |         |        |         |         |        |    
 2.51-08      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-08      2 1.36+03   3.134 *********|********|*********|********|         |         |        |         |         |        |    
 6.31-08      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-07    175 4.74+04   4.676 *********|********|*********|********|*********|****     |        |         |         |        |    
 1.58-07     59 1.01+04   4.004 *********|********|*********|********|******** |         |        |         |         |        |    
 2.51-07     59 6.36+03   3.804 *********|********|*********|********|******   |         |        |         |         |        |    
 3.98-07     68 4.63+03   3.665 *********|********|*********|********|*****    |         |        |         |         |        |    
 6.31-07     62 2.66+03   3.425 *********|********|*********|********|**       |         |        |         |         |        |    
 1.00-06     62 1.68+03   3.225 *********|********|*********|********|         |         |        |         |         |        |    
 1.58-06     88 1.50+03   3.177 *********|********|*********|********|         |         |        |         |         |        |    
 2.51-06     74 7.98+02   2.902 *********|********|*********|******  |         |         |        |         |         |        |    
 3.98-06     99 6.74+02   2.829 *********|********|*********|******  |         |         |        |         |         |        |    
 6.31-06    106 4.55+02   2.658 *********|********|*********|****    |         |         |        |         |         |        |    
 1.00-05    169 4.58+02   2.661 *********|********|*********|****    |         |         |        |         |         |        |    
 1.58-05    267 4.56+02   2.659 *********|********|*********|****    |         |         |        |         |         |        |    
 2.51-05    462 4.98+02   2.698 *********|********|*********|****    |         |         |        |         |         |        |    
 3.98-05    456 3.10+02   2.492 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mm      |         |         |        |         |         |        |    
 6.31-05    338 1.45+02   2.162 *********|********|*********|        |         |         |        |         |         |        |    
 1.00-04    215 5.83+01   1.765 *********|********|*****    |        |         |         |        |         |         |        |    
 1.58-04     66 1.13+01   1.052 *********|********|         |        |         |         |        |         |         |        |    
 2.51-04      2 2.16-01  -0.666 *        |        |         |        |         |         |        |         |         |        |    
  total    2841 2.84-02         d--------d--------d---------d--------d---------d---------d--------d---------d---------d--------d----
1cumulative tally number for tally      135         nonzero tally mean(m) = 2.524E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 6.30957E-15        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.00000E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.58489E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-12        3    0.106|         |         |         |         |         |         |         |         |         |         |
 6.30957E-12        3    0.106|         |         |         |         |         |         |         |         |         |         |
 1.00000E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 1.58489E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 2.51189E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 3.98107E-11        5    0.176|         |         |         |         |         |         |         |         |         |         |
 6.30957E-11        5    0.176|         |         |         |         |         |         |         |         |         |         |
 1.00000E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 1.58489E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 2.51189E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 3.98107E-10        6    0.211|         |         |         |         |         |         |         |         |         |         |
 6.30957E-10        7    0.246|         |         |         |         |         |         |         |         |         |         |
 1.00000E-09        8    0.282|         |         |         |         |         |         |         |         |         |         |
 1.58489E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 2.51189E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 3.98107E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 6.30957E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 1.00000E-08       10    0.352|         |         |         |         |         |         |         |         |         |         |
 1.58489E-08       12    0.422|         |         |         |         |         |         |         |         |         |         |
 2.51189E-08       12    0.422|         |         |         |         |         |         |         |         |         |         |
 3.98107E-08       14    0.493|         |         |         |         |         |         |         |         |         |         |
 6.30957E-08       14    0.493|         |         |         |         |         |         |         |         |         |         |
 1.00000E-07      189    6.653|*******  |         |         |         |         |         |         |         |         |         |
 1.58489E-07      248    8.729|*********|         |         |         |         |         |         |         |         |         |
 2.51189E-07      307   10.806|*********|*        |         |         |         |         |         |         |         |         |
 3.98107E-07      375   13.200|*********|***      |         |         |         |         |         |         |         |         |
 6.30957E-07      437   15.382|*********|*****    |         |         |         |         |         |         |         |         |
 1.00000E-06      499   17.564|*********|******** |         |         |         |         |         |         |         |         |
 1.58489E-06      587   20.662|*********|*********|*        |         |         |         |         |         |         |         |
 2.51189E-06      661   23.266|*********|*********|***      |         |         |         |         |         |         |         |
 3.98107E-06      760   26.751|*********|*********|*******  |         |         |         |         |         |         |         |
 6.30957E-06      866   30.482|*********|*********|*********|         |         |         |         |         |         |         |
 1.00000E-05     1035   36.431|*********|*********|*********|******   |         |         |         |         |         |         |
 1.58489E-05     1302   45.829|*********|*********|*********|*********|******   |         |         |         |         |         |
 2.51189E-05     1764   62.091|*********|*********|*********|*********|*********|*********|**       |         |         |         |
 3.98107E-05     2220   78.141|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmm |         |         |
 6.30957E-05     2558   90.039|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.00000E-04     2773   97.606|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 1.58489E-04     2839   99.930|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04     2841  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2841  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      135         nonzero tally mean(m) = 2.524E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 6.310E-15  4.647E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-14  4.647E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-12  3.572E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-12  3.572E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-11  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-11  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-10  4.329E-15    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-10  8.321E-15    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-09  1.625E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-08  1.123E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-08  3.778E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-08  3.778E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-08  1.051E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-08  1.051E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-07  1.318E-10    0.018|         |         |         |         |         |         |         |         |         |         |
 1.585E-07  2.075E-10    0.029|         |         |         |         |         |         |         |         |         |         |
 2.512E-07  3.275E-10    0.046|         |         |         |         |         |         |         |         |         |         |
 3.981E-07  5.388E-10    0.075|         |         |         |         |         |         |         |         |         |         |
 6.310E-07  8.544E-10    0.119|         |         |         |         |         |         |         |         |         |         |
 1.000E-06  1.346E-09    0.188|         |         |         |         |         |         |         |         |         |         |
 1.585E-06  2.455E-09    0.342|         |         |         |         |         |         |         |         |         |         |
 2.512E-06  3.922E-09    0.547|*        |         |         |         |         |         |         |         |         |         |
 3.981E-06  7.158E-09    0.998|*        |         |         |         |         |         |         |         |         |         |
 6.310E-06  1.257E-08    1.753|**       |         |         |         |         |         |         |         |         |         |
 1.000E-05  2.647E-08    3.691|****     |         |         |         |         |         |         |         |         |         |
 1.585E-05  6.145E-08    8.570|*********|         |         |         |         |         |         |         |         |         |
 2.512E-05  1.561E-07   21.765|*********|*********|**       |         |         |         |         |         |         |         |
 3.981E-05  3.003E-07   41.877|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mm       |         |         |         |         |         |
 6.310E-05  4.665E-07   65.066|*********|*********|*********|*********|*********|*********|*****    |         |         |         |
 1.000E-04  6.364E-07   88.757|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.585E-04  7.129E-07   99.421|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-04  7.170E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.17043E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally      215        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 0.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.72237E-09 0.2675
    1.9814E-03   2.19129E-09 0.2420
    2.4720E-03   3.72626E-10 0.7071
    2.9627E-03   7.11717E-10 0.4244
    3.4534E-03   1.60078E-09 0.4451
    3.9441E-03   2.01873E-09 0.2981
    4.4348E-03   3.37369E-09 0.2963
    4.9255E-03   5.29807E-09 0.1560
    5.4161E-03   4.78306E-09 0.1505
    5.9068E-03   1.02975E-08 0.1971
    6.3975E-03   8.83954E-09 0.1503
    6.8882E-03   1.56575E-08 0.1195
    7.3789E-03   1.13528E-08 0.1507
    7.8696E-03   1.70979E-08 0.1342
    8.3602E-03   2.23437E-08 0.1298
    8.8509E-03   4.66601E-08 0.0852
    9.3416E-03   1.62294E-08 0.1508
    9.8323E-03   2.32406E-08 0.1492
    1.0323E-02   1.24686E-08 0.1760
    1.0814E-02   1.29205E-08 0.1680
    1.1304E-02   1.01608E-08 0.1647
    1.1795E-02   1.01760E-08 0.1771
    1.2286E-02   7.56769E-09 0.2023
    1.2776E-02   7.05939E-09 0.1864
    1.3267E-02   7.01998E-09 0.1903
    1.3758E-02   8.35211E-09 0.1982
    1.4248E-02   8.51884E-09 0.1856
    1.4739E-02   1.17088E-08 0.1900
    1.5230E-02   1.08444E-08 0.1855
    1.5720E-02   1.09448E-08 0.2002
    1.6211E-02   8.44340E-09 0.2229
    1.6702E-02   9.54081E-09 0.2344
    1.7193E-02   9.02275E-09 0.2124
    1.7683E-02   1.03033E-08 0.2314
    1.8174E-02   7.97232E-09 0.2278
    1.8665E-02   9.12454E-09 0.2243
    1.9155E-02   8.18338E-09 0.2307
    1.9646E-02   1.66021E-08 0.1978
    2.0137E-02   9.06860E-09 0.2225
    2.0627E-02   5.37004E-09 0.2806
    2.1118E-02   1.06803E-08 0.3747
    2.1609E-02   6.57944E-09 0.2902
    2.2099E-02   7.38174E-09 0.2874
    2.2590E-02   8.86016E-09 0.2652
    2.3081E-02   5.17919E-09 0.2953
    2.3571E-02   7.53950E-09 0.2690
    2.4062E-02   4.30375E-09 0.3123
    2.4553E-02   4.87647E-09 0.3559
    2.5043E-02   1.09470E-08 0.2476
    2.5534E-02   6.93862E-09 0.3201
    2.6025E-02   5.31306E-09 0.3485
    2.6516E-02   6.72415E-09 0.3282
    2.7006E-02   7.21729E-09 0.2771
    2.7497E-02   6.90103E-09 0.3454
    2.7988E-02   6.49138E-09 0.3083
    2.8478E-02   4.11102E-09 0.4146
    2.8969E-02   1.03778E-08 0.2632
    2.9460E-02   3.05296E-09 0.3933
    2.9950E-02   6.69746E-09 0.3429
    3.0441E-02   9.07807E-09 0.2834
    3.0932E-02   1.10830E-08 0.3863
    3.1422E-02   7.59331E-09 0.2999
    3.1913E-02   4.16523E-09 0.3856
    3.2404E-02   6.93188E-09 0.3134
    3.2894E-02   5.53467E-09 0.3724
    3.3385E-02   8.02777E-09 0.2934
    3.3876E-02   1.24885E-09 0.6386
    3.4366E-02   3.35344E-09 0.4785
    3.4857E-02   5.07798E-09 0.3719
    3.5348E-02   3.74978E-09 0.3440
    3.5839E-02   2.10802E-09 0.5819
    3.6329E-02   5.69042E-09 0.3673
    3.6820E-02   4.29919E-09 0.4401
    3.7311E-02   3.56348E-09 0.4595
    3.7801E-02   4.52496E-09 0.3495
    3.8292E-02   1.19713E-09 0.4523
    3.8783E-02   3.25680E-09 0.4973
    3.9273E-02   3.23087E-09 0.4684
    3.9764E-02   4.23108E-09 0.4260
    4.0255E-02   4.57554E-09 0.3581
    4.0745E-02   2.13289E-09 0.6563
    4.1236E-02   2.82351E-09 0.5528
    4.1727E-02   2.80230E-09 0.5348
    4.2217E-02   3.31577E-09 0.4380
    4.2708E-02   3.82347E-09 0.4295
    4.3199E-02   5.32837E-09 0.4229
    4.3689E-02   5.46851E-10 0.7074
    4.4180E-02   6.02721E-09 0.4172
    4.4671E-02   4.41953E-09 0.3942
    4.5161E-02   1.79357E-09 0.6105
    4.5652E-02   2.33580E-09 0.6595
    4.6143E-02   6.40965E-09 0.4031
    4.6634E-02   1.14124E-09 0.6164
    4.7124E-02   1.52707E-09 0.5404
    4.7615E-02   2.93838E-09 0.5070
    4.8106E-02   2.57934E-10 1.0000
    4.8596E-02   2.19848E-09 0.6172
    4.9087E-02   3.35862E-09 0.4764
    4.9578E-02   2.43681E-09 0.4635
    5.0068E-02   4.07000E-09 0.3875
    5.0559E-02   1.33409E-09 0.5351
    5.1050E-02   3.36695E-09 0.5600
    5.1540E-02   3.87645E-10 1.0000
    5.2031E-02   2.93988E-09 0.6564
    5.2522E-02   2.02951E-09 0.5456
    5.3012E-02   2.35667E-09 0.4661
    5.3503E-02   1.28128E-09 0.6248
    5.3994E-02   1.90175E-09 0.5244
    5.4484E-02   1.40693E-09 0.7345
    5.4975E-02   1.02674E-09 0.7623
    5.5466E-02   4.97092E-09 0.4219
    5.5957E-02   1.61253E-09 0.7622
    5.6447E-02   2.32501E-09 0.5899
    5.6938E-02   2.07696E-09 0.5500
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   2.01146E-09 0.6524
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   9.59550E-10 0.7096
    5.9391E-02   1.71243E-09 0.6212
    5.9882E-02   2.06464E-09 0.6233
    6.0373E-02   1.19385E-09 0.7087
    6.0863E-02   3.11386E-09 0.5162
    6.1354E-02   2.46192E-09 0.7077
    6.1845E-02   1.85888E-09 0.6261
    6.2335E-02   1.62079E-09 0.7481
    6.2826E-02   1.55043E-09 0.7801
    6.3317E-02   2.21836E-09 0.7075
    6.3807E-02   2.40699E-09 0.5505
    6.4298E-02   1.45306E-09 1.0000
    6.4789E-02   2.82618E-09 0.6026
    6.5280E-02   2.34815E-09 0.6384
    6.5770E-02   1.54722E-09 0.8388
    6.6261E-02   1.53632E-09 0.7208
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.88646E-09 0.6164
    6.7733E-02   1.80478E-09 0.7777
    6.8224E-02   7.86716E-10 1.0000
    6.8714E-02   3.07920E-09 0.5946
    6.9205E-02   7.49267E-10 1.0000
    6.9696E-02   1.39275E-09 1.0000
    7.0186E-02   1.51931E-09 0.7267
    7.0677E-02   4.52108E-10 0.7152
    7.1168E-02   7.12972E-10 0.5819
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.30875E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.31938E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.17773E-09 1.0000
    7.7547E-02   1.18081E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.78730E-07 0.0276
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 0.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.72237E-09 0.2675
    1.9814E-03   2.17500E-09 0.2437
    2.4720E-03   3.72626E-10 0.7071
    2.9627E-03   7.11717E-10 0.4244
    3.4534E-03   1.60078E-09 0.4451
    3.9441E-03   2.01655E-09 0.2984
    4.4348E-03   3.37369E-09 0.2963
    4.9255E-03   5.19199E-09 0.1571
    5.4161E-03   4.65846E-09 0.1528
    5.9068E-03   9.03668E-09 0.1674
    6.3975E-03   8.76352E-09 0.1508
    6.8882E-03   1.51344E-08 0.1185
    7.3789E-03   1.12503E-08 0.1513
    7.8696E-03   1.65985E-08 0.1341
    8.3602E-03   2.21455E-08 0.1304
    8.8509E-03   1.93914E-08 0.1430
    9.3416E-03   1.52636E-08 0.1479
    9.8323E-03   2.20019E-08 0.1495
    1.0323E-02   1.24686E-08 0.1760
    1.0814E-02   1.29205E-08 0.1680
    1.1304E-02   1.01608E-08 0.1647
    1.1795E-02   1.01760E-08 0.1771
    1.2286E-02   7.56769E-09 0.2023
    1.2776E-02   7.05939E-09 0.1864
    1.3267E-02   7.01998E-09 0.1903
    1.3758E-02   8.27849E-09 0.1967
    1.4248E-02   8.51884E-09 0.1856
    1.4739E-02   1.16170E-08 0.1909
    1.5230E-02   1.08444E-08 0.1855
    1.5720E-02   1.06509E-08 0.1980
    1.6211E-02   8.06209E-09 0.2193
    1.6702E-02   9.23164E-09 0.2337
    1.7193E-02   9.02275E-09 0.2124
    1.7683E-02   9.68655E-09 0.2358
    1.8174E-02   7.97232E-09 0.2278
    1.8665E-02   9.12454E-09 0.2243
    1.9155E-02   8.18338E-09 0.2307
    1.9646E-02   1.66021E-08 0.1978
    2.0137E-02   9.06860E-09 0.2225
    2.0627E-02   5.37004E-09 0.2806
    2.1118E-02   7.74904E-09 0.2545
    2.1609E-02   6.57944E-09 0.2902
    2.2099E-02   7.38174E-09 0.2874
    2.2590E-02   8.86016E-09 0.2652
    2.3081E-02   5.17919E-09 0.2953
    2.3571E-02   7.36033E-09 0.2712
    2.4062E-02   4.30375E-09 0.3123
    2.4553E-02   4.87647E-09 0.3559
    2.5043E-02   1.09470E-08 0.2476
    2.5534E-02   6.72799E-09 0.3242
    2.6025E-02   5.31306E-09 0.3485
    2.6516E-02   6.72415E-09 0.3282
    2.7006E-02   7.21729E-09 0.2771
    2.7497E-02   6.90103E-09 0.3454
    2.7988E-02   6.49138E-09 0.3083
    2.8478E-02   4.11102E-09 0.4146
    2.8969E-02   1.03778E-08 0.2632
    2.9460E-02   3.05296E-09 0.3933
    2.9950E-02   6.69746E-09 0.3429
    3.0441E-02   9.07807E-09 0.2834
    3.0932E-02   6.70975E-09 0.3076
    3.1422E-02   7.59331E-09 0.2999
    3.1913E-02   4.16523E-09 0.3856
    3.2404E-02   6.93188E-09 0.3134
    3.2894E-02   5.53467E-09 0.3724
    3.3385E-02   8.02777E-09 0.2934
    3.3876E-02   1.24885E-09 0.6386
    3.4366E-02   3.35344E-09 0.4785
    3.4857E-02   5.07798E-09 0.3719
    3.5348E-02   3.74978E-09 0.3440
    3.5839E-02   2.10802E-09 0.5819
    3.6329E-02   5.69042E-09 0.3673
    3.6820E-02   4.29919E-09 0.4401
    3.7311E-02   3.56348E-09 0.4595
    3.7801E-02   4.52496E-09 0.3495
    3.8292E-02   1.19713E-09 0.4523
    3.8783E-02   3.25680E-09 0.4973
    3.9273E-02   3.23087E-09 0.4684
    3.9764E-02   4.23108E-09 0.4260
    4.0255E-02   4.57554E-09 0.3581
    4.0745E-02   2.13289E-09 0.6563
    4.1236E-02   2.82351E-09 0.5528
    4.1727E-02   2.80230E-09 0.5348
    4.2217E-02   3.31577E-09 0.4380
    4.2708E-02   3.82347E-09 0.4295
    4.3199E-02   5.21509E-09 0.4214
    4.3689E-02   5.46851E-10 0.7074
    4.4180E-02   6.02721E-09 0.4172
    4.4671E-02   4.41953E-09 0.3942
    4.5161E-02   1.79357E-09 0.6105
    4.5652E-02   2.33580E-09 0.6595
    4.6143E-02   6.40965E-09 0.4031
    4.6634E-02   1.14124E-09 0.6164
    4.7124E-02   1.52707E-09 0.5404
    4.7615E-02   2.93838E-09 0.5070
    4.8106E-02   2.57934E-10 1.0000
    4.8596E-02   2.19848E-09 0.6172
    4.9087E-02   3.35862E-09 0.4764
    4.9578E-02   2.43681E-09 0.4635
    5.0068E-02   4.07000E-09 0.3875
    5.0559E-02   1.33409E-09 0.5351
    5.1050E-02   3.36695E-09 0.5600
    5.1540E-02   3.87645E-10 1.0000
    5.2031E-02   2.93988E-09 0.6564
    5.2522E-02   2.02951E-09 0.5456
    5.3012E-02   2.35667E-09 0.4661
    5.3503E-02   1.28128E-09 0.6248
    5.3994E-02   1.90175E-09 0.5244
    5.4484E-02   1.40693E-09 0.7345
    5.4975E-02   1.02674E-09 0.7623
    5.5466E-02   4.97092E-09 0.4219
    5.5957E-02   1.61253E-09 0.7622
    5.6447E-02   2.32501E-09 0.5899
    5.6938E-02   2.07696E-09 0.5500
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   2.01146E-09 0.6524
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   9.59550E-10 0.7096
    5.9391E-02   1.71243E-09 0.6212
    5.9882E-02   1.08425E-09 1.0000
    6.0373E-02   1.19385E-09 0.7087
    6.0863E-02   3.11386E-09 0.5162
    6.1354E-02   2.46192E-09 0.7077
    6.1845E-02   1.85888E-09 0.6261
    6.2335E-02   1.62079E-09 0.7481
    6.2826E-02   1.55043E-09 0.7801
    6.3317E-02   2.21836E-09 0.7075
    6.3807E-02   2.40699E-09 0.5505
    6.4298E-02   1.45306E-09 1.0000
    6.4789E-02   2.82618E-09 0.6026
    6.5280E-02   2.34815E-09 0.6384
    6.5770E-02   1.54722E-09 0.8388
    6.6261E-02   1.53632E-09 0.7208
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.88646E-09 0.6164
    6.7733E-02   1.31555E-09 1.0000
    6.8224E-02   7.86716E-10 1.0000
    6.8714E-02   3.07920E-09 0.5946
    6.9205E-02   7.49267E-10 1.0000
    6.9696E-02   1.39275E-09 1.0000
    7.0186E-02   1.51931E-09 0.7267
    7.0677E-02   4.52108E-10 0.7152
    7.1168E-02   7.12972E-10 0.5819
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.30875E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.31938E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.17773E-09 1.0000
    7.7547E-02   1.18081E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.35303E-07 0.0272
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                131         0.04312        1.02632E-10        0.00013
        1.00000E+00                329         0.15142        1.04726E-09        0.00148
        2.00000E+00                114         0.18894        1.31591E-09        0.00317
        5.00000E+00                155         0.23996        3.94934E-09        0.00824
        1.00000E+01                196         0.30448        1.13410E-08        0.02280
        1.00000E+02               1892         0.92725        5.70316E-07        0.75517
        1.00000E+03                176         0.98519        1.83604E-07        0.99094
        1.00000E+38                  0         0.98519        0.00000E+00        0.99094
 before dd roulette                 45         1.00000        7.05341E-09        1.00000

 average tally per history = 7.78730E-07            largest score = 2.93129E-04
 (largest score)/(average tally) = 3.76419E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1168        3038       7.78730E-07         2.56330E-05
       total        1168        3038       7.78730E-07         2.56330E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1168
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      215

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random       9.15
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 7.5767E-07 to 8.0070E-07; 7.3615E-07 to 8.2222E-07; 7.1463E-07 to 8.4374E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 7.5722E-07 to 8.0024E-07; 7.3572E-07 to 8.2174E-07; 7.1421E-07 to 8.4325E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      215 with nps =      100000  print table 160


 normed average tally per history  = 7.78730E-07          unnormed average tally per history  = 7.78730E-07
 estimated tally relative error    = 0.0276               estimated variance of the variance  = 0.0027
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0205

 number of nonzero history tallies =        2852          efficiency for the nonzero tallies  = 0.0285
 history number of largest  tally  =        7279          largest  unnormalized history tally = 3.53366E-04
 (largest  tally)/(average tally)  = 4.53772E+02          (largest  tally)/(avg nonzero tally)= 1.29416E+01

 (confidence interval shift)/mean  = 0.0006               shifted confidence interval center  = 7.79185E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.78730E-07             7.82256E-07                     0.004528
      relative error                  2.76173E-02             2.78595E-02                     0.008772
      variance of the variance        2.73423E-03             3.27727E-03                     0.198609
      shifted center                  7.79185E-07             7.79219E-07                     0.000044
      figure of merit                 7.56648E+01             7.43545E+01                    -0.017316

 the estimated inverse power slope of the 142 largest  tallies starting at 9.08316E-05 is 9.1481
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.145E-01)**2 = (5.771E+03)*(1.311E-02) = 7.566E+01

1unnormed tally density for tally      215          nonzero tally mean(m) = 2.730E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 9.1)
  tally  number num den log den:d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
 1.26-14      1 2.15+09   9.333 *********|********|*********|*********|********|*********|*********|********|*********|*********|***
 2.00-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-14      1 8.57+08   8.933 *********|********|*********|*********|********|*********|*********|********|*********|*********|   
 5.01-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-12      1 3.41+06   6.533 *********|********|*********|*********|********|*********|*********|*****   |         |         |   
 1.26-11      1 2.15+06   6.333 *********|********|*********|*********|********|*********|*********|***     |         |         |   
 2.00-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-11      1 5.41+05   5.733 *********|********|*********|*********|********|*********|*******  |        |         |         |   
 7.94-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.00-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-10      2 6.82+04   4.834 *********|********|*********|*********|********|*********|         |        |         |         |   
 1.26-09      1 2.15+04   4.333 *********|********|*********|*********|********|****     |         |        |         |         |   
 2.00-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.16-09      1 8.57+03   3.933 *********|********|*********|*********|********|         |         |        |         |         |   
 5.01-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 7.94-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.26-08      1 2.15+03   3.333 *********|********|*********|*********|***     |         |         |        |         |         |   
 2.00-08      2 2.72+03   3.434 *********|********|*********|*********|****    |         |         |        |         |         |   
 3.16-08      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 5.01-08      2 1.08+03   3.034 *********|********|*********|*********|        |         |         |        |         |         |   
 7.94-08    119 4.06+04   4.608 *********|********|*********|*********|********|******   |         |        |         |         |   
 1.26-07     62 1.33+04   4.125 *********|********|*********|*********|********|**       |         |        |         |         |   
 2.00-07     63 8.56+03   3.932 *********|********|*********|*********|********|         |         |        |         |         |   
 3.16-07     64 5.48+03   3.739 *********|********|*********|*********|******* |         |         |        |         |         |   
 5.01-07     68 3.68+03   3.565 *********|********|*********|*********|*****   |         |         |        |         |         |   
 7.94-07     66 2.25+03   3.352 *********|********|*********|*********|***     |         |         |        |         |         |   
 1.26-06     67 1.44+03   3.159 *********|********|*********|*********|*       |         |         |        |         |         |   
 2.00-06     90 1.22+03   3.087 *********|********|*********|*********|*       |         |         |        |         |         |   
 3.16-06     75 6.43+02   2.808 *********|********|*********|******** |        |         |         |        |         |         |   
 5.01-06    107 5.79+02   2.762 *********|********|*********|******** |        |         |         |        |         |         |   
 7.94-06    117 3.99+02   2.601 *********|********|*********|******   |        |         |         |        |         |         |   
 1.26-05    191 4.11+02   2.614 *********|********|*********|******   |        |         |         |        |         |         |   
 2.00-05    332 4.51+02   2.654 *********|********|*********|******   |        |         |         |        |         |         |   
 3.16-05    489 4.19+02   2.622 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmmmm   |        |         |         |        |         |         |   
 5.01-05    437 2.36+02   2.373 *********|********|*********|****     |        |         |         |        |         |         |   
 7.94-05    296 1.01+02   2.004 *********|********|*********|         |        |         |         |        |         |         |   
 1.26-04    165 3.55+01   1.550 *********|********|******   |     s   |        |         |         |        |         |         |   
 2.00-04     27 3.67+00   0.564 *********|*****   |        s|         |        |         |         |        |         |         |   
 3.16-04      2 1.71-01  -0.766 **       |        s         |         |        |         |         |        |         |         |   
 3.98-04      1 1.22-01  -0.913 *        s        |         |         |        |         |         |        |         |         |   
  total    2852 2.85-02         d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
1cumulative tally number for tally      215         nonzero tally mean(m) = 2.730E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.25893E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.99526E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 3.16228E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.25893E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.99526E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.16228E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.25893E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.99526E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.16228E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 5.01187E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 7.94328E-12        3    0.105|         |         |         |         |         |         |         |         |         |         |
 1.25893E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 1.99526E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 3.16228E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 5.01187E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 7.94328E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.25893E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.99526E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 3.16228E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 5.01187E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 7.94328E-10        7    0.245|         |         |         |         |         |         |         |         |         |         |
 1.25893E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 1.99526E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 3.16228E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 5.01187E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 7.94328E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.25893E-08       10    0.351|         |         |         |         |         |         |         |         |         |         |
 1.99526E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 3.16228E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 5.01187E-08       14    0.491|         |         |         |         |         |         |         |         |         |         |
 7.94328E-08      133    4.663|*****    |         |         |         |         |         |         |         |         |         |
 1.25893E-07      195    6.837|*******  |         |         |         |         |         |         |         |         |         |
 1.99526E-07      258    9.046|*********|         |         |         |         |         |         |         |         |         |
 3.16228E-07      322   11.290|*********|*        |         |         |         |         |         |         |         |         |
 5.01187E-07      390   13.675|*********|****     |         |         |         |         |         |         |         |         |
 7.94328E-07      456   15.989|*********|******   |         |         |         |         |         |         |         |         |
 1.25893E-06      523   18.338|*********|******** |         |         |         |         |         |         |         |         |
 1.99526E-06      613   21.494|*********|*********|*        |         |         |         |         |         |         |         |
 3.16228E-06      688   24.123|*********|*********|****     |         |         |         |         |         |         |         |
 5.01187E-06      795   27.875|*********|*********|******** |         |         |         |         |         |         |         |
 7.94328E-06      912   31.978|*********|*********|*********|**       |         |         |         |         |         |         |
 1.25893E-05     1103   38.675|*********|*********|*********|*********|         |         |         |         |         |         |
 1.99526E-05     1435   50.316|*********|*********|*********|*********|*********|         |         |         |         |         |
 3.16228E-05     1924   67.461|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmm  |         |         |         |
 5.01187E-05     2361   82.784|*********|*********|*********|*********|*********|*********|*********|*********|***      |         |
 7.94328E-05     2657   93.163|*********|*********|*********|*********|*********|*********|*********|*********|*********|***      |
 1.25893E-04     2822   98.948|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E-04     2849   99.895|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04     2851   99.965|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.98107E-04     2852  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2852  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      215         nonzero tally mean(m) = 2.730E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.259E-14  8.534E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-14  8.534E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-14  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-13  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-12  3.575E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-12  6.603E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-11  1.577E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-11  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-11  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-10  4.882E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-10  1.240E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-09  2.216E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-09  2.216E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-09  4.226E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.259E-08  1.473E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 1.995E-08  4.861E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.162E-08  4.861E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 5.012E-08  1.211E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 7.943E-08  9.364E-11    0.012|         |         |         |         |         |         |         |         |         |         |
 1.259E-07  1.537E-10    0.020|         |         |         |         |         |         |         |         |         |         |
 1.995E-07  2.565E-10    0.033|         |         |         |         |         |         |         |         |         |         |
 3.162E-07  4.176E-10    0.054|         |         |         |         |         |         |         |         |         |         |
 5.012E-07  6.861E-10    0.088|         |         |         |         |         |         |         |         |         |         |
 7.943E-07  1.117E-09    0.143|         |         |         |         |         |         |         |         |         |         |
 1.259E-06  1.791E-09    0.230|         |         |         |         |         |         |         |         |         |         |
 1.995E-06  3.237E-09    0.416|         |         |         |         |         |         |         |         |         |         |
 3.162E-06  5.181E-09    0.665|*        |         |         |         |         |         |         |         |         |         |
 5.012E-06  9.633E-09    1.237|*        |         |         |         |         |         |         |         |         |         |
 7.943E-06  1.734E-08    2.227|**       |         |         |         |         |         |         |         |         |         |
 1.259E-05  3.684E-08    4.730|*****    |         |         |         |         |         |         |         |         |         |
 1.995E-05  9.103E-08   11.690|*********|**       |         |         |         |         |         |         |         |         |
 3.162E-05  2.149E-07   27.591|mmmmmmmmm|mmmmmmmmm|mmmmmmmm |         |         |         |         |         |         |         |
 5.012E-05  3.870E-07   49.693|*********|*********|*********|*********|*********|         |         |         |         |         |
 7.943E-05  5.704E-07   73.254|*********|*********|*********|*********|*********|*********|*********|***      |         |         |
 1.259E-04  7.332E-07   94.156|*********|*********|*********|*********|*********|*********|*********|*********|*********|****     |
 1.995E-04  7.698E-07   98.859|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-04  7.752E-07   99.546|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.981E-04  7.787E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.78730E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally      225        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 5.00000E+00
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.67910E-09 0.2673
    1.9814E-03   2.14607E-09 0.2433
    2.4720E-03   3.59616E-10 0.7018
    2.9627E-03   6.86691E-10 0.4261
    3.4534E-03   1.53260E-09 0.4431
    3.9441E-03   1.98733E-09 0.3059
    4.4348E-03   3.32514E-09 0.2984
    4.9255E-03   5.14265E-09 0.1583
    5.4161E-03   4.61266E-09 0.1507
    5.9068E-03   9.87884E-09 0.1972
    6.3975E-03   8.74246E-09 0.1532
    6.8882E-03   1.50982E-08 0.1191
    7.3789E-03   1.10912E-08 0.1500
    7.8696E-03   1.66486E-08 0.1345
    8.3602E-03   2.19359E-08 0.1307
    8.8509E-03   4.59824E-08 0.0851
    9.3416E-03   1.61322E-08 0.1523
    9.8323E-03   2.30003E-08 0.1496
    1.0323E-02   1.23310E-08 0.1759
    1.0814E-02   1.26109E-08 0.1669
    1.1304E-02   9.96133E-09 0.1652
    1.1795E-02   9.78307E-09 0.1769
    1.2286E-02   7.27609E-09 0.2004
    1.2776E-02   6.85372E-09 0.1867
    1.3267E-02   6.80284E-09 0.1907
    1.3758E-02   8.23945E-09 0.1996
    1.4248E-02   8.38858E-09 0.1847
    1.4739E-02   1.14534E-08 0.1899
    1.5230E-02   1.05021E-08 0.1849
    1.5720E-02   1.06667E-08 0.2024
    1.6211E-02   8.32476E-09 0.2248
    1.6702E-02   9.19040E-09 0.2334
    1.7193E-02   8.86351E-09 0.2128
    1.7683E-02   1.00583E-08 0.2318
    1.8174E-02   7.87771E-09 0.2280
    1.8665E-02   9.06873E-09 0.2245
    1.9155E-02   8.10456E-09 0.2317
    1.9646E-02   1.63341E-08 0.1978
    2.0137E-02   9.03710E-09 0.2249
    2.0627E-02   5.25478E-09 0.2796
    2.1118E-02   1.00864E-08 0.3540
    2.1609E-02   6.34474E-09 0.2879
    2.2099E-02   7.14720E-09 0.2863
    2.2590E-02   8.85842E-09 0.2646
    2.3081E-02   5.11646E-09 0.2960
    2.3571E-02   7.32826E-09 0.2660
    2.4062E-02   4.16689E-09 0.3126
    2.4553E-02   4.73471E-09 0.3600
    2.5043E-02   1.05550E-08 0.2464
    2.5534E-02   6.68794E-09 0.3159
    2.6025E-02   5.12695E-09 0.3462
    2.6516E-02   6.78657E-09 0.3264
    2.7006E-02   6.81289E-09 0.2756
    2.7497E-02   6.72539E-09 0.3435
    2.7988E-02   6.20678E-09 0.3125
    2.8478E-02   4.08261E-09 0.4107
    2.8969E-02   1.04507E-08 0.2641
    2.9460E-02   3.05654E-09 0.3963
    2.9950E-02   6.55462E-09 0.3462
    3.0441E-02   8.85657E-09 0.2813
    3.0932E-02   9.49514E-09 0.3565
    3.1422E-02   7.42225E-09 0.2975
    3.1913E-02   4.14341E-09 0.3787
    3.2404E-02   6.93508E-09 0.3128
    3.2894E-02   5.14317E-09 0.3794
    3.3385E-02   7.77032E-09 0.2926
    3.3876E-02   1.31877E-09 0.6390
    3.4366E-02   3.30592E-09 0.4822
    3.4857E-02   4.96816E-09 0.3749
    3.5348E-02   3.89928E-09 0.3508
    3.5839E-02   2.07028E-09 0.5823
    3.6329E-02   5.66254E-09 0.3688
    3.6820E-02   4.24558E-09 0.4383
    3.7311E-02   3.52241E-09 0.4526
    3.7801E-02   4.43619E-09 0.3560
    3.8292E-02   1.14933E-09 0.4514
    3.8783E-02   3.27154E-09 0.4950
    3.9273E-02   3.07476E-09 0.4663
    3.9764E-02   3.89648E-09 0.4239
    4.0255E-02   4.40454E-09 0.3632
    4.0745E-02   1.98498E-09 0.6513
    4.1236E-02   2.80767E-09 0.5518
    4.1727E-02   2.78361E-09 0.5350
    4.2217E-02   3.45904E-09 0.4385
    4.2708E-02   4.05276E-09 0.4310
    4.3199E-02   5.44818E-09 0.4225
    4.3689E-02   5.18150E-10 0.7083
    4.4180E-02   5.91391E-09 0.4202
    4.4671E-02   4.30608E-09 0.3917
    4.5161E-02   1.90012E-09 0.6230
    4.5652E-02   2.06480E-09 0.6536
    4.6143E-02   6.26696E-09 0.3999
    4.6634E-02   1.20502E-09 0.6181
    4.7124E-02   1.55377E-09 0.5367
    4.7615E-02   3.08418E-09 0.5134
    4.8106E-02   2.35908E-10 1.0000
    4.8596E-02   2.26242E-09 0.6169
    4.9087E-02   3.16784E-09 0.4728
    4.9578E-02   2.40879E-09 0.4652
    5.0068E-02   4.10066E-09 0.3942
    5.0559E-02   1.29894E-09 0.5330
    5.1050E-02   3.37742E-09 0.5539
    5.1540E-02   3.39989E-10 1.0000
    5.2031E-02   2.78805E-09 0.6566
    5.2522E-02   1.99727E-09 0.5381
    5.3012E-02   2.51192E-09 0.4782
    5.3503E-02   1.41329E-09 0.6308
    5.3994E-02   1.84320E-09 0.5395
    5.4484E-02   1.41261E-09 0.7211
    5.4975E-02   1.02693E-09 0.7795
    5.5466E-02   4.64303E-09 0.4249
    5.5957E-02   1.60725E-09 0.7452
    5.6447E-02   2.15315E-09 0.5892
    5.6938E-02   2.17634E-09 0.5432
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.82825E-09 0.6519
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.02423E-09 0.7135
    5.9391E-02   1.72534E-09 0.6278
    5.9882E-02   1.98969E-09 0.6187
    6.0373E-02   1.18705E-09 0.7109
    6.0863E-02   3.06072E-09 0.5208
    6.1354E-02   2.44949E-09 0.7075
    6.1845E-02   1.73776E-09 0.6321
    6.2335E-02   1.62033E-09 0.7525
    6.2826E-02   1.41075E-09 0.7739
    6.3317E-02   2.13979E-09 0.7114
    6.3807E-02   2.33671E-09 0.5350
    6.4298E-02   1.40696E-09 1.0000
    6.4789E-02   2.62326E-09 0.6054
    6.5280E-02   2.33342E-09 0.6432
    6.5770E-02   1.50563E-09 0.8239
    6.6261E-02   1.60952E-09 0.7137
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.81372E-09 0.6205
    6.7733E-02   1.75785E-09 0.7760
    6.8224E-02   7.16662E-10 1.0000
    6.8714E-02   2.97422E-09 0.6017
    6.9205E-02   7.68544E-10 1.0000
    6.9696E-02   1.36765E-09 1.0000
    7.0186E-02   1.67119E-09 0.7235
    7.0677E-02   4.65038E-10 0.7231
    7.1168E-02   6.99724E-10 0.5793
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.23069E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.44062E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24779E-09 1.0000
    7.7547E-02   1.10542E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.61951E-07 0.0274
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 5.00000E+00
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.67910E-09 0.2673
    1.9814E-03   2.13123E-09 0.2449
    2.4720E-03   3.59616E-10 0.7018
    2.9627E-03   6.86691E-10 0.4261
    3.4534E-03   1.53260E-09 0.4431
    3.9441E-03   1.98512E-09 0.3062
    4.4348E-03   3.32514E-09 0.2984
    4.9255E-03   5.03043E-09 0.1594
    5.4161E-03   4.48738E-09 0.1531
    5.9068E-03   8.67689E-09 0.1688
    6.3975E-03   8.67016E-09 0.1537
    6.8882E-03   1.46433E-08 0.1185
    7.3789E-03   1.09957E-08 0.1505
    7.8696E-03   1.61581E-08 0.1345
    8.3602E-03   2.17087E-08 0.1313
    8.8509E-03   1.92162E-08 0.1426
    9.3416E-03   1.50563E-08 0.1472
    9.8323E-03   2.19399E-08 0.1506
    1.0323E-02   1.23310E-08 0.1759
    1.0814E-02   1.26109E-08 0.1669
    1.1304E-02   9.96133E-09 0.1652
    1.1795E-02   9.78307E-09 0.1769
    1.2286E-02   7.27609E-09 0.2004
    1.2776E-02   6.85372E-09 0.1867
    1.3267E-02   6.80284E-09 0.1907
    1.3758E-02   8.16972E-09 0.1981
    1.4248E-02   8.38858E-09 0.1847
    1.4739E-02   1.13612E-08 0.1909
    1.5230E-02   1.05021E-08 0.1849
    1.5720E-02   1.03108E-08 0.1996
    1.6211E-02   7.96908E-09 0.2205
    1.6702E-02   8.92468E-09 0.2331
    1.7193E-02   8.86351E-09 0.2128
    1.7683E-02   9.47262E-09 0.2360
    1.8174E-02   7.87771E-09 0.2280
    1.8665E-02   9.06873E-09 0.2245
    1.9155E-02   8.10456E-09 0.2317
    1.9646E-02   1.63341E-08 0.1978
    2.0137E-02   9.03710E-09 0.2249
    2.0627E-02   5.25478E-09 0.2796
    2.1118E-02   7.62547E-09 0.2591
    2.1609E-02   6.34474E-09 0.2879
    2.2099E-02   7.14720E-09 0.2863
    2.2590E-02   8.85842E-09 0.2646
    2.3081E-02   5.11646E-09 0.2960
    2.3571E-02   7.12399E-09 0.2679
    2.4062E-02   4.16689E-09 0.3126
    2.4553E-02   4.73471E-09 0.3600
    2.5043E-02   1.05550E-08 0.2464
    2.5534E-02   6.42560E-09 0.3195
    2.6025E-02   5.12695E-09 0.3462
    2.6516E-02   6.78657E-09 0.3264
    2.7006E-02   6.81289E-09 0.2756
    2.7497E-02   6.72539E-09 0.3435
    2.7988E-02   6.20678E-09 0.3125
    2.8478E-02   4.08261E-09 0.4107
    2.8969E-02   1.04507E-08 0.2641
    2.9460E-02   3.05654E-09 0.3963
    2.9950E-02   6.55462E-09 0.3462
    3.0441E-02   8.85657E-09 0.2813
    3.0932E-02   6.60272E-09 0.3089
    3.1422E-02   7.42225E-09 0.2975
    3.1913E-02   4.14341E-09 0.3787
    3.2404E-02   6.93508E-09 0.3128
    3.2894E-02   5.14317E-09 0.3794
    3.3385E-02   7.77032E-09 0.2926
    3.3876E-02   1.31877E-09 0.6390
    3.4366E-02   3.30592E-09 0.4822
    3.4857E-02   4.96816E-09 0.3749
    3.5348E-02   3.89928E-09 0.3508
    3.5839E-02   2.07028E-09 0.5823
    3.6329E-02   5.66254E-09 0.3688
    3.6820E-02   4.24558E-09 0.4383
    3.7311E-02   3.52241E-09 0.4526
    3.7801E-02   4.43619E-09 0.3560
    3.8292E-02   1.14933E-09 0.4514
    3.8783E-02   3.27154E-09 0.4950
    3.9273E-02   3.07476E-09 0.4663
    3.9764E-02   3.89648E-09 0.4239
    4.0255E-02   4.40454E-09 0.3632
    4.0745E-02   1.98498E-09 0.6513
    4.1236E-02   2.80767E-09 0.5518
    4.1727E-02   2.78361E-09 0.5350
    4.2217E-02   3.45904E-09 0.4385
    4.2708E-02   4.05276E-09 0.4310
    4.3199E-02   5.33219E-09 0.4209
    4.3689E-02   5.18150E-10 0.7083
    4.4180E-02   5.91391E-09 0.4202
    4.4671E-02   4.30608E-09 0.3917
    4.5161E-02   1.90012E-09 0.6230
    4.5652E-02   2.06480E-09 0.6536
    4.6143E-02   6.26696E-09 0.3999
    4.6634E-02   1.20502E-09 0.6181
    4.7124E-02   1.55377E-09 0.5367
    4.7615E-02   3.08418E-09 0.5134
    4.8106E-02   2.35908E-10 1.0000
    4.8596E-02   2.26242E-09 0.6169
    4.9087E-02   3.16784E-09 0.4728
    4.9578E-02   2.40879E-09 0.4652
    5.0068E-02   4.10066E-09 0.3942
    5.0559E-02   1.29894E-09 0.5330
    5.1050E-02   3.37742E-09 0.5539
    5.1540E-02   3.39989E-10 1.0000
    5.2031E-02   2.78805E-09 0.6566
    5.2522E-02   1.99727E-09 0.5381
    5.3012E-02   2.51192E-09 0.4782
    5.3503E-02   1.41329E-09 0.6308
    5.3994E-02   1.84320E-09 0.5395
    5.4484E-02   1.41261E-09 0.7211
    5.4975E-02   1.02693E-09 0.7795
    5.5466E-02   4.64303E-09 0.4249
    5.5957E-02   1.60725E-09 0.7452
    5.6447E-02   2.15315E-09 0.5892
    5.6938E-02   2.17634E-09 0.5432
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.82825E-09 0.6519
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.02423E-09 0.7135
    5.9391E-02   1.72534E-09 0.6278
    5.9882E-02   1.02449E-09 1.0000
    6.0373E-02   1.18705E-09 0.7109
    6.0863E-02   3.06072E-09 0.5208
    6.1354E-02   2.44949E-09 0.7075
    6.1845E-02   1.73776E-09 0.6321
    6.2335E-02   1.62033E-09 0.7525
    6.2826E-02   1.41075E-09 0.7739
    6.3317E-02   2.13979E-09 0.7114
    6.3807E-02   2.33671E-09 0.5350
    6.4298E-02   1.40696E-09 1.0000
    6.4789E-02   2.62326E-09 0.6054
    6.5280E-02   2.33342E-09 0.6432
    6.5770E-02   1.50563E-09 0.8239
    6.6261E-02   1.60952E-09 0.7137
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.81372E-09 0.6205
    6.7733E-02   1.27621E-09 1.0000
    6.8224E-02   7.16662E-10 1.0000
    6.8714E-02   2.97422E-09 0.6017
    6.9205E-02   7.68544E-10 1.0000
    6.9696E-02   1.36765E-09 1.0000
    7.0186E-02   1.67119E-09 0.7235
    7.0677E-02   4.65038E-10 0.7231
    7.1168E-02   6.99724E-10 0.5793
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.23069E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.44062E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24779E-09 1.0000
    7.7547E-02   1.10542E-09 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.21145E-07 0.0272
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                139         0.04575        1.06513E-10        0.00014
        1.00000E+00                325         0.15273        1.01532E-09        0.00147
        2.00000E+00                112         0.18960        1.26782E-09        0.00314
        5.00000E+00                163         0.24325        4.13983E-09        0.00857
        1.00000E+01                191         0.30612        1.09287E-08        0.02291
        1.00000E+02               1881         0.92528        5.54540E-07        0.75070
        1.00000E+03                182         0.98519        1.83071E-07        0.99097
        1.00000E+38                  0         0.98519        0.00000E+00        0.99097
 before dd roulette                 45         1.00000        6.88147E-09        1.00000

 average tally per history = 7.61951E-07            largest score = 2.46089E-04
 (largest score)/(average tally) = 3.22972E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1168        3038       7.61951E-07         2.50807E-05
       total        1168        3038       7.61951E-07         2.50807E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1168
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      225

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random      10.00
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 7.4146E-07 to 7.8327E-07; 7.2055E-07 to 8.0418E-07; 6.9964E-07 to 8.2509E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 7.4105E-07 to 7.8285E-07; 7.2016E-07 to 8.0374E-07; 6.9926E-07 to 8.2464E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      225 with nps =      100000  print table 160


 normed average tally per history  = 7.61951E-07          unnormed average tally per history  = 7.61951E-07
 estimated tally relative error    = 0.0274               estimated variance of the variance  = 0.0022
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0203

 number of nonzero history tallies =        2850          efficiency for the nonzero tallies  = 0.0285
 history number of largest  tally  =        7279          largest  unnormalized history tally = 3.02783E-04
 (largest  tally)/(average tally)  = 3.97378E+02          (largest  tally)/(avg nonzero tally)= 1.13253E+01

 (confidence interval shift)/mean  = 0.0005               shifted confidence interval center  = 7.62367E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.61951E-07             7.64972E-07                     0.003964
      relative error                  2.74253E-02             2.76006E-02                     0.006391
      variance of the variance        2.15362E-03             2.48442E-03                     0.153602
      shifted center                  7.62367E-07             7.62389E-07                     0.000029
      figure of merit                 7.67276E+01             7.57562E+01                    -0.012661

 the estimated slope of the 142 largest  tallies starting at  8.97206E-05 appears to be decreasing at least exponentially.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.153E-01)**2 = (5.771E+03)*(1.330E-02) = 7.673E+01

1unnormed tally density for tally      225          nonzero tally mean(m) = 2.674E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope=10.0)
  tally  number num den log den:d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
 1.00-14      1 2.71+09   9.433 *********|********|*********|*********|********|*********|*********|********|*********|*********|***
 1.58-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-14      1 1.08+09   9.033 *********|********|*********|*********|********|*********|*********|********|*********|*********|   
 3.98-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-14      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-13      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-12      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-12      1 4.29+06   6.633 *********|********|*********|*********|********|*********|*********|*****   |         |         |   
 1.00-11      1 2.71+06   6.433 *********|********|*********|*********|********|*********|*********|***     |         |         |   
 1.58-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-11      1 6.81+05   5.833 *********|********|*********|*********|********|*********|*******  |        |         |         |   
 6.31-11      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 3.98-10      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-10      2 8.59+04   4.934 *********|********|*********|*********|********|*********|         |        |         |         |   
 1.00-09      1 2.71+04   4.433 *********|********|*********|*********|********|****     |         |        |         |         |   
 1.58-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 2.51-09      1 1.08+04   4.033 *********|********|*********|*********|********|         |         |        |         |         |   
 3.98-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 6.31-09      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.00-08      0 0.00+00   0.000          |        |         |         |        |         |         |        |         |         |   
 1.58-08      2 3.42+03   3.534 *********|********|*********|*********|****    |         |         |        |         |         |   
 2.51-08      1 1.08+03   3.033 *********|********|*********|*********|        |         |         |        |         |         |   
 3.98-08      1 6.81+02   2.833 *********|********|*********|*******  |        |         |         |        |         |         |   
 6.31-08      1 4.29+02   2.633 *********|********|*********|*****    |        |         |         |        |         |         |   
 1.00-07    164 4.44+04   4.648 *********|********|*********|*********|********|******   |         |        |         |         |   
 1.58-07     52 8.89+03   3.949 *********|********|*********|*********|********|         |         |        |         |         |   
 2.51-07     66 7.12+03   3.852 *********|********|*********|*********|******* |         |         |        |         |         |   
 3.98-07     71 4.83+03   3.684 *********|********|*********|*********|*****   |         |         |        |         |         |   
 6.31-07     57 2.45+03   3.389 *********|********|*********|*********|***     |         |         |        |         |         |   
 1.00-06     70 1.90+03   3.278 *********|********|*********|*********|**      |         |         |        |         |         |   
 1.58-06     79 1.35+03   3.131 *********|********|*********|*********|        |         |         |        |         |         |   
 2.51-06     84 9.06+02   2.957 *********|********|*********|******** |        |         |         |        |         |         |   
 3.98-06     84 5.72+02   2.757 *********|********|*********|******   |        |         |         |        |         |         |   
 6.31-06    110 4.72+02   2.674 *********|********|*********|******   |        |         |         |        |         |         |   
 1.00-05    156 4.23+02   2.626 *********|********|*********|*****    |        |         |         |        |         |         |   
 1.58-05    251 4.29+02   2.633 *********|********|*********|*****    |        |         |         |        |         |         |   
 2.51-05    444 4.79+02   2.680 *********|********|*********|******   |        |         |         |        |         |         |   
 3.98-05    482 3.28+02   2.516 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mmmm     |        |         |         |        |         |         |   
 6.31-05    348 1.49+02   2.175 *********|********|*********|*        |        |         |         |        |         |         |   
 1.00-04    221 5.99+01   1.777 *********|********|*******  |         |        |         |         |        |         |         |   
 1.58-04     93 1.59+01   1.201 *********|********|*        |         |        |         |         |        |         |         |   
 2.51-04      3 3.24-01  -0.490 ****     |        |         |         |        |         |         |        |         |         |   
 3.16-04      1 1.54-01  -0.813 *        |        |         |         |        |         |         |        |         |         |   
  total    2850 2.85-02         d--------d--------d---------d---------d--------d---------d---------d--------d---------d---------d---
1cumulative tally number for tally      225         nonzero tally mean(m) = 2.674E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.00000E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.58489E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 2.51189E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-12        3    0.105|         |         |         |         |         |         |         |         |         |         |
 1.00000E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 1.58489E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 2.51189E-11        4    0.140|         |         |         |         |         |         |         |         |         |         |
 3.98107E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 6.30957E-11        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.00000E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 1.58489E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 2.51189E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 3.98107E-10        5    0.175|         |         |         |         |         |         |         |         |         |         |
 6.30957E-10        7    0.246|         |         |         |         |         |         |         |         |         |         |
 1.00000E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 1.58489E-09        8    0.281|         |         |         |         |         |         |         |         |         |         |
 2.51189E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 3.98107E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 6.30957E-09        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.00000E-08        9    0.316|         |         |         |         |         |         |         |         |         |         |
 1.58489E-08       11    0.386|         |         |         |         |         |         |         |         |         |         |
 2.51189E-08       12    0.421|         |         |         |         |         |         |         |         |         |         |
 3.98107E-08       13    0.456|         |         |         |         |         |         |         |         |         |         |
 6.30957E-08       14    0.491|         |         |         |         |         |         |         |         |         |         |
 1.00000E-07      178    6.246|******   |         |         |         |         |         |         |         |         |         |
 1.58489E-07      230    8.070|******** |         |         |         |         |         |         |         |         |         |
 2.51189E-07      296   10.386|*********|         |         |         |         |         |         |         |         |         |
 3.98107E-07      367   12.877|*********|***      |         |         |         |         |         |         |         |         |
 6.30957E-07      424   14.877|*********|*****    |         |         |         |         |         |         |         |         |
 1.00000E-06      494   17.333|*********|*******  |         |         |         |         |         |         |         |         |
 1.58489E-06      573   20.105|*********|*********|         |         |         |         |         |         |         |         |
 2.51189E-06      657   23.053|*********|*********|***      |         |         |         |         |         |         |         |
 3.98107E-06      741   26.000|*********|*********|******   |         |         |         |         |         |         |         |
 6.30957E-06      851   29.860|*********|*********|*********|         |         |         |         |         |         |         |
 1.00000E-05     1007   35.333|*********|*********|*********|*****    |         |         |         |         |         |         |
 1.58489E-05     1258   44.140|*********|*********|*********|*********|****     |         |         |         |         |         |
 2.51189E-05     1702   59.719|*********|*********|*********|*********|*********|*********|         |         |         |         |
 3.98107E-05     2184   76.632|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmm  |         |         |
 6.30957E-05     2532   88.842|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.00000E-04     2753   96.596|*********|*********|*********|*********|*********|*********|*********|*********|*********|*******  |
 1.58489E-04     2846   99.860|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04     2849   99.965|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.16228E-04     2850  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2850  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      225         nonzero tally mean(m) = 2.674E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.000E-14  7.587E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-14  7.587E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-14  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-13  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-12  2.810E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-12  5.516E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-11  1.418E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-11  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-11  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-10  4.722E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-10  1.129E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-09  2.114E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-09  2.114E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-09  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-08  3.790E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-08  2.910E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-08  4.619E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-08  8.058E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-08  1.209E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-07  1.299E-10    0.017|         |         |         |         |         |         |         |         |         |         |
 1.585E-07  1.971E-10    0.026|         |         |         |         |         |         |         |         |         |         |
 2.512E-07  3.302E-10    0.043|         |         |         |         |         |         |         |         |         |         |
 3.981E-07  5.574E-10    0.073|         |         |         |         |         |         |         |         |         |         |
 6.310E-07  8.491E-10    0.111|         |         |         |         |         |         |         |         |         |         |
 1.000E-06  1.408E-09    0.185|         |         |         |         |         |         |         |         |         |         |
 1.585E-06  2.434E-09    0.319|         |         |         |         |         |         |         |         |         |         |
 2.512E-06  4.126E-09    0.541|*        |         |         |         |         |         |         |         |         |         |
 3.981E-06  6.925E-09    0.909|*        |         |         |         |         |         |         |         |         |         |
 6.310E-06  1.249E-08    1.639|**       |         |         |         |         |         |         |         |         |         |
 1.000E-05  2.524E-08    3.312|***      |         |         |         |         |         |         |         |         |         |
 1.585E-05  5.788E-08    7.597|******** |         |         |         |         |         |         |         |         |         |
 2.512E-05  1.490E-07   19.560|*********|*********|         |         |         |         |         |         |         |         |
 3.981E-05  3.020E-07   39.630|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|         |         |         |         |         |         |
 6.310E-05  4.733E-07   62.113|*********|*********|*********|*********|*********|*********|**       |         |         |         |
 1.000E-04  6.460E-07   84.781|*********|*********|*********|*********|*********|*********|*********|*********|*****    |         |
 1.585E-04  7.534E-07   98.880|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-04  7.589E-07   99.603|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 3.162E-04  7.620E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.61951E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally      235        nps =      100000
           tally type 5    particle flux at a point detector.           units   1/cm**2        
           particle(s): photons  
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 1.00000E+01
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.43279E-09 0.2704
    1.9814E-03   1.98181E-09 0.2497
    2.4720E-03   3.31875E-10 0.7019
    2.9627E-03   6.26653E-10 0.4274
    3.4534E-03   1.39308E-09 0.4434
    3.9441E-03   1.84966E-09 0.3187
    4.4348E-03   3.10052E-09 0.3051
    4.9255E-03   4.69030E-09 0.1622
    5.4161E-03   4.18231E-09 0.1524
    5.9068E-03   8.98133E-09 0.1978
    6.3975E-03   8.19818E-09 0.1572
    6.8882E-03   1.38741E-08 0.1191
    7.3789E-03   1.03490E-08 0.1497
    7.8696E-03   1.55129E-08 0.1353
    8.3602E-03   2.05886E-08 0.1316
    8.8509E-03   4.35807E-08 0.0852
    9.3416E-03   1.54578E-08 0.1548
    9.8323E-03   2.18322E-08 0.1502
    1.0323E-02   1.17354E-08 0.1762
    1.0814E-02   1.17478E-08 0.1661
    1.1304E-02   9.34672E-09 0.1661
    1.1795E-02   8.97087E-09 0.1769
    1.2286E-02   6.66971E-09 0.1991
    1.2776E-02   6.32338E-09 0.1875
    1.3267E-02   6.29710E-09 0.1917
    1.3758E-02   7.77754E-09 0.2006
    1.4248E-02   7.91565E-09 0.1843
    1.4739E-02   1.07281E-08 0.1902
    1.5230E-02   9.75242E-09 0.1841
    1.5720E-02   9.99547E-09 0.2048
    1.6211E-02   7.88525E-09 0.2268
    1.6702E-02   8.46841E-09 0.2325
    1.7193E-02   8.37487E-09 0.2129
    1.7683E-02   9.41328E-09 0.2323
    1.8174E-02   7.47595E-09 0.2285
    1.8665E-02   8.65167E-09 0.2239
    1.9155E-02   7.75669E-09 0.2328
    1.9646E-02   1.54129E-08 0.1979
    2.0137E-02   8.70000E-09 0.2270
    2.0627E-02   4.98439E-09 0.2792
    2.1118E-02   9.12371E-09 0.3304
    2.1609E-02   5.88950E-09 0.2848
    2.2099E-02   6.66823E-09 0.2851
    2.2590E-02   8.52075E-09 0.2646
    2.3081E-02   4.89459E-09 0.2960
    2.3571E-02   6.89114E-09 0.2624
    2.4062E-02   3.90827E-09 0.3125
    2.4553E-02   4.43348E-09 0.3639
    2.5043E-02   9.81231E-09 0.2449
    2.5534E-02   6.23882E-09 0.3122
    2.6025E-02   4.78050E-09 0.3448
    2.6516E-02   6.57414E-09 0.3240
    2.7006E-02   6.23683E-09 0.2736
    2.7497E-02   6.27253E-09 0.3403
    2.7988E-02   5.74137E-09 0.3160
    2.8478E-02   3.90320E-09 0.4070
    2.8969E-02   1.01313E-08 0.2646
    2.9460E-02   2.96605E-09 0.3962
    2.9950E-02   6.17435E-09 0.3499
    3.0441E-02   8.33221E-09 0.2789
    3.0932E-02   8.15555E-09 0.3375
    3.1422E-02   7.00764E-09 0.2953
    3.1913E-02   4.00272E-09 0.3737
    3.2404E-02   6.68160E-09 0.3111
    3.2894E-02   4.60817E-09 0.3837
    3.3385E-02   7.26966E-09 0.2919
    3.3876E-02   1.34509E-09 0.6382
    3.4366E-02   3.14514E-09 0.4828
    3.4857E-02   4.68501E-09 0.3773
    3.5348E-02   3.94409E-09 0.3577
    3.5839E-02   1.95713E-09 0.5787
    3.6329E-02   5.42042E-09 0.3701
    3.6820E-02   4.03600E-09 0.4381
    3.7311E-02   3.36223E-09 0.4461
    3.7801E-02   4.23239E-09 0.3633
    3.8292E-02   1.07918E-09 0.4508
    3.8783E-02   3.17813E-09 0.4951
    3.9273E-02   2.81930E-09 0.4628
    3.9764E-02   3.47599E-09 0.4189
    4.0255E-02   4.11558E-09 0.3685
    4.0745E-02   1.77476E-09 0.6441
    4.1236E-02   2.68632E-09 0.5483
    4.1727E-02   2.65552E-09 0.5353
    4.2217E-02   3.49085E-09 0.4400
    4.2708E-02   4.12671E-09 0.4310
    4.3199E-02   5.34437E-09 0.4234
    4.3689E-02   4.80218E-10 0.7099
    4.4180E-02   5.53765E-09 0.4224
    4.4671E-02   4.06241E-09 0.3889
    4.5161E-02   1.94516E-09 0.6339
    4.5652E-02   1.76173E-09 0.6463
    4.6143E-02   5.89172E-09 0.3982
    4.6634E-02   1.23177E-09 0.6188
    4.7124E-02   1.53301E-09 0.5325
    4.7615E-02   3.11873E-09 0.5191
    4.8106E-02   2.11639E-10 1.0000
    4.8596E-02   2.23141E-09 0.6167
    4.9087E-02   2.91309E-09 0.4711
    4.9578E-02   2.31490E-09 0.4684
    5.0068E-02   3.99429E-09 0.3982
    5.0559E-02   1.22937E-09 0.5303
    5.1050E-02   3.25012E-09 0.5502
    5.1540E-02   2.92379E-10 1.0000
    5.2031E-02   2.51085E-09 0.6552
    5.2522E-02   1.90707E-09 0.5320
    5.3012E-02   2.59766E-09 0.4888
    5.3503E-02   1.50854E-09 0.6355
    5.3994E-02   1.74484E-09 0.5566
    5.4484E-02   1.37601E-09 0.7115
    5.4975E-02   9.94149E-10 0.7946
    5.5466E-02   4.17154E-09 0.4264
    5.5957E-02   1.54364E-09 0.7290
    5.6447E-02   1.92333E-09 0.5861
    5.6938E-02   2.20464E-09 0.5375
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.60164E-09 0.6492
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.06060E-09 0.7191
    5.9391E-02   1.68661E-09 0.6378
    5.9882E-02   1.84629E-09 0.6126
    6.0373E-02   1.13911E-09 0.7137
    6.0863E-02   2.89118E-09 0.5248
    6.1354E-02   2.32510E-09 0.7110
    6.1845E-02   1.56815E-09 0.6368
    6.2335E-02   1.54929E-09 0.7522
    6.2826E-02   1.23601E-09 0.7663
    6.3317E-02   1.97428E-09 0.7093
    6.3807E-02   2.20325E-09 0.5193
    6.4298E-02   1.28563E-09 1.0000
    6.4789E-02   2.33828E-09 0.6083
    6.5280E-02   2.23863E-09 0.6506
    6.5770E-02   1.40395E-09 0.8055
    6.6261E-02   1.62256E-09 0.7089
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.64172E-09 0.6274
    6.7733E-02   1.63254E-09 0.7714
    6.8224E-02   6.29632E-10 1.0000
    6.8714E-02   2.74489E-09 0.6087
    6.9205E-02   7.54956E-10 1.0000
    6.9696E-02   1.26848E-09 1.0000
    7.0186E-02   1.75915E-09 0.7197
    7.0677E-02   4.68779E-10 0.7329
    7.1168E-02   6.71986E-10 0.5782
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.09600E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.50379E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24811E-09 1.0000
    7.7547E-02   9.84119E-10 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      7.17043E-07 0.0274
 
 detector located at x,y,z = 0.00000E+00 4.00000E+01 1.00000E+01
 uncollided photon flux
      energy   
    0.0000E+00   0.00000E+00 0.0000
    1.0000E-05   0.00000E+00 0.0000
    1.0000E-03   0.00000E+00 0.0000
    1.4907E-03   3.43207E-09 0.2704
    1.9814E-03   1.96925E-09 0.2511
    2.4720E-03   3.31875E-10 0.7019
    2.9627E-03   6.26653E-10 0.4274
    3.4534E-03   1.39236E-09 0.4436
    3.9441E-03   1.84768E-09 0.3191
    4.4348E-03   3.10052E-09 0.3051
    4.9255E-03   4.58088E-09 0.1633
    5.4161E-03   4.06510E-09 0.1548
    5.9068E-03   7.90529E-09 0.1719
    6.3975E-03   8.13269E-09 0.1578
    6.8882E-03   1.34935E-08 0.1187
    7.3789E-03   1.02644E-08 0.1502
    7.8696E-03   1.50518E-08 0.1354
    8.3602E-03   2.03379E-08 0.1323
    8.8509E-03   1.82839E-08 0.1424
    9.3416E-03   1.43051E-08 0.1470
    9.8323E-03   2.09468E-08 0.1514
    1.0323E-02   1.17354E-08 0.1762
    1.0814E-02   1.17478E-08 0.1661
    1.1304E-02   9.34672E-09 0.1661
    1.1795E-02   8.97087E-09 0.1769
    1.2286E-02   6.66971E-09 0.1991
    1.2776E-02   6.32338E-09 0.1875
    1.3267E-02   6.29710E-09 0.1917
    1.3758E-02   7.71470E-09 0.1991
    1.4248E-02   7.91565E-09 0.1843
    1.4739E-02   1.06391E-08 0.1912
    1.5230E-02   9.75242E-09 0.1841
    1.5720E-02   9.57648E-09 0.2008
    1.6211E-02   7.55255E-09 0.2215
    1.6702E-02   8.24314E-09 0.2324
    1.7193E-02   8.37487E-09 0.2129
    1.7683E-02   8.86691E-09 0.2361
    1.8174E-02   7.47595E-09 0.2285
    1.8665E-02   8.65167E-09 0.2239
    1.9155E-02   7.75669E-09 0.2328
    1.9646E-02   1.54129E-08 0.1979
    2.0137E-02   8.70000E-09 0.2270
    2.0627E-02   4.98439E-09 0.2792
    2.1118E-02   7.25060E-09 0.2642
    2.1609E-02   5.88950E-09 0.2848
    2.2099E-02   6.66823E-09 0.2851
    2.2590E-02   8.52075E-09 0.2646
    2.3081E-02   4.89459E-09 0.2960
    2.3571E-02   6.66429E-09 0.2638
    2.4062E-02   3.90827E-09 0.3125
    2.4553E-02   4.43348E-09 0.3639
    2.5043E-02   9.81231E-09 0.2449
    2.5534E-02   5.91142E-09 0.3141
    2.6025E-02   4.78050E-09 0.3448
    2.6516E-02   6.57414E-09 0.3240
    2.7006E-02   6.23683E-09 0.2736
    2.7497E-02   6.27253E-09 0.3403
    2.7988E-02   5.74137E-09 0.3160
    2.8478E-02   3.90320E-09 0.4070
    2.8969E-02   1.01313E-08 0.2646
    2.9460E-02   2.96605E-09 0.3962
    2.9950E-02   6.17435E-09 0.3499
    3.0441E-02   8.33221E-09 0.2789
    3.0932E-02   6.27160E-09 0.3092
    3.1422E-02   7.00764E-09 0.2953
    3.1913E-02   4.00272E-09 0.3737
    3.2404E-02   6.68160E-09 0.3111
    3.2894E-02   4.60817E-09 0.3837
    3.3385E-02   7.26966E-09 0.2919
    3.3876E-02   1.34509E-09 0.6382
    3.4366E-02   3.14514E-09 0.4828
    3.4857E-02   4.68501E-09 0.3773
    3.5348E-02   3.94409E-09 0.3577
    3.5839E-02   1.95713E-09 0.5787
    3.6329E-02   5.42042E-09 0.3701
    3.6820E-02   4.03600E-09 0.4381
    3.7311E-02   3.36223E-09 0.4461
    3.7801E-02   4.23239E-09 0.3633
    3.8292E-02   1.07918E-09 0.4508
    3.8783E-02   3.17813E-09 0.4951
    3.9273E-02   2.81930E-09 0.4628
    3.9764E-02   3.47599E-09 0.4189
    4.0255E-02   4.11558E-09 0.3685
    4.0745E-02   1.77476E-09 0.6441
    4.1236E-02   2.68632E-09 0.5483
    4.1727E-02   2.65552E-09 0.5353
    4.2217E-02   3.49085E-09 0.4400
    4.2708E-02   4.12671E-09 0.4310
    4.3199E-02   5.22822E-09 0.4218
    4.3689E-02   4.80218E-10 0.7099
    4.4180E-02   5.53765E-09 0.4224
    4.4671E-02   4.06241E-09 0.3889
    4.5161E-02   1.94516E-09 0.6339
    4.5652E-02   1.76173E-09 0.6463
    4.6143E-02   5.89172E-09 0.3982
    4.6634E-02   1.23177E-09 0.6188
    4.7124E-02   1.53301E-09 0.5325
    4.7615E-02   3.11873E-09 0.5191
    4.8106E-02   2.11639E-10 1.0000
    4.8596E-02   2.23141E-09 0.6167
    4.9087E-02   2.91309E-09 0.4711
    4.9578E-02   2.31490E-09 0.4684
    5.0068E-02   3.99429E-09 0.3982
    5.0559E-02   1.22937E-09 0.5303
    5.1050E-02   3.25012E-09 0.5502
    5.1540E-02   2.92379E-10 1.0000
    5.2031E-02   2.51085E-09 0.6552
    5.2522E-02   1.90707E-09 0.5320
    5.3012E-02   2.59766E-09 0.4888
    5.3503E-02   1.50854E-09 0.6355
    5.3994E-02   1.74484E-09 0.5566
    5.4484E-02   1.37601E-09 0.7115
    5.4975E-02   9.94149E-10 0.7946
    5.5466E-02   4.17154E-09 0.4264
    5.5957E-02   1.54364E-09 0.7290
    5.6447E-02   1.92333E-09 0.5861
    5.6938E-02   2.20464E-09 0.5375
    5.7429E-02   0.00000E+00 0.0000
    5.7919E-02   1.60164E-09 0.6492
    5.8410E-02   0.00000E+00 0.0000
    5.8901E-02   1.06060E-09 0.7191
    5.9391E-02   1.68661E-09 0.6378
    5.9882E-02   9.23983E-10 1.0000
    6.0373E-02   1.13911E-09 0.7137
    6.0863E-02   2.89118E-09 0.5248
    6.1354E-02   2.32510E-09 0.7110
    6.1845E-02   1.56815E-09 0.6368
    6.2335E-02   1.54929E-09 0.7522
    6.2826E-02   1.23601E-09 0.7663
    6.3317E-02   1.97428E-09 0.7093
    6.3807E-02   2.20325E-09 0.5193
    6.4298E-02   1.28563E-09 1.0000
    6.4789E-02   2.33828E-09 0.6083
    6.5280E-02   2.23863E-09 0.6506
    6.5770E-02   1.40395E-09 0.8055
    6.6261E-02   1.62256E-09 0.7089
    6.6752E-02   0.00000E+00 0.0000
    6.7242E-02   2.64172E-09 0.6274
    6.7733E-02   1.17233E-09 1.0000
    6.8224E-02   6.29632E-10 1.0000
    6.8714E-02   2.74489E-09 0.6087
    6.9205E-02   7.54956E-10 1.0000
    6.9696E-02   1.26848E-09 1.0000
    7.0186E-02   1.75915E-09 0.7197
    7.0677E-02   4.68779E-10 0.7329
    7.1168E-02   6.71986E-10 0.5782
    7.1658E-02   0.00000E+00 0.0000
    7.2149E-02   1.09600E-09 1.0000
    7.2640E-02   0.00000E+00 0.0000
    7.3130E-02   2.50379E-10 1.0000
    7.3621E-02   0.00000E+00 0.0000
    7.4112E-02   0.00000E+00 0.0000
    7.4602E-02   0.00000E+00 0.0000
    7.5093E-02   0.00000E+00 0.0000
    7.5584E-02   0.00000E+00 0.0000
    7.6075E-02   0.00000E+00 0.0000
    7.6565E-02   0.00000E+00 0.0000
    7.7056E-02   1.24811E-09 1.0000
    7.7547E-02   9.84119E-10 1.0000
    7.8037E-02   0.00000E+00 0.0000
    7.8528E-02   0.00000E+00 0.0000
    7.9019E-02   0.00000E+00 0.0000
    7.9509E-02   0.00000E+00 0.0000
    8.0000E-02   0.00000E+00 0.0000
      total      6.79662E-07 0.0273
 
 detector score diagnostics                  cumulative          tally         cumulative
                                             fraction of         per           fraction of
   times average score     transmissions     transmissions       history       total tally
        1.00000E-01                152         0.05021        1.10157E-10        0.00015
        1.00000E+00                310         0.15263        9.10318E-10        0.00142
        2.00000E+00                119         0.19194        1.27808E-09        0.00321
        5.00000E+00                163         0.24579        4.02404E-09        0.00882
        1.00000E+01                178         0.30459        9.59127E-09        0.02219
        1.00000E+02               1870         0.92237        5.17003E-07        0.74321
        1.00000E+03                190         0.98513        1.77661E-07        0.99098
        1.00000E+38                  0         0.98513        0.00000E+00        0.99098
 before dd roulette                 45         1.00000        6.46506E-09        1.00000

 average tally per history = 7.17043E-07            largest score = 1.87311E-04
 (largest score)/(average tally) = 2.61226E+02      nps of largest score =        7279

 score contributions by cell
        cell      misses        hits    tally per history    weight per hit
     8     8        1179        3027       7.17043E-07         2.36883E-05
       total        1179        3027       7.17043E-07         2.36883E-05

 score misses
   russian roulette on pd                        0
   psc=0.                                        0
   russian roulette in transmission           1179
   underflow in transmission                     0
   hit a zero-importance cell                    0
   energy cutoff                                 0


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally      235

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.05      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random      10.00
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 6.9778E-07 to 7.3706E-07; 6.7814E-07 to 7.5670E-07; 6.5851E-07 to 7.7634E-07
 estimated  symmetric confidence interval(1,2,3 sigma): 6.9742E-07 to 7.3667E-07; 6.7779E-07 to 7.5630E-07; 6.5816E-07 to 7.7593E-07

1analysis of the results in the tally fluctuation chart bin (tfc) for tally      235 with nps =      100000  print table 160


 normed average tally per history  = 7.17043E-07          unnormed average tally per history  = 7.17043E-07
 estimated tally relative error    = 0.0274               estimated variance of the variance  = 0.0019
 relative error from zero tallies  = 0.0185               relative error from nonzero scores  = 0.0202

 number of nonzero history tallies =        2841          efficiency for the nonzero tallies  = 0.0284
 history number of largest  tally  =        7279          largest  unnormalized history tally = 2.38339E-04
 (largest  tally)/(average tally)  = 3.32391E+02          (largest  tally)/(avg nonzero tally)= 9.44324E+00

 (confidence interval shift)/mean  = 0.0005               shifted confidence interval center  = 7.17421E-07


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            7.17043E-07             7.19420E-07                     0.003314
      relative error                  2.73736E-02             2.74821E-02                     0.003964
      variance of the variance        1.87984E-03             2.03409E-03                     0.082056
      shifted center                  7.17421E-07             7.17432E-07                     0.000016
      figure of merit                 7.70178E+01             7.64108E+01                    -0.007882

 the estimated slope of the 142 largest  tallies starting at  8.38835E-05 appears to be decreasing at least exponentially.
 the large score tail of the empirical history score probability density function appears to have no unsampled regions.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.155E-01)**2 = (5.771E+03)*(1.335E-02) = 7.702E+01

1unnormed tally density for tally      235          nonzero tally mean(m) = 2.524E-05   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope=10.0)
  tally  number num den log den:d--------d--------d---------d--------d---------d---------d--------d---------d---------d--------d----
 6.31-15      1 4.29+09   9.633 *********|********|*********|********|*********|*********|********|*********|*********|********|****
 1.00-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-14      1 1.71+09   9.233 *********|********|*********|********|*********|*********|********|*********|*********|********|    
 2.51-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-14      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-13      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-12      1 6.81+06   6.833 *********|********|*********|********|*********|*********|********|******   |         |        |    
 6.31-12      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-11      1 2.71+06   6.433 *********|********|*********|********|*********|*********|********|**       |         |        |    
 1.58-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-11      1 6.81+05   5.833 *********|********|*********|********|*********|*********|*****   |         |         |        |    
 6.31-11      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.58-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 2.51-10      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-10      1 6.81+04   4.833 *********|********|*********|********|*********|******   |        |         |         |        |    
 6.31-10      1 4.29+04   4.633 *********|********|*********|********|*********|****     |        |         |         |        |    
 1.00-09      1 2.71+04   4.433 *********|********|*********|********|*********|**       |        |         |         |        |    
 1.58-09      1 1.71+04   4.233 *********|********|*********|********|*********|         |        |         |         |        |    
 2.51-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 6.31-09      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-08      1 2.71+03   3.433 *********|********|*********|********|**       |         |        |         |         |        |    
 1.58-08      2 3.42+03   3.534 *********|********|*********|********|***      |         |        |         |         |        |    
 2.51-08      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 3.98-08      2 1.36+03   3.134 *********|********|*********|********|         |         |        |         |         |        |    
 6.31-08      0 0.00+00   0.000          |        |         |        |         |         |        |         |         |        |    
 1.00-07    175 4.74+04   4.676 *********|********|*********|********|*********|****     |        |         |         |        |    
 1.58-07     59 1.01+04   4.004 *********|********|*********|********|******** |         |        |         |         |        |    
 2.51-07     59 6.36+03   3.804 *********|********|*********|********|******   |         |        |         |         |        |    
 3.98-07     68 4.63+03   3.665 *********|********|*********|********|*****    |         |        |         |         |        |    
 6.31-07     62 2.66+03   3.425 *********|********|*********|********|**       |         |        |         |         |        |    
 1.00-06     62 1.68+03   3.225 *********|********|*********|********|         |         |        |         |         |        |    
 1.58-06     88 1.50+03   3.177 *********|********|*********|********|         |         |        |         |         |        |    
 2.51-06     74 7.98+02   2.902 *********|********|*********|******  |         |         |        |         |         |        |    
 3.98-06     99 6.74+02   2.829 *********|********|*********|******  |         |         |        |         |         |        |    
 6.31-06    106 4.55+02   2.658 *********|********|*********|****    |         |         |        |         |         |        |    
 1.00-05    169 4.58+02   2.661 *********|********|*********|****    |         |         |        |         |         |        |    
 1.58-05    267 4.56+02   2.659 *********|********|*********|****    |         |         |        |         |         |        |    
 2.51-05    462 4.98+02   2.698 *********|********|*********|****    |         |         |        |         |         |        |    
 3.98-05    456 3.10+02   2.492 mmmmmmmmm|mmmmmmmm|mmmmmmmmm|mm      |         |         |        |         |         |        |    
 6.31-05    338 1.45+02   2.162 *********|********|*********|        |         |         |        |         |         |        |    
 1.00-04    215 5.83+01   1.765 *********|********|*****    |        |         |         |        |         |         |        |    
 1.58-04     66 1.13+01   1.052 *********|********|         |        |         |         |        |         |         |        |    
 2.51-04      2 2.16-01  -0.666 *        |        |         |        |         |         |        |         |         |        |    
  total    2841 2.84-02         d--------d--------d---------d--------d---------d---------d--------d---------d---------d--------d----
1cumulative tally number for tally      235         nonzero tally mean(m) = 2.524E-05   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 6.30957E-15        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.00000E-14        1    0.035|         |         |         |         |         |         |         |         |         |         |
 1.58489E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-14        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 6.30957E-13        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.00000E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 1.58489E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 2.51189E-12        2    0.070|         |         |         |         |         |         |         |         |         |         |
 3.98107E-12        3    0.106|         |         |         |         |         |         |         |         |         |         |
 6.30957E-12        3    0.106|         |         |         |         |         |         |         |         |         |         |
 1.00000E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 1.58489E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 2.51189E-11        4    0.141|         |         |         |         |         |         |         |         |         |         |
 3.98107E-11        5    0.176|         |         |         |         |         |         |         |         |         |         |
 6.30957E-11        5    0.176|         |         |         |         |         |         |         |         |         |         |
 1.00000E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 1.58489E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 2.51189E-10        5    0.176|         |         |         |         |         |         |         |         |         |         |
 3.98107E-10        6    0.211|         |         |         |         |         |         |         |         |         |         |
 6.30957E-10        7    0.246|         |         |         |         |         |         |         |         |         |         |
 1.00000E-09        8    0.282|         |         |         |         |         |         |         |         |         |         |
 1.58489E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 2.51189E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 3.98107E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 6.30957E-09        9    0.317|         |         |         |         |         |         |         |         |         |         |
 1.00000E-08       10    0.352|         |         |         |         |         |         |         |         |         |         |
 1.58489E-08       12    0.422|         |         |         |         |         |         |         |         |         |         |
 2.51189E-08       12    0.422|         |         |         |         |         |         |         |         |         |         |
 3.98107E-08       14    0.493|         |         |         |         |         |         |         |         |         |         |
 6.30957E-08       14    0.493|         |         |         |         |         |         |         |         |         |         |
 1.00000E-07      189    6.653|*******  |         |         |         |         |         |         |         |         |         |
 1.58489E-07      248    8.729|*********|         |         |         |         |         |         |         |         |         |
 2.51189E-07      307   10.806|*********|*        |         |         |         |         |         |         |         |         |
 3.98107E-07      375   13.200|*********|***      |         |         |         |         |         |         |         |         |
 6.30957E-07      437   15.382|*********|*****    |         |         |         |         |         |         |         |         |
 1.00000E-06      499   17.564|*********|******** |         |         |         |         |         |         |         |         |
 1.58489E-06      587   20.662|*********|*********|*        |         |         |         |         |         |         |         |
 2.51189E-06      661   23.266|*********|*********|***      |         |         |         |         |         |         |         |
 3.98107E-06      760   26.751|*********|*********|*******  |         |         |         |         |         |         |         |
 6.30957E-06      866   30.482|*********|*********|*********|         |         |         |         |         |         |         |
 1.00000E-05     1035   36.431|*********|*********|*********|******   |         |         |         |         |         |         |
 1.58489E-05     1302   45.829|*********|*********|*********|*********|******   |         |         |         |         |         |
 2.51189E-05     1764   62.091|*********|*********|*********|*********|*********|*********|**       |         |         |         |
 3.98107E-05     2220   78.141|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmm |         |         |
 6.30957E-05     2558   90.039|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.00000E-04     2773   97.606|*********|*********|*********|*********|*********|*********|*********|*********|*********|******** |
 1.58489E-04     2839   99.930|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E-04     2841  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        2841  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1cumulative unnormed tally for tally      235         nonzero tally mean(m) = 2.524E-05   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 6.310E-15  4.647E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-14  4.647E-20    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-14  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-13  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-12  1.527E-19    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-12  3.572E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-12  3.572E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-11  9.955E-17    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-11  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-11  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-10  3.564E-16    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-10  4.329E-15    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-10  8.321E-15    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-09  1.625E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-09  2.799E-14    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-08  1.123E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 1.585E-08  3.778E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 2.512E-08  3.778E-13    0.000|         |         |         |         |         |         |         |         |         |         |
 3.981E-08  1.051E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 6.310E-08  1.051E-12    0.000|         |         |         |         |         |         |         |         |         |         |
 1.000E-07  1.318E-10    0.018|         |         |         |         |         |         |         |         |         |         |
 1.585E-07  2.075E-10    0.029|         |         |         |         |         |         |         |         |         |         |
 2.512E-07  3.275E-10    0.046|         |         |         |         |         |         |         |         |         |         |
 3.981E-07  5.388E-10    0.075|         |         |         |         |         |         |         |         |         |         |
 6.310E-07  8.544E-10    0.119|         |         |         |         |         |         |         |         |         |         |
 1.000E-06  1.346E-09    0.188|         |         |         |         |         |         |         |         |         |         |
 1.585E-06  2.455E-09    0.342|         |         |         |         |         |         |         |         |         |         |
 2.512E-06  3.922E-09    0.547|*        |         |         |         |         |         |         |         |         |         |
 3.981E-06  7.158E-09    0.998|*        |         |         |         |         |         |         |         |         |         |
 6.310E-06  1.257E-08    1.753|**       |         |         |         |         |         |         |         |         |         |
 1.000E-05  2.647E-08    3.691|****     |         |         |         |         |         |         |         |         |         |
 1.585E-05  6.145E-08    8.570|*********|         |         |         |         |         |         |         |         |         |
 2.512E-05  1.561E-07   21.765|*********|*********|**       |         |         |         |         |         |         |         |
 3.981E-05  3.003E-07   41.877|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mm       |         |         |         |         |         |
 6.310E-05  4.665E-07   65.066|*********|*********|*********|*********|*********|*********|*****    |         |         |         |
 1.000E-04  6.364E-07   88.757|*********|*********|*********|*********|*********|*********|*********|*********|*********|         |
 1.585E-04  7.129E-07   99.421|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E-04  7.170E-07  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  7.17043E-07  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1tally     1011        nps =      100000
           tally type 1    number of particles crossing a surface.                             
           particle(s): photons  
 
 surface  100                                                                                                                          
                 1.04900E-02 0.0308


 ===================================================================================================================================

           results of 10 statistical checks for the estimated answer for the tally fluctuation chart (tfc) bin of tally     1011

 tfc bin     --mean--      ---------relative error---------      ----variance of the variance----      --figure of merit--     -pdf-
 behavior    behavior      value   decrease   decrease rate      value   decrease   decrease rate       value     behavior     slope

 desired      random       <0.10      yes      1/sqrt(nps)       <0.10      yes        1/nps           constant    random      >3.00
 observed     random        0.03      yes          yes            0.00      yes         yes            constant    random       4.88
 passed?        yes          yes      yes          yes             yes      yes         yes               yes        yes         yes

 ===================================================================================================================================


 this tally meets the statistical criteria used to form confidence intervals: check the tally fluctuation chart to verify.
 the results in other bins associated with this tally may not meet these statistical criteria.

 ----- estimated confidence intervals:  -----

 estimated asymmetric confidence interval(1,2,3 sigma): 1.0171E-02 to 1.0819E-02; 9.8478E-03 to 1.1142E-02; 9.5243E-03 to 1.1466E-02
 estimated  symmetric confidence interval(1,2,3 sigma): 1.0167E-02 to 1.0813E-02; 9.8432E-03 to 1.1137E-02; 9.5197E-03 to 1.1460E-02

1analysis of the results in the tally fluctuation chart bin (tfc) for tally     1011 with nps =      100000  print table 160


 normed average tally per history  = 1.04900E-02          unnormed average tally per history  = 1.04900E-02
 estimated tally relative error    = 0.0308               estimated variance of the variance  = 0.0010
 relative error from zero tallies  = 0.0308               relative error from nonzero scores  = 0.0019

 number of nonzero history tallies =        1045          efficiency for the nonzero tallies  = 0.0105
 history number of largest  tally  =       41105          largest  unnormalized history tally = 2.00000E+00
 (largest  tally)/(average tally)  = 1.90658E+02          (largest  tally)/(avg nonzero tally)= 1.99237E+00

 (confidence interval shift)/mean  = 0.0005               shifted confidence interval center  = 1.04950E-02


 if the largest  history score sampled so far were to occur on the next history, the tfc bin quantities would change as follows:

      estimated quantities           value at nps           value at nps+1           value(nps+1)/value(nps)-1.

      mean                            1.04900E-02             1.05099E-02                     0.001897
      relative error                  3.08311E-02             3.08306E-02                    -0.000016
      variance of the variance        9.59440E-04             9.66280E-04                     0.007130
      shifted center                  1.04950E-02             1.04950E-02                     0.000002
      figure of merit                 6.07122E+01             6.07142E+01                     0.000033

 the estimated inverse power slope of the 201 largest  tallies starting at 9.79695E-01 is 4.8812
 the history score probability density function appears to have an unsampled region at the largest  history scores:
 please examine. see print table 161.

 fom = (histories/minute)*(f(x) signal-to-noise ratio)**2 = (5.771E+03)*( 1.026E-01)**2 = (5.771E+03)*(1.052E-02) = 6.071E+01

1unnormed tally density for tally     1011          nonzero tally mean(m) = 1.004E+00   nps =      100000  print table 161

 abscissa              ordinate   log plot of tally probability density function in tally fluctuation chart bin(d=decade,slope= 4.9)
  tally  number num den log den:d----------------------------------d------------------------------------d---------------------------
 1.26+00   1041 4.02-02  -1.396 mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm|mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm|mmmmmmmmmmmmmmmmmmmmmmmmmms
 1.58+00      0 0.00+00   0.000                                    |                                    |         s                 
 2.00+00      0 0.00+00   0.000                                    |                              s     |                           
 2.51+00      4 7.74-05  -4.111 *                                  |             s                      |                           
  total    1045 1.05-02         d----------------------------------d------------------------------------d---------------------------


 cumulative tally number for tally     1011         nonzero tally mean(m) = 1.004E+00   nps =      100000  print table 162

   abscissa     cum   ordinate    plot of the cumulative number of tallies in the tally fluctuation chart bin from 0 to 100 percent
    tally      number  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.25893E+00     1041   99.617|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|
 1.58489E+00     1041   99.617|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.99526E+00     1041   99.617|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.51189E+00     1045  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
    total        1045  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100



 cumulative unnormed tally for tally     1011         nonzero tally mean(m) = 1.004E+00   nps =    100000  print table 162

  abscissa     cum    ordinate                plot of the cumulative tally in the tally fluctuation chart bin from 0 to 100 percent
   tally    tally/nps  cum pct:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100
 1.259E+00  1.041E-02   99.237|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|mmmmmmmmm|
 1.585E+00  1.041E-02   99.237|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 1.995E+00  1.041E-02   99.237|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
 2.512E+00  1.049E-02  100.000|*********|*********|*********|*********|*********|*********|*********|*********|*********|*********|
   total  1.04900E-02  100.000:--------10--------20--------30--------40--------50--------60--------70--------80--------90-------100

1status of the statistical checks used to form confidence intervals for the mean for each tally bin


 tally   result of statistical checks for the tfc bin (the first check not passed is listed) and error magnitude check for all bins

       31   no nonzero tallies were made in the tally fluctuation chart bin                           
         no nonzero tallies were made in any one of the    165 tally bins

       41   missed  3 of 10 tfc bin checks: the relative error exceeds the recommended value of 0.1 for nonpoint detector tallies     
         missed all bin error check:   165 tally bins had   163 bins with zeros and     2 bins with relative errors exceeding 0.10

      115   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

      125   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

      135   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

      215   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

      225   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

      235   passed the 10 statistical checks for the tally fluctuation chart bin result               
         missed all bin error check:   330 tally bins had    40 bins with zeros and   288 bins with relative errors exceeding 0.05

     1011   passed the 10 statistical checks for the tally fluctuation chart bin result               
         passed all bin error check:     1 tally bins all have relative errors less than 0.10 with no zero bins


 the 10 statistical checks are only for the tally fluctuation chart bin and do not apply to other tally bins.

 the tally bins with zeros may or may not be correct: compare the source, cutoffs, multipliers, et cetera with the tally bins.

 warning.       2 of the     9 tally fluctuation chart bins did not pass all 10 statistical checks.
 warning.       1 of the     9 tallies were all zeros.
 warning.       7 of the     9 tallies had bins with relative errors greater than recommended.
1tally fluctuation charts                              

                            tally       31                          tally       41                          tally      115
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom      mean     error   vov  slope    fom
         8000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   8.9263E-07 0.0960 0.0783  0.0      77
        16000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.7751E-07 0.0691 0.0346  0.0      74
        24000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.4689E-07 0.0574 0.0190  4.2      69
        32000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.7517E-07 0.0491 0.0113  5.7      71
        40000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.6893E-07 0.0433 0.0084  6.5      75
        48000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.6311E-07 0.0394 0.0065  7.0      76
        56000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.7016E-07 0.0365 0.0051 10.0      76
        64000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.8689E-07 0.0342 0.0041 10.0      76
        72000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.9202E-07 0.0321 0.0036 10.0      77
        80000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.8750E-07 0.0305 0.0032 10.0      77
        88000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.8205E-07 0.0296 0.0032  8.1      75
        96000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   7.8525E-07 0.0282 0.0029  8.9      76
       100000   0.0000E+00 0.0000 0.0000  0.0 0.0E+00   1.0000E-05 1.0000 1.0000  0.0 5.8E-02   7.7873E-07 0.0276 0.0027  9.1      76
 

                            tally      125                          tally      135                          tally      215
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom      mean     error   vov  slope    fom
         8000   8.7099E-07 0.0933 0.0559  0.0      81   8.1625E-07 0.0908 0.0365  0.0      86   8.9263E-07 0.0960 0.0783  0.0      77
        16000   7.6214E-07 0.0679 0.0245  0.0      76   7.1770E-07 0.0668 0.0166  0.0      79   7.7751E-07 0.0691 0.0346  0.0      74
        24000   7.3405E-07 0.0567 0.0139  5.3      71   6.9256E-07 0.0562 0.0101  5.2      72   7.4689E-07 0.0574 0.0190  4.2      69
        32000   7.5992E-07 0.0487 0.0087  7.1      73   7.1546E-07 0.0484 0.0068 10.0      73   7.7517E-07 0.0491 0.0113  5.7      71
        40000   7.5275E-07 0.0431 0.0066  9.0      75   7.0789E-07 0.0430 0.0052 10.0      76   7.6893E-07 0.0433 0.0084  6.5      75
        48000   7.4777E-07 0.0392 0.0052  9.4      76   7.0418E-07 0.0391 0.0042 10.0      77   7.6311E-07 0.0394 0.0065  7.0      76
        56000   7.5519E-07 0.0364 0.0042 10.0      77   7.1163E-07 0.0363 0.0035 10.0      77   7.7016E-07 0.0365 0.0051 10.0      76
        64000   7.7154E-07 0.0340 0.0034 10.0      77   7.2704E-07 0.0340 0.0030 10.0      77   7.8689E-07 0.0342 0.0041 10.0      76
        72000   7.7625E-07 0.0320 0.0030 10.0      78   7.3153E-07 0.0319 0.0026 10.0      78   7.9202E-07 0.0321 0.0036 10.0      77
        80000   7.7158E-07 0.0304 0.0026 10.0      78   7.2683E-07 0.0304 0.0023 10.0      78   7.8750E-07 0.0305 0.0032 10.0      77
        88000   7.6522E-07 0.0293 0.0025 10.0      76   7.2005E-07 0.0292 0.0022 10.0      76   7.8205E-07 0.0296 0.0032  8.1      75
        96000   7.6834E-07 0.0280 0.0022 10.0      77   7.2299E-07 0.0279 0.0020 10.0      77   7.8525E-07 0.0282 0.0029  8.9      76
       100000   7.6195E-07 0.0274 0.0022 10.0      77   7.1704E-07 0.0274 0.0019 10.0      77   7.7873E-07 0.0276 0.0027  9.1      76
 

                            tally      225                          tally      235                          tally     1011
          nps      mean     error   vov  slope    fom      mean     error   vov  slope    fom      mean     error   vov  slope    fom
         8000   8.7099E-07 0.0933 0.0559  0.0      81   8.1625E-07 0.0908 0.0365  0.0      86   1.0750E-02 0.1073 0.0113  0.0      61
        16000   7.6214E-07 0.0679 0.0245  0.0      76   7.1770E-07 0.0668 0.0166  0.0      79   1.0188E-02 0.0779 0.0059  0.0      58
        24000   7.3405E-07 0.0567 0.0139  5.3      71   6.9256E-07 0.0562 0.0101  5.2      72   9.9583E-03 0.0644 0.0041  0.0      55
        32000   7.5992E-07 0.0487 0.0087  7.1      73   7.1546E-07 0.0484 0.0068 10.0      73   1.0188E-02 0.0551 0.0030  0.0      57
        40000   7.5275E-07 0.0431 0.0066  9.0      75   7.0789E-07 0.0430 0.0052 10.0      76   1.0150E-02 0.0494 0.0024  0.0      57
        48000   7.4777E-07 0.0392 0.0052  9.4      76   7.0418E-07 0.0391 0.0042 10.0      77   1.0437E-02 0.0445 0.0020  7.2      59
        56000   7.5519E-07 0.0364 0.0042 10.0      77   7.1163E-07 0.0363 0.0035 10.0      77   1.0464E-02 0.0412 0.0017  5.8      60
        64000   7.7154E-07 0.0340 0.0034 10.0      77   7.2704E-07 0.0340 0.0030 10.0      77   1.0516E-02 0.0385 0.0015  5.2      60
        72000   7.7625E-07 0.0320 0.0030 10.0      78   7.3153E-07 0.0319 0.0026 10.0      78   1.0583E-02 0.0362 0.0013  4.9      61
        80000   7.7158E-07 0.0304 0.0026 10.0      78   7.2683E-07 0.0304 0.0023 10.0      78   1.0500E-02 0.0345 0.0012  4.9      60
        88000   7.6522E-07 0.0293 0.0025 10.0      76   7.2005E-07 0.0292 0.0022 10.0      76   1.0352E-02 0.0331 0.0011  4.9      60
        96000   7.6834E-07 0.0280 0.0022 10.0      77   7.2299E-07 0.0279 0.0020 10.0      77   1.0458E-02 0.0315 0.0010  4.9      61
       100000   7.6195E-07 0.0274 0.0022 10.0      77   7.1704E-07 0.0274 0.0019 10.0      77   1.0490E-02 0.0308 0.0010  4.9      61

 ***********************************************************************************************************************

 dump no.   11 on file bremms.ir     nps =      100000     coll =       55850036     ctm =       17.33   nrn =        
 522558131
 tally data written to file bremms.im

        14 warning messages so far.


 run terminated when      100000  particle histories were done.

 computer time =   17.43 minutes

 mcnp     version 6     05/08/13                     12/25/24 22:21:06                     probid =  12/25/24 22:20:59 
