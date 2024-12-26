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
  
1mcnp     version 6     ld=05/08/13                     12/25/24 22:20:22 
 *************************************************************************                 probid =  12/25/24 22:20:22 
 n=critical.i tasks 14                                                           

         1-       Generated using CardSharp:Jezebel reactor                                       
         2-       c ====================Cells======================                               
         3-       c (cell #, material #, density, macrobody, importance)                          
         4-       c density: negative is g/cc, positive is atoms/barn-cm                          
         5-       c -----------------------------------------------------------------             
         6-       c Plutonium Sphere, macrobody:1, xPos:0.00, yPos:0.00, zPos:0.00, radius:6.34, m
         7-       c ---Plutonium Sphere----                                                       
         8-       1 269 0.0403  -1    IMP:n=1                                                     
         9-       c ---Reflector shell----                                                        
        10-       2 227 -8.9000  -2  1    IMP:n=1                                                 
        11-       c World cells---Void inside------------------                                   
        12-       c ---World----                                                                  
        13-       3 0        -100  #1  #2    IMP:n=1                                              
        14-       c ---Graveyard----                                                              
        15-       4 0        100    IMP:n=0                                                       
        16-       c =============Cells end: Next line must be completely blank==================  
        17-                                                                                       
        18-       c ====================Surfaces/Macrobodies=======                               
        19-       c surface/macrobody number, transformation number optional, surf/macro type, sur
        20-       c --------------------------                                                    
        21-       c ---Plutonium Sphere, sphere macrobody:1, trNum:, xPos:0.00, yPos:0.00, zPos:0.
        22-       1  SPH 0.0000 0.0000 0.0000  6.3400                                             
        23-       c ---Reflector shell, sphere macrobody:2, trNum:, xPos:0.00, yPos:0.00, zPos:0.0
        24-       2  SPH 0.0000 0.0000 0.0000  6.3527                                             
        25-       c ---Universe, sphere macrobody:100, trNum:, xPos:0.00, yPos:0.00, zPos:0.00, ra
        26-       100  SPH 0.0000 0.0000 0.0000  50.0000                                          
        27-       c =============Surfaces/Macros end: Next line must be completely blank========= 
        28-                                                                                       
        29-       c =================Data cards=================                                  
        30-       c -----------------Transformations(* for degrees)--                             
        31-       c -----------------Materials------------------                                  
        32-       c --['Pu', 'Nickel', 'WaterLiquid', 'Beryllium']--                              
        33-       c      Plutonium, Fuel Grade                                                    
        34-       c      AKA: None                                                                
        35-       c      rho: 19.840000 g/cc                                                      
        36-       m269       94238  -0.001000 $ Pu238                                             
        37-              94239  -0.861000 $ Pu239                                                 
        38-              94240  -0.120000 $ Pu240                                                 
        39-              94241  -0.016000 $ Pu241                                                 
        40-              94242  -0.002000 $ Pu242                                                 
        41-       c      Nickel                                                                   
        42-       c      AKA: None                                                                
        43-       c      rho: 8.902000 g/cc                                                       
        44-       m227       28058  -0.671977 $ Ni58                                              
        45-              28060  -0.267758 $ Ni60                                                  
        46-              28061  -0.011834 $ Ni61                                                  
        47-              28062  -0.038349 $ Ni62                                                  
        48-              28064  -0.010080 $ Ni64                                                  
        49-       c      Water, Liquid                                                            
        50-       c      AKA: None                                                                
        51-       c      rho: 0.997000 g/cc                                                       
        52-       m392       1001  -0.111872 $ H1                                                 
  warning.  material      392 is not used in the problem.
        53-              1002  -0.000026 $ H2                                                     
        54-              8016  -0.885692 $ O16                                                    
        55-              8017  -0.000359 $ O17                                                    
        56-              8018  -0.002048 $ O18                                                    
        57-       c      Beryllium                                                                
        58-       c      AKA: None                                                                
        59-       c      rho: 1.848000 g/cc                                                       
        60-       m25       4009  -1.000000 $ Be9                                                 
  warning.  material       25 is not used in the problem.
        61-       KCODE  1000  1.000000  25  125                                                  
        62-       KSRC   0.000000 0.000000 0.000000                                               
        63-       c -----------------Source---------------------                                  
        64-       c -----------------Tally----------------------                                  
        65-       c -----------------Physics -------------------                                  
        66-       c --mode, cut, phys --                                                          
        67-       MPHYS  OFF $ needed only when particles other than N P E are run                
        68-       MODE n   $ particles to transport, default n (anti particles included)          
        69-       CUT:n  j 0.0                                                                    
        70-       CUT:p  j 0.001                                                                  
        71-       CUT:e  j 0.001                                                                  
        72-       PHYS:p 100 0 0 0 1 $ Physics card for photons emcpf ides nocoh ispn nodop J fism
  comment.  photon Doppler energy broadening turned off (phys:p).
        73-       PHYS:e 100 0 0 0 0 1 1 1 1 0                                                    
        74-       c -----------------Output Control-------------                                  
        75-       c --MCTAL nps --                                                                
        76-       c NOTRN                $ uncomment then you get ray tracing only, not scatter   
        77-       c PRDMP NDP NDM MCT NDMP DMMP                                                   
        78-       PRDMP   j   0    1    1    j  $ write MCTAL file                                
        79-       PRINT                                                                           
        80-       c PRINT 40 $ For material normalization check, see .io file                     
        81-       c RAND  gen=2 seed=19539353113317 stride=751313 $ Bad ... and this was recommend
        82-       c RAND  gen=1 seed=19073486328125 $ These are defaults, must end in Odd.        
        83-       c DBCN j 0 $ nj is jump over n options, debug print and multitasking are incompa
        84-       NPS 0     $ stop after number of source particles have been run                 
        85-       c CTME 2.0 $ stop run after number of minutes                                   
        86-       c VOID     $ make all materials void (VisEd particle tracking) (still need xsdir
 
  comment.  total fission nubar data are being used.
1     initial source from ksrc card.                                                                    print table 90

 original number of points                             1
    points not in any cell                       0
    points in cells of zero importance           0
    points in void cells                         0
    points in ambiguous cells                    0
 total points rejected                                 0
 points remaining                                      1
 points after expansion or contraction              1000
 nominal source size                                1000

 initial guess for k(eff.)                      1.000000

 cycles to skip before tallying                       25

 number of keff cycles that can be stored           2500

1material composition                                                                                   print table 40

 material
  number     component nuclide, atom fraction

      269           94238, 1.00487E-03      94239, 8.61564E-01      94240, 1.19578E-01      94241, 1.58773E-02
                    94242, 1.97645E-03
      227           28058, 6.80770E-01      28060, 2.62230E-01      28061, 1.13994E-02      28062, 3.63458E-02
                    28064, 9.25464E-03





 material
  number     component nuclide, mass fraction

      269           94238, 1.00000E-03      94239, 8.61000E-01      94240, 1.20000E-01      94241, 1.60000E-02
                    94242, 2.00000E-03
      227           28058, 6.71978E-01      28060, 2.67759E-01      28061, 1.18340E-02      28062, 3.83491E-02
                    28064, 1.00800E-02
1cell volumes and masses                                                                                print table 50

              cell     atom          gram         input       calculated                            reason volume
                      density       density       volume        volume         mass       pieces    not calculated

        1        1  4.03000E-02   1.60080E+01   0.00000E+00   1.06747E+03   1.70881E+04      1                      
        2        2  9.13156E-02   8.90000E+00   0.00000E+00   6.42779E+00   5.72073E+01      1                      
        3        3  0.00000E+00   0.00000E+00   0.00000E+00   5.22525E+05   0.00000E+00      1                      
        4        4  0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00   0.00000E+00      0      infinite        
1surface areas                                                                                          print table 50

           surface      input      calculated    reason area
                        area          area       not calculated

        1        1      0.00000E+00   5.05113E+02                   
        2        2      0.00000E+00   5.07138E+02                   
        3      100      0.00000E+00   3.14159E+04                   
1cells                                                                                                  print table 60

                               atom        gram                                            neutron                                     
              cell      mat   density     density     volume       mass            pieces importance                                   

        1        1      269  4.03000E-02 1.60080E+01 1.06747E+03 1.70881E+04           1  1.0000E+00                                   
        2        2      227  9.13156E-02 8.90000E+00 6.42779E+00 5.72073E+01           1  1.0000E+00                                   
        3        3        0  0.00000E+00 0.00000E+00 5.22525E+05 0.00000E+00           1  1.0000E+00                                   
        4        4        0  0.00000E+00 0.00000E+00 0.00000E+00 0.00000E+00           0  0.0000E+00                                   

 total                                               5.23599E+05 1.71453E+04
1surfaces                                                                                               print table 70

           surface        trans  type   surface coefficients

        1        1                so    6.3400000E+00
        2        2                so    6.3527000E+00
        3      100                so    5.0000000E+01
1  cell temperatures in mev for the free-gas thermal neutron treatment.                                 print table 72

   all non-zero importance cells with materials have a temperature for thermal neutrons of 2.5300E-08 mev.

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

         2 warning messages so far.
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

                        tables from file xdata/endf71x/Ni/28058.710nc                                    

 particle-production data for protons   being expunged from  28058.80c
 particle-production data for deuterons being expunged from  28058.80c
 particle-production data for tritons   being expunged from  28058.80c
 particle-production data for alphas    being expunged from  28058.80c
  28058.80c  272423  Ni58 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2825      12/15/12

                        tables from file xdata/endf71x/Ni/28060.710nc                                    

 particle-production data for protons   being expunged from  28060.80c
 particle-production data for deuterons being expunged from  28060.80c
 particle-production data for tritons   being expunged from  28060.80c
 particle-production data for alphas    being expunged from  28060.80c
  28060.80c  232057  Ni60 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2831      12/17/12

                        tables from file xdata/endf71x/Ni/28061.710nc                                    

 particle-production data for protons   being expunged from  28061.80c
 particle-production data for deuterons being expunged from  28061.80c
 particle-production data for tritons   being expunged from  28061.80c
 particle-production data for alphas    being expunged from  28061.80c
  28061.80c  130431  Ni61 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2834      12/13/12

                        tables from file xdata/endf71x/Ni/28062.710nc                                    

 particle-production data for protons   being expunged from  28062.80c
 particle-production data for deuterons being expunged from  28062.80c
 particle-production data for tritons   being expunged from  28062.80c
 particle-production data for alphas    being expunged from  28062.80c
  28062.80c  127428  Ni62 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2837      12/17/12
                     probability tables used from 6.0000E-01 to 1.0000E+00 mev.

                        tables from file xdata/endf71x/Ni/28064.710nc                                    

 particle-production data for protons   being expunged from  28064.80c
 particle-production data for deuterons being expunged from  28064.80c
 particle-production data for tritons   being expunged from  28064.80c
 particle-production data for alphas    being expunged from  28064.80c
  28064.80c  108762  Ni64 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09/10/2012  10:00:53)        mat2843      12/17/12

                        tables from file xdata/endf71x/Pu/94238.710nc                                    

  94238.80c  315608  Pu238 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09total nu  10:00:53)       mat9434      12/18/12
                     probability tables used from 5.0000E-04 to 6.0000E-02 mev.

                        tables from file xdata/endf71x/Pu/94239.710nc                                    

  94239.80c  586763  Pu239 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09total nu  10:00:53)       mat9437      12/18/12
                     probability tables used from 2.5000E-03 to 3.0000E-02 mev.

                        tables from file xdata/endf71x/Pu/94240.710nc                                    

  94240.80c  633923  Pu240 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09total nu  10:00:53)       mat9440      12/17/12
                     probability tables used from 5.7000E-03 to 4.0000E-02 mev.

                        tables from file xdata/endf71x/Pu/94241.710nc                                    

  94241.80c  133343  Pu241 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09total nu  10:00:53)       mat9443      12/17/12
                     probability tables used from 3.0000E-04 to 4.0200E-02 mev.

                        tables from file xdata/endf71x/Pu/94242.710nc                                    

  94242.80c  252517  Pu242 ENDF71x (jlconlin)  Ref. see jlconlin (ref 09total nu  10:00:53)       mat9446      12/17/12
                     probability tables used from 9.2300E-04 to 4.4726E-02 mev.

  total     2793255

1particles and energy limits                                                                            print table 101

                         particle      maximum       smallest      largest       always        always
                         cutoff        particle      table         table         use table     use model
   particle type         energy        energy        maximum       maximum       below         above

    1  n    neutron     0.0000E+00    1.0000E+36    2.0000E+01    1.5000E+02    1.0000E+36    1.0000E+36
 

 ***********************************************************************************************************************

 dump no.    1 on file critical.ir     nps =           0     coll =              0     ctm =        0.00   nrn =        
         0

 source distribution written to file critical.is        cycle=     0

         2 warning messages so far.
1starting mcrun.      cp0 =  0.05                                                                       print table 110

      Generated using CardSharp:Jezebel reactor                                       


     nps    x          y          z          cell       surf     u          v          w        energy     weight      time
 
      1  0.000E+00  0.000E+00  0.000E+00        1          0  5.085E-01  4.733E-01  7.193E-01  2.209E+00  1.000E+00  0.000E+00
      2  0.000E+00  0.000E+00  0.000E+00        1          0  8.952E-01 -4.447E-01 -2.944E-02  4.904E+00  1.000E+00  0.000E+00
      3  0.000E+00  0.000E+00  0.000E+00        1          0 -6.184E-01 -4.495E-01  6.446E-01  3.809E-01  1.000E+00  0.000E+00
      4  0.000E+00  0.000E+00  0.000E+00        1          0  9.710E-01 -5.665E-02 -2.323E-01  1.331E+00  1.000E+00  0.000E+00
      5  0.000E+00  0.000E+00  0.000E+00        1          0  5.861E-01  1.496E-01 -7.963E-01  1.902E+00  1.000E+00  0.000E+00
      6  0.000E+00  0.000E+00  0.000E+00        1          0 -6.489E-02 -1.626E-01  9.845E-01  4.410E-01  1.000E+00  0.000E+00
      7  0.000E+00  0.000E+00  0.000E+00        1          0 -7.068E-02  3.263E-02 -9.970E-01  4.750E-01  1.000E+00  0.000E+00
      8  0.000E+00  0.000E+00  0.000E+00        1          0 -3.915E-01  4.664E-01 -7.932E-01  4.136E+00  1.000E+00  0.000E+00
      9  0.000E+00  0.000E+00  0.000E+00        1          0 -2.368E-01  9.215E-01 -3.079E-01  7.453E-02  1.000E+00  0.000E+00
     10  0.000E+00  0.000E+00  0.000E+00        1          0  1.946E-01 -3.204E-01  9.271E-01  3.128E+00  1.000E+00  0.000E+00
     11  0.000E+00  0.000E+00  0.000E+00        1          0 -6.698E-01 -7.177E-01 -1.905E-01  1.014E+00  1.000E+00  0.000E+00
     12  0.000E+00  0.000E+00  0.000E+00        1          0 -8.398E-01 -4.129E-01  3.524E-01  1.395E+00  1.000E+00  0.000E+00
     13  0.000E+00  0.000E+00  0.000E+00        1          0 -1.714E-01 -8.572E-01  4.857E-01  7.748E-01  1.000E+00  0.000E+00
     14  0.000E+00  0.000E+00  0.000E+00        1          0 -2.489E-01 -5.118E-01 -8.222E-01  1.101E+00  1.000E+00  0.000E+00
     15  0.000E+00  0.000E+00  0.000E+00        1          0 -2.959E-01  2.119E-01  9.314E-01  1.951E+00  1.000E+00  0.000E+00
     16  0.000E+00  0.000E+00  0.000E+00        1          0  1.395E-01 -9.829E-01  1.202E-01  2.186E+00  1.000E+00  0.000E+00
     17  0.000E+00  0.000E+00  0.000E+00        1          0  6.909E-01 -7.110E-01  1.307E-01  1.865E+00  1.000E+00  0.000E+00
     18  0.000E+00  0.000E+00  0.000E+00        1          0 -6.580E-01  5.320E-01 -5.329E-01  1.229E+00  1.000E+00  0.000E+00
     19  0.000E+00  0.000E+00  0.000E+00        1          0 -9.903E-01 -1.380E-01  1.353E-02  1.305E+00  1.000E+00  0.000E+00
     20  0.000E+00  0.000E+00  0.000E+00        1          0  7.462E-01  4.859E-01 -4.551E-01  1.000E+00  1.000E+00  0.000E+00
     21  0.000E+00  0.000E+00  0.000E+00        1          0 -1.977E-01  9.797E-01  3.360E-02  3.990E+00  1.000E+00  0.000E+00
     22  0.000E+00  0.000E+00  0.000E+00        1          0 -9.117E-01 -3.647E-01 -1.891E-01  2.665E-01  1.000E+00  0.000E+00
     23  0.000E+00  0.000E+00  0.000E+00        1          0 -4.287E-01  8.361E-01 -3.423E-01  1.156E+00  1.000E+00  0.000E+00
     24  0.000E+00  0.000E+00  0.000E+00        1          0  1.080E-01  3.412E-01 -9.338E-01  2.669E+00  1.000E+00  0.000E+00
     25  0.000E+00  0.000E+00  0.000E+00        1          0 -9.111E-01 -9.012E-03 -4.122E-01  2.185E+00  1.000E+00  0.000E+00
     26  0.000E+00  0.000E+00  0.000E+00        1          0 -2.568E-01 -6.391E-01 -7.249E-01  4.225E+00  1.000E+00  0.000E+00
     27  0.000E+00  0.000E+00  0.000E+00        1          0 -2.912E-01  8.086E-01  5.113E-01  1.079E+00  1.000E+00  0.000E+00
     28  0.000E+00  0.000E+00  0.000E+00        1          0  1.472E-01 -9.514E-01  2.705E-01  3.461E+00  1.000E+00  0.000E+00
     29  0.000E+00  0.000E+00  0.000E+00        1          0 -6.135E-01 -7.645E-01 -1.978E-01  1.836E+00  1.000E+00  0.000E+00
     30  0.000E+00  0.000E+00  0.000E+00        1          0 -5.702E-01  5.651E-01 -5.963E-01  4.556E-01  1.000E+00  0.000E+00
     31  0.000E+00  0.000E+00  0.000E+00        1          0 -6.607E-01  5.373E-01 -5.242E-01  6.415E-01  1.000E+00  0.000E+00
     32  0.000E+00  0.000E+00  0.000E+00        1          0 -9.742E-02 -3.639E-01 -9.263E-01  2.764E+00  1.000E+00  0.000E+00
     33  0.000E+00  0.000E+00  0.000E+00        1          0 -1.965E-01 -3.145E-01 -9.287E-01  2.785E-01  1.000E+00  0.000E+00
     34  0.000E+00  0.000E+00  0.000E+00        1          0  4.097E-01  8.465E-01 -3.399E-01  9.097E-01  1.000E+00  0.000E+00
     35  0.000E+00  0.000E+00  0.000E+00        1          0 -4.048E-02  8.831E-01  4.675E-01  3.360E-01  1.000E+00  0.000E+00
     36  0.000E+00  0.000E+00  0.000E+00        1          0  3.371E-01 -9.269E-01 -1.652E-01  6.376E-01  1.000E+00  0.000E+00
     37  0.000E+00  0.000E+00  0.000E+00        1          0 -1.867E-01  9.756E-01 -1.155E-01  2.186E+00  1.000E+00  0.000E+00
     38  0.000E+00  0.000E+00  0.000E+00        1          0 -2.616E-01  2.336E-01 -9.365E-01  7.314E-01  1.000E+00  0.000E+00
     39  0.000E+00  0.000E+00  0.000E+00        1          0  9.780E-01 -7.641E-02 -1.939E-01  2.997E-01  1.000E+00  0.000E+00
     40  0.000E+00  0.000E+00  0.000E+00        1          0  2.580E-01 -7.076E-01  6.578E-01  1.444E+00  1.000E+00  0.000E+00
     41  0.000E+00  0.000E+00  0.000E+00        1          0 -3.212E-01 -7.678E-01 -5.543E-01  1.914E+00  1.000E+00  0.000E+00
     42  0.000E+00  0.000E+00  0.000E+00        1          0  5.039E-01 -1.460E-01  8.513E-01  1.502E+00  1.000E+00  0.000E+00
     43  0.000E+00  0.000E+00  0.000E+00        1          0  6.080E-01  5.487E-01  5.738E-01  5.971E+00  1.000E+00  0.000E+00
     44  0.000E+00  0.000E+00  0.000E+00        1          0 -2.932E-01  9.304E-01 -2.199E-01  1.827E+00  1.000E+00  0.000E+00
     45  0.000E+00  0.000E+00  0.000E+00        1          0 -8.475E-01 -3.993E-01 -3.497E-01  1.928E+00  1.000E+00  0.000E+00
     46  0.000E+00  0.000E+00  0.000E+00        1          0  1.200E-01 -9.195E-01 -3.743E-01  1.351E+00  1.000E+00  0.000E+00
     47  0.000E+00  0.000E+00  0.000E+00        1          0  7.085E-01  5.879E-01  3.904E-01  2.288E+00  1.000E+00  0.000E+00
     48  0.000E+00  0.000E+00  0.000E+00        1          0  4.261E-01  9.046E-01  9.254E-03  1.230E+00  1.000E+00  0.000E+00
     49  0.000E+00  0.000E+00  0.000E+00        1          0  5.431E-01  4.270E-01 -7.230E-01  1.433E+00  1.000E+00  0.000E+00
     50  0.000E+00  0.000E+00  0.000E+00        1          0 -1.053E-01 -9.805E-01  1.658E-01  6.572E-01  1.000E+00  0.000E+00

 comment.
 comment. entropy of the fission source distribution will be computed
 comment.
 comment. the mesh for source entropy is based on the site coordinates
 comment.   using  4 x  4 x  4 =    64  mesh cells
 comment.
 comment.     Xmin= -8.2984E+00     Xmax=  8.2170E+00
 comment.     Ymin= -8.0106E+00     Ymax=  8.3046E+00
 comment.     Zmin= -8.5835E+00     Zmax=  8.5504E+00
 comment.
 comment. the mesh will be automatically expanded if necessary to
 comment.   encompass the entire fission source distribution
 comment.

1estimated keff results by cycle                                                                        print table 175

 cycle     1    k(collision)  1.346132    prompt removal lifetime(abs)  2.6232E+00    source points generated   1359
                                          source_entropy =     3.8345E+00

 cycle     2    k(collision)  1.132534    prompt removal lifetime(abs)  2.5977E+00    source points generated    893
                                          source_entropy =     4.2707E+00

 cycle     3    k(collision)  1.073376    prompt removal lifetime(abs)  2.5379E+00    source points generated    953
                                          source_entropy =     4.3583E+00

 cycle     4    k(collision)  1.051315    prompt removal lifetime(abs)  2.5824E+00    source points generated    995
                                          source_entropy =     4.3388E+00

 cycle     5    k(collision)  1.014974    prompt removal lifetime(abs)  2.7521E+00    source points generated    966
                                          source_entropy =     4.3157E+00

 cycle     6    k(collision)  0.992837    prompt removal lifetime(abs)  2.7081E+00    source points generated    938
                                          source_entropy =     4.4956E+00

 cycle     7    k(collision)  1.028810    prompt removal lifetime(abs)  2.6721E+00    source points generated   1040
                                          source_entropy =     4.4302E+00

 cycle     8    k(collision)  1.017001    prompt removal lifetime(abs)  2.6613E+00    source points generated   1021
                                          source_entropy =     4.4478E+00

 cycle     9    k(collision)  0.968958    prompt removal lifetime(abs)  2.8302E+00    source points generated    970
                                          source_entropy =     4.4264E+00

 cycle    10    k(collision)  0.976936    prompt removal lifetime(abs)  2.7652E+00    source points generated   1028
                                          source_entropy =     4.3860E+00

 cycle    11    k(collision)  1.052461    prompt removal lifetime(abs)  2.6736E+00    source points generated   1082
                                          source_entropy =     4.3700E+00

 cycle    12    k(collision)  1.069104    prompt removal lifetime(abs)  2.6438E+00    source points generated   1013
                                          source_entropy =     4.4149E+00

 cycle    13    k(collision)  0.968937    prompt removal lifetime(abs)  2.6115E+00    source points generated    880
                                          source_entropy =     4.4697E+00

 cycle    14    k(collision)  0.995110    prompt removal lifetime(abs)  2.7513E+00    source points generated   1017
                                          source_entropy =     4.4175E+00

 cycle    15    k(collision)  1.001599    prompt removal lifetime(abs)  2.6999E+00    source points generated    996
                                          source_entropy =     4.4585E+00

 cycle    16    k(collision)  0.967232    prompt removal lifetime(abs)  2.7571E+00    source points generated    979
                                          source_entropy =     4.5077E+00

 cycle    17    k(collision)  0.962832    prompt removal lifetime(abs)  2.7672E+00    source points generated   1022
                                          source_entropy =     4.4510E+00

 cycle    18    k(collision)  0.966292    prompt removal lifetime(abs)  2.6859E+00    source points generated   1013
                                          source_entropy =     4.4909E+00

 cycle    19    k(collision)  0.995118    prompt removal lifetime(abs)  2.8064E+00    source points generated   1041
                                          source_entropy =     4.3481E+00

 cycle    20    k(collision)  1.034062    prompt removal lifetime(abs)  2.5790E+00    source points generated   1051
                                          source_entropy =     4.4246E+00

 cycle    21    k(collision)  1.027670    prompt removal lifetime(abs)  2.6830E+00    source points generated    981
                                          source_entropy =     4.4873E+00

 cycle    22    k(collision)  0.994150    prompt removal lifetime(abs)  2.7384E+00    source points generated    995
                                          source_entropy =     4.5336E+00

 cycle    23    k(collision)  0.994365    prompt removal lifetime(abs)  2.6512E+00    source points generated    987
                                          source_entropy =     4.4001E+00

 cycle    24    k(collision)  1.018666    prompt removal lifetime(abs)  2.6822E+00    source points generated   1028
                                          source_entropy =     4.4152E+00

 cycle    25    k(collision)  1.004790    prompt removal lifetime(abs)  2.7569E+00    source points generated    988
                                          source_entropy =     4.4763E+00

 cycle    26    k(collision)  1.004341    prompt removal lifetime(abs)  2.6978E+00    source points generated    941
                                          source_entropy =     4.4066E+00

  estimator     cycle    27   ave of     2 cycles      combination         simple average    combined average     corr
 k(collision)      1.015497       1.009919 0.0055     k(col/abs)          0.000000 0.0000     0.000000 0.0000   0.0000
 k(absorption)     1.020137       1.011508 0.0085     k(abs/tk ln)        0.000000 0.0000     0.000000 0.0000   0.0000
 k(trk length)     1.014281       0.998130 0.0162     k(tk ln/col)        0.000000 0.0000     0.000000 0.0000   0.0000
 rem life(col)   2.6148E+00     2.6556E+00 0.0153
 rem life(abs)   2.6116E+00     2.6547E+00 0.0162     life(col/abs)     0.0000E+00 0.0000   0.0000E+00 0.0000   0.0000
 source points generated    997                source_entropy  4.4041E+00

  estimator     cycle    28   ave of     3 cycles      combination         simple average    combined average     corr
 k(collision)      1.012884       1.010907 0.0033     k(col/abs)          1.011467 0.0041     1.009152 0.0027   0.9813
 k(absorption)     1.013065       1.012027 0.0049     k(abs/tk ln)        1.002747 0.0074     1.019719 0.0126   0.8432
 k(trk length)     0.984140       0.993466 0.0105     k(tk ln/col)        1.002187 0.0065     1.014454 0.0073   0.7238
 rem life(col)   2.7050E+00     2.6721E+00 0.0107
 rem life(abs)   2.7040E+00     2.6711E+00 0.0112     life(col/abs)     2.6716E+00 0.0110   2.6876E+00 0.0101   0.9996
 source points generated    958                source_entropy  4.3853E+00

  estimator     cycle    29   ave of     4 cycles      combination         simple average    combined average     corr
 k(collision)      1.056174       1.022224 0.0113     k(col/abs)          1.022803 0.0115     1.020116 0.0153   0.9943
 k(absorption)     1.057444       1.023381 0.0116     k(abs/tk ln)        1.014503 0.0127     1.037435 0.0311   0.9465
 k(trk length)     1.042100       1.005625 0.0141     k(tk ln/col)        1.013924 0.0124     1.030010 0.0253   0.9141
 rem life(col)   2.6244E+00     2.6602E+00 0.0088     k(col/abs/tk ln)    1.017077 0.0121     1.031487 0.0844
 rem life(abs)   2.6235E+00     2.6592E+00 0.0091     life(col/abs/tl)  2.6605E+00 0.0088   2.6759E+00 0.0128
 source points generated   1074                source_entropy  4.4454E+00

  estimator     cycle    30   ave of     5 cycles      combination         simple average    combined average     corr
 k(collision)      1.003839       1.018547 0.0095     k(col/abs)          1.019003 0.0097     1.016202 0.0116   0.9951
 k(absorption)     1.003772       1.019459 0.0098     k(abs/tk ln)        1.013477 0.0099     1.016559 0.0148   0.7930
 k(trk length)     1.014978       1.007495 0.0111     k(tk ln/col)        1.013021 0.0097     1.016322 0.0137   0.7701
 rem life(col)   2.6191E+00     2.6519E+00 0.0075     k(col/abs/tk ln)    1.015167 0.0096     1.011066 0.0185
 rem life(abs)   2.6186E+00     2.6511E+00 0.0077     life(col/abs/tl)  2.6525E+00 0.0075   2.6714E+00 0.0101
 source points generated    949                source_entropy  4.3783E+00

  estimator     cycle    31   ave of     6 cycles      combination         simple average    combined average     corr
 k(collision)      0.981965       1.012450 0.0099     k(col/abs)          1.012821 0.0100     1.009568 0.0112   0.9969
 k(absorption)     0.981852       1.013192 0.0102     k(abs/tk ln)        1.010356 0.0087     1.009445 0.0100   0.6277
 k(trk length)     1.007643       1.007520 0.0091     k(tk ln/col)        1.009985 0.0085     1.009422 0.0097   0.6082
 rem life(col)   2.6911E+00     2.6585E+00 0.0066     k(col/abs/tk ln)    1.011054 0.0089     1.005812 0.0108
 rem life(abs)   2.6905E+00     2.6577E+00 0.0067     life(col/abs/tl)  2.6593E+00 0.0066   2.6704E+00 0.0097
 source points generated    980                source_entropy  4.4410E+00

  estimator     cycle    32   ave of     7 cycles      combination         simple average    combined average     corr
 k(collision)      1.013185       1.012555 0.0083     k(col/abs)          1.013261 0.0085     1.009497 0.0103   0.9940
 k(absorption)     1.018615       1.013966 0.0086     k(abs/tk ln)        1.010519 0.0073     1.009417 0.0085   0.6190
 k(trk length)     1.004374       1.007071 0.0077     k(tk ln/col)        1.009813 0.0072     1.009200 0.0082   0.6063
 rem life(col)   2.5675E+00     2.6455E+00 0.0075     k(col/abs/tk ln)    1.011197 0.0075     1.005961 0.0100
 rem life(abs)   2.5639E+00     2.6443E+00 0.0076     life(col/abs/tl)  2.6461E+00 0.0075   2.6665E+00 0.0085
 source points generated   1055                source_entropy  4.4521E+00

  estimator     cycle    33   ave of     8 cycles      combination         simple average    combined average     corr
 k(collision)      0.997018       1.010613 0.0075     k(col/abs)          1.011376 0.0076     1.007822 0.0095   0.9941
 k(absorption)     0.999346       1.012139 0.0077     k(abs/tk ln)        1.008999 0.0065     1.007858 0.0074   0.6339
 k(trk length)     0.997387       1.005860 0.0068     k(tk ln/col)        1.008236 0.0064     1.007573 0.0071   0.6224
 rem life(col)   2.5987E+00     2.6396E+00 0.0068     k(col/abs/tk ln)    1.009537 0.0067     1.004462 0.0090
 rem life(abs)   2.5967E+00     2.6383E+00 0.0070     life(col/abs/tl)  2.6397E+00 0.0069   2.6670E+00 0.0066
 source points generated    988                source_entropy  4.4473E+00

  estimator     cycle    34   ave of     9 cycles      combination         simple average    combined average     corr
 k(collision)      0.968495       1.005933 0.0081     k(col/abs)          1.006622 0.0082     1.001911 0.0099   0.9961
 k(absorption)     0.968686       1.007311 0.0083     k(abs/tk ln)        1.006777 0.0062     1.006461 0.0062   0.4808
 k(trk length)     1.009310       1.006243 0.0060     k(tk ln/col)        1.006088 0.0061     1.006172 0.0061   0.4718
 rem life(col)   2.7639E+00     2.6534E+00 0.0079     k(col/abs/tk ln)    1.006496 0.0067     1.003159 0.0075
 rem life(abs)   2.7643E+00     2.6523E+00 0.0081     life(col/abs/tl)  2.6539E+00 0.0081   2.6744E+00 0.0067
 source points generated    955                source_entropy  4.5051E+00

  estimator     cycle    35   ave of    10 cycles      combination         simple average    combined average     corr
 k(collision)      1.018750       1.007215 0.0073     k(col/abs)          1.007771 0.0074     1.005067 0.0086   0.9954
 k(absorption)     1.017479       1.008328 0.0075     k(abs/tk ln)        1.006696 0.0055     1.005832 0.0056   0.4366
 k(trk length)     0.994462       1.005065 0.0055     k(tk ln/col)        1.006140 0.0054     1.005625 0.0055   0.4167
 rem life(col)   2.5867E+00     2.6468E+00 0.0076     k(col/abs/tk ln)    1.006869 0.0060     1.003193 0.0063
 rem life(abs)   2.5866E+00     2.6458E+00 0.0077     life(col/abs/tl)  2.6471E+00 0.0077   2.6618E+00 0.0066
 source points generated   1064                source_entropy  4.4863E+00

  estimator     cycle    36   ave of    11 cycles      combination         simple average    combined average     corr
 k(collision)      1.007852       1.007273 0.0066     k(col/abs)          1.007825 0.0067     1.005141 0.0078   0.9954
 k(absorption)     1.008884       1.008378 0.0068     k(abs/tk ln)        1.007177 0.0050     1.006575 0.0050   0.4308
 k(trk length)     1.015080       1.005976 0.0050     k(tk ln/col)        1.006624 0.0049     1.006331 0.0050   0.4115
 rem life(col)   2.6050E+00     2.6430E+00 0.0070     k(col/abs/tk ln)    1.007209 0.0054     1.003940 0.0057
 rem life(abs)   2.6049E+00     2.6420E+00 0.0071     life(col/abs/tl)  2.6431E+00 0.0071   2.6580E+00 0.0057
 source points generated    988                source_entropy  4.4599E+00

  estimator     cycle    37   ave of    12 cycles      combination         simple average    combined average     corr
 k(collision)      1.001779       1.006815 0.0061     k(col/abs)          1.007222 0.0062     1.005300 0.0067   0.9944
 k(absorption)     0.999382       1.007629 0.0063     k(abs/tk ln)        1.007618 0.0046     1.007614 0.0047   0.3636
 k(trk length)     1.025562       1.007608 0.0049     k(tk ln/col)        1.007211 0.0045     1.007347 0.0046   0.3619
 rem life(col)   2.7140E+00     2.6489E+00 0.0068     k(col/abs/tk ln)    1.007350 0.0049     1.006394 0.0051
 rem life(abs)   2.7156E+00     2.6482E+00 0.0069     life(col/abs/tl)  2.6490E+00 0.0069   2.6624E+00 0.0048
 source points generated   1004                source_entropy  4.3674E+00

  estimator     cycle    38   ave of    13 cycles      combination         simple average    combined average     corr
 k(collision)      1.022489       1.008021 0.0057     k(col/abs)          1.008295 0.0058     1.007535 0.0061   0.9934
 k(absorption)     1.019864       1.008570 0.0058     k(abs/tk ln)        1.008253 0.0043     1.008126 0.0043   0.3696
 k(trk length)     1.011864       1.007935 0.0045     k(tk ln/col)        1.007978 0.0042     1.007962 0.0043   0.3682
 rem life(col)   2.6203E+00     2.6467E+00 0.0063     k(col/abs/tk ln)    1.008175 0.0046     1.007629 0.0046
 rem life(abs)   2.6220E+00     2.6462E+00 0.0064     life(col/abs/tl)  2.6468E+00 0.0064   2.6521E+00 0.0051
 source points generated   1033                source_entropy  4.4851E+00

  estimator     cycle    39   ave of    14 cycles      combination         simple average    combined average     corr
 k(collision)      0.999641       1.007422 0.0053     k(col/abs)          1.007535 0.0054     1.007176 0.0055   0.9919
 k(absorption)     0.995672       1.007648 0.0055     k(abs/tk ln)        1.007405 0.0041     1.007305 0.0041   0.3888
 k(trk length)     0.997094       1.007161 0.0042     k(tk ln/col)        1.007292 0.0040     1.007244 0.0040   0.3801
 rem life(col)   2.6991E+00     2.6504E+00 0.0060     k(col/abs/tk ln)    1.007410 0.0043     1.007030 0.0041
 rem life(abs)   2.7030E+00     2.6502E+00 0.0061     life(col/abs/tl)  2.6507E+00 0.0061   2.6482E+00 0.0047
 source points generated    973                source_entropy  4.4495E+00

  estimator     cycle    40   ave of    15 cycles      combination         simple average    combined average     corr
 k(collision)      1.006715       1.007375 0.0050     k(col/abs)          1.007430 0.0050     1.007257 0.0051   0.9917
 k(absorption)     1.005203       1.007485 0.0051     k(abs/tk ln)        1.007744 0.0038     1.007840 0.0038   0.3734
 k(trk length)     1.019798       1.008003 0.0040     k(tk ln/col)        1.007689 0.0037     1.007792 0.0038   0.3698
 rem life(col)   2.6811E+00     2.6525E+00 0.0056     k(col/abs/tk ln)    1.007621 0.0040     1.007701 0.0039
 rem life(abs)   2.6820E+00     2.6523E+00 0.0057     life(col/abs/tl)  2.6528E+00 0.0057   2.6484E+00 0.0044
 source points generated   1006                source_entropy  4.4331E+00

  estimator     cycle    41   ave of    16 cycles      combination         simple average    combined average     corr
 k(collision)      1.002579       1.007075 0.0047     k(col/abs)          1.007235 0.0047     1.006815 0.0048   0.9907
 k(absorption)     1.006044       1.007395 0.0048     k(abs/tk ln)        1.007650 0.0035     1.007744 0.0036   0.3737
 k(trk length)     1.006437       1.007905 0.0038     k(tk ln/col)        1.007490 0.0035     1.007627 0.0035   0.3705
 rem life(col)   2.6989E+00     2.6554E+00 0.0053     k(col/abs/tk ln)    1.007459 0.0038     1.007425 0.0037
 rem life(abs)   2.6965E+00     2.6551E+00 0.0054     life(col/abs/tl)  2.6558E+00 0.0054   2.6508E+00 0.0044
 source points generated   1011                source_entropy  4.3707E+00

  estimator     cycle    42   ave of    17 cycles      combination         simple average    combined average     corr
 k(collision)      0.989150       1.006021 0.0045     k(col/abs)          1.006371 0.0045     1.006141 0.0048   0.9873
 k(absorption)     0.995938       1.006721 0.0045     k(abs/tk ln)        1.006873 0.0034     1.006927 0.0034   0.3943
 k(trk length)     0.992940       1.007025 0.0036     k(tk ln/col)        1.006523 0.0034     1.006696 0.0034   0.4057
 rem life(col)   2.6607E+00     2.6557E+00 0.0050     k(col/abs/tk ln)    1.006589 0.0037     1.006857 0.0037
 rem life(abs)   2.6555E+00     2.6551E+00 0.0051     life(col/abs/tl)  2.6559E+00 0.0051   2.6554E+00 0.0048
 source points generated   1004                source_entropy  4.4168E+00

  estimator     cycle    43   ave of    18 cycles      combination         simple average    combined average     corr
 k(collision)      1.051388       1.008541 0.0049     k(col/abs)          1.008874 0.0049     1.008779 0.0052   0.9905
 k(absorption)     1.051462       1.009207 0.0049     k(abs/tk ln)        1.008059 0.0034     1.007485 0.0033   0.3247
 k(trk length)     1.004969       1.006911 0.0034     k(tk ln/col)        1.007726 0.0034     1.007317 0.0033   0.3324
 rem life(col)   2.7704E+00     2.6621E+00 0.0053     k(col/abs/tk ln)    1.008220 0.0038     1.007501 0.0035
 rem life(abs)   2.7708E+00     2.6616E+00 0.0054     life(col/abs/tl)  2.6621E+00 0.0054   2.6658E+00 0.0053
 source points generated   1055                source_entropy  4.5399E+00

  estimator     cycle    44   ave of    19 cycles      combination         simple average    combined average     corr
 k(collision)      0.985051       1.007305 0.0048     k(col/abs)          1.007575 0.0048     1.007299 0.0050   0.9909
 k(absorption)     0.983334       1.007845 0.0049     k(abs/tk ln)        1.006717 0.0035     1.006147 0.0034   0.3935
 k(trk length)     0.981779       1.005588 0.0035     k(tk ln/col)        1.006446 0.0035     1.006024 0.0034   0.3935
 rem life(col)   2.6054E+00     2.6591E+00 0.0051     k(col/abs/tk ln)    1.006913 0.0038     1.005965 0.0036
 rem life(abs)   2.6067E+00     2.6587E+00 0.0052     life(col/abs/tl)  2.6592E+00 0.0052   2.6612E+00 0.0053
 source points generated    937                source_entropy  4.4672E+00

  estimator     cycle    45   ave of    20 cycles      combination         simple average    combined average     corr
 k(collision)      0.977608       1.005820 0.0048     k(col/abs)          1.006170 0.0048     1.006208 0.0051   0.9911
 k(absorption)     0.981324       1.006519 0.0048     k(abs/tk ln)        1.005734 0.0035     1.005296 0.0033   0.4232
 k(trk length)     0.992795       1.004949 0.0034     k(tk ln/col)        1.005384 0.0035     1.005140 0.0033   0.4255
 rem life(col)   2.7984E+00     2.6660E+00 0.0055     k(col/abs/tk ln)    1.005763 0.0038     1.005287 0.0035
 rem life(abs)   2.7960E+00     2.6655E+00 0.0056     life(col/abs/tl)  2.6661E+00 0.0055   2.6685E+00 0.0060
 source points generated    961                source_entropy  4.4495E+00

  estimator     cycle    46   ave of    21 cycles      combination         simple average    combined average     corr
 k(collision)      0.990935       1.005111 0.0046     k(col/abs)          1.005493 0.0046     1.005623 0.0049   0.9911
 k(absorption)     0.993005       1.005876 0.0046     k(abs/tk ln)        1.004941 0.0034     1.004446 0.0033   0.4412
 k(trk length)     0.985172       1.004007 0.0034     k(tk ln/col)        1.004559 0.0034     1.004261 0.0033   0.4464
 rem life(col)   2.6612E+00     2.6658E+00 0.0053     k(col/abs/tk ln)    1.004998 0.0037     1.004542 0.0035
 rem life(abs)   2.6603E+00     2.6653E+00 0.0053     life(col/abs/tl)  2.6659E+00 0.0053   2.6683E+00 0.0057
 source points generated   1018                source_entropy  4.4214E+00

  estimator     cycle    47   ave of    22 cycles      combination         simple average    combined average     corr
 k(collision)      0.996630       1.004726 0.0044     k(col/abs)          1.005013 0.0044     1.004965 0.0046   0.9903
 k(absorption)     0.993233       1.005301 0.0044     k(abs/tk ln)        1.004381 0.0033     1.003892 0.0032   0.4529
 k(trk length)     0.992011       1.003462 0.0033     k(tk ln/col)        1.004094 0.0033     1.003759 0.0032   0.4529
 rem life(col)   2.6469E+00     2.6650E+00 0.0050     k(col/abs/tk ln)    1.004496 0.0036     1.003805 0.0033
 rem life(abs)   2.6489E+00     2.6645E+00 0.0051     life(col/abs/tl)  2.6652E+00 0.0050   2.6668E+00 0.0055
 source points generated    989                source_entropy  4.4616E+00

  estimator     cycle    48   ave of    23 cycles      combination         simple average    combined average     corr
 k(collision)      0.977267       1.003532 0.0044     k(col/abs)          1.003817 0.0044     1.003761 0.0046   0.9911
 k(absorption)     0.977743       1.004103 0.0044     k(abs/tk ln)        1.003839 0.0032     1.003691 0.0030   0.4259
 k(trk length)     1.006061       1.003575 0.0031     k(tk ln/col)        1.003553 0.0032     1.003565 0.0030   0.4260
 rem life(col)   2.6291E+00     2.6634E+00 0.0048     k(col/abs/tk ln)    1.003736 0.0035     1.003605 0.0032
 rem life(abs)   2.6297E+00     2.6630E+00 0.0049     life(col/abs/tl)  2.6636E+00 0.0048   2.6649E+00 0.0053
 source points generated    984                source_entropy  4.4960E+00

  estimator     cycle    49   ave of    24 cycles      combination         simple average    combined average     corr
 k(collision)      0.954018       1.001469 0.0047     k(col/abs)          1.001648 0.0047     1.001165 0.0048   0.9922
 k(absorption)     0.949486       1.001827 0.0048     k(abs/tk ln)        1.001765 0.0037     1.001723 0.0035   0.5692
 k(trk length)     0.958632       1.001702 0.0035     k(tk ln/col)        1.001585 0.0036     1.001656 0.0035   0.5572
 rem life(col)   2.7010E+00     2.6650E+00 0.0047     k(col/abs/tk ln)    1.001666 0.0039     1.001278 0.0036
 rem life(abs)   2.7043E+00     2.6647E+00 0.0047     life(col/abs/tl)  2.6653E+00 0.0047   2.6660E+00 0.0050
 source points generated    991                source_entropy  4.4990E+00

  estimator     cycle    50   ave of    25 cycles      combination         simple average    combined average     corr
 k(collision)      0.944238       0.999179 0.0051     k(col/abs)          0.999341 0.0051     0.998829 0.0052   0.9937
 k(absorption)     0.943698       0.999502 0.0052     k(abs/tk ln)        1.000298 0.0038     1.000960 0.0035   0.5798
 k(trk length)     0.986523       1.001095 0.0034     k(tk ln/col)        1.000137 0.0038     1.000887 0.0035   0.5691
 rem life(col)   2.8396E+00     2.6719E+00 0.0052     k(col/abs/tk ln)    0.999925 0.0042     1.000517 0.0035
 rem life(abs)   2.8399E+00     2.6718E+00 0.0052     life(col/abs/tl)  2.6722E+00 0.0052   2.6742E+00 0.0055
 source points generated    984                source_entropy  4.4523E+00

  estimator     cycle    51   ave of    26 cycles      combination         simple average    combined average     corr
 k(collision)      0.980423       0.998458 0.0049     k(col/abs)          0.998627 0.0050     0.998103 0.0050   0.9939
 k(absorption)     0.981159       0.998796 0.0050     k(abs/tk ln)        0.999359 0.0038     0.999791 0.0035   0.5880
 k(trk length)     0.970592       0.999922 0.0035     k(tk ln/col)        0.999190 0.0038     0.999718 0.0035   0.5796
 rem life(col)   2.5913E+00     2.6688E+00 0.0051     k(col/abs/tk ln)    0.999059 0.0041     0.999347 0.0036
 rem life(abs)   2.5907E+00     2.6686E+00 0.0051     life(col/abs/tl)  2.6690E+00 0.0051   2.6704E+00 0.0054
 source points generated   1016                source_entropy  4.4524E+00

  estimator     cycle    52   ave of    27 cycles      combination         simple average    combined average     corr
 k(collision)      1.016431       0.999124 0.0048     k(col/abs)          0.999280 0.0048     0.998814 0.0049   0.9939
 k(absorption)     1.016093       0.999437 0.0049     k(abs/tk ln)        1.000221 0.0038     1.000777 0.0036   0.5952
 k(trk length)     1.029157       1.001004 0.0035     k(tk ln/col)        1.000064 0.0037     1.000691 0.0036   0.5890
 rem life(col)   2.6492E+00     2.6681E+00 0.0049     k(col/abs/tk ln)    0.999855 0.0040     1.000375 0.0036
 rem life(abs)   2.6491E+00     2.6679E+00 0.0050     life(col/abs/tl)  2.6684E+00 0.0049   2.6701E+00 0.0052
 source points generated   1021                source_entropy  4.4062E+00

  estimator     cycle    53   ave of    28 cycles      combination         simple average    combined average     corr
 k(collision)      1.028009       1.000155 0.0047     k(col/abs)          1.000301 0.0047     0.999893 0.0048   0.9942
 k(absorption)     1.027698       1.000446 0.0048     k(abs/tk ln)        1.000656 0.0037     1.000805 0.0034   0.5729
 k(trk length)     0.997113       1.000865 0.0034     k(tk ln/col)        1.000510 0.0036     1.000750 0.0034   0.5654
 rem life(col)   2.6345E+00     2.6669E+00 0.0048     k(col/abs/tk ln)    1.000489 0.0039     1.000459 0.0035
 rem life(abs)   2.6341E+00     2.6667E+00 0.0048     life(col/abs/tl)  2.6672E+00 0.0048   2.6690E+00 0.0051
 source points generated    988                source_entropy  4.4070E+00

  estimator     cycle    54   ave of    29 cycles      combination         simple average    combined average     corr
 k(collision)      1.008710       1.000450 0.0046     k(col/abs)          1.000661 0.0046     1.000034 0.0047   0.9939
 k(absorption)     1.012759       1.000871 0.0046     k(abs/tk ln)        1.000668 0.0035     1.000529 0.0033   0.5553
 k(trk length)     0.989241       1.000465 0.0033     k(tk ln/col)        1.000457 0.0035     1.000462 0.0033   0.5523
 rem life(col)   2.6216E+00     2.6654E+00 0.0046     k(col/abs/tk ln)    1.000595 0.0038     1.000124 0.0034
 rem life(abs)   2.6186E+00     2.6650E+00 0.0047     life(col/abs/tl)  2.6657E+00 0.0046   2.6684E+00 0.0049
 source points generated   1011                source_entropy  4.4764E+00

  estimator     cycle    55   ave of    30 cycles      combination         simple average    combined average     corr
 k(collision)      0.983003       0.999869 0.0044     k(col/abs)          1.000114 0.0045     0.999471 0.0046   0.9938
 k(absorption)     0.985521       1.000359 0.0045     k(abs/tk ln)        1.000389 0.0034     1.000409 0.0032   0.5533
 k(trk length)     0.999066       1.000418 0.0032     k(tk ln/col)        1.000143 0.0034     1.000324 0.0032   0.5494
 rem life(col)   2.6292E+00     2.6641E+00 0.0045     k(col/abs/tk ln)    1.000215 0.0037     0.999956 0.0033
 rem life(abs)   2.6261E+00     2.6637E+00 0.0045     life(col/abs/tl)  2.6645E+00 0.0045   2.6682E+00 0.0048
 source points generated    962                source_entropy  4.4379E+00

  estimator     cycle    56   ave of    31 cycles      combination         simple average    combined average     corr
 k(collision)      0.983971       0.999356 0.0043     k(col/abs)          0.999555 0.0044     0.998968 0.0044   0.9937
 k(absorption)     0.981595       0.999754 0.0044     k(abs/tk ln)        1.000057 0.0033     1.000270 0.0031   0.5505
 k(trk length)     0.998642       1.000361 0.0031     k(tk ln/col)        0.999858 0.0033     1.000194 0.0031   0.5476
 rem life(col)   2.7462E+00     2.6668E+00 0.0045     k(col/abs/tk ln)    0.999824 0.0036     0.999882 0.0032
 rem life(abs)   2.7458E+00     2.6664E+00 0.0045     life(col/abs/tl)  2.6668E+00 0.0044   2.6704E+00 0.0045
 source points generated    957                source_entropy  4.4916E+00

  estimator     cycle    57   ave of    32 cycles      combination         simple average    combined average     corr
 k(collision)      0.973357       0.998543 0.0043     k(col/abs)          0.998674 0.0043     0.998193 0.0043   0.9936
 k(absorption)     0.969350       0.998804 0.0044     k(abs/tk ln)        0.999399 0.0033     0.999840 0.0030   0.5597
 k(trk length)     0.988632       0.999994 0.0030     k(tk ln/col)        0.999269 0.0032     0.999775 0.0030   0.5567
 rem life(col)   2.6403E+00     2.6660E+00 0.0043     k(col/abs/tk ln)    0.999114 0.0035     0.999514 0.0031
 rem life(abs)   2.6434E+00     2.6657E+00 0.0044     life(col/abs/tl)  2.6660E+00 0.0043   2.6682E+00 0.0044
 source points generated    978                source_entropy  4.4827E+00

  estimator     cycle    58   ave of    33 cycles      combination         simple average    combined average     corr
 k(collision)      0.980243       0.997989 0.0042     k(col/abs)          0.998050 0.0042     0.997799 0.0042   0.9933
 k(absorption)     0.975960       0.998112 0.0043     k(abs/tk ln)        0.998643 0.0033     0.999028 0.0031   0.5753
 k(trk length)     0.972940       0.999174 0.0030     k(tk ln/col)        0.998582 0.0032     0.998975 0.0030   0.5671
 rem life(col)   2.6916E+00     2.6667E+00 0.0042     k(col/abs/tk ln)    0.998425 0.0035     0.998805 0.0030
 rem life(abs)   2.6947E+00     2.6666E+00 0.0042     life(col/abs/tl)  2.6668E+00 0.0042   2.6684E+00 0.0042
 source points generated   1006                source_entropy  4.4445E+00

  estimator     cycle    59   ave of    34 cycles      combination         simple average    combined average     corr
 k(collision)      1.034862       0.999073 0.0042     k(col/abs)          0.999140 0.0042     0.998860 0.0042   0.9938
 k(absorption)     1.035352       0.999207 0.0043     k(abs/tk ln)        1.000044 0.0035     1.000517 0.0034   0.6089
 k(trk length)     1.057229       1.000882 0.0034     k(tk ln/col)        0.999978 0.0034     1.000427 0.0034   0.6037
 rem life(col)   2.7130E+00     2.6681E+00 0.0041     k(col/abs/tk ln)    0.999721 0.0036     1.000227 0.0033
 rem life(abs)   2.7135E+00     2.6679E+00 0.0041     life(col/abs/tl)  2.6682E+00 0.0041   2.6697E+00 0.0041
 source points generated   1088                source_entropy  4.3896E+00

  estimator     cycle    60   ave of    35 cycles      combination         simple average    combined average     corr
 k(collision)      1.004457       0.999227 0.0041     k(col/abs)          0.999327 0.0041     0.998906 0.0041   0.9937
 k(absorption)     1.006902       0.999427 0.0042     k(abs/tk ln)        1.000319 0.0034     1.000817 0.0033   0.6103
 k(trk length)     1.012432       1.001212 0.0033     k(tk ln/col)        1.000220 0.0033     1.000704 0.0033   0.6041
 rem life(col)   2.6932E+00     2.6688E+00 0.0040     k(col/abs/tk ln)    0.999955 0.0035     1.000401 0.0033
 rem life(abs)   2.6909E+00     2.6686E+00 0.0040     life(col/abs/tl)  2.6689E+00 0.0040   2.6709E+00 0.0040
 source points generated    966                source_entropy  4.3916E+00

  estimator     cycle    61   ave of    36 cycles      combination         simple average    combined average     corr
 k(collision)      1.032898       1.000163 0.0041     k(col/abs)          1.000304 0.0041     0.999624 0.0040   0.9939
 k(absorption)     1.036079       1.000445 0.0042     k(abs/tk ln)        1.001101 0.0034     1.001503 0.0033   0.6241
 k(trk length)     1.020856       1.001757 0.0033     k(tk ln/col)        1.000960 0.0033     1.001386 0.0032   0.6179
 rem life(col)   2.6311E+00     2.6678E+00 0.0039     k(col/abs/tk ln)    1.000788 0.0035     1.000903 0.0032
 rem life(abs)   2.6290E+00     2.6675E+00 0.0039     life(col/abs/tl)  2.6679E+00 0.0039   2.6707E+00 0.0039
 source points generated   1004                source_entropy  4.3709E+00

  estimator     cycle    62   ave of    37 cycles      combination         simple average    combined average     corr
 k(collision)      0.991475       0.999928 0.0040     k(col/abs)          1.000121 0.0040     0.999269 0.0040   0.9936
 k(absorption)     0.995636       1.000315 0.0041     k(abs/tk ln)        1.000885 0.0033     1.001230 0.0032   0.6240
 k(trk length)     0.990598       1.001456 0.0032     k(tk ln/col)        1.000692 0.0032     1.001097 0.0032   0.6197
 rem life(col)   2.6817E+00     2.6681E+00 0.0038     k(col/abs/tk ln)    1.000566 0.0034     1.000526 0.0032
 rem life(abs)   2.6789E+00     2.6678E+00 0.0038     life(col/abs/tl)  2.6684E+00 0.0038   2.6714E+00 0.0039
 source points generated    952                source_entropy  4.4226E+00

  estimator     cycle    63   ave of    38 cycles      combination         simple average    combined average     corr
 k(collision)      1.012956       1.000271 0.0039     k(col/abs)          1.000501 0.0039     0.999453 0.0039   0.9935
 k(absorption)     1.016128       1.000731 0.0040     k(abs/tk ln)        1.001074 0.0032     1.001283 0.0031   0.6193
 k(trk length)     0.999992       1.001417 0.0031     k(tk ln/col)        1.000844 0.0031     1.001151 0.0031   0.6161
 rem life(col)   2.7373E+00     2.6700E+00 0.0038     k(col/abs/tk ln)    1.000806 0.0034     1.000482 0.0031
 rem life(abs)   2.7348E+00     2.6696E+00 0.0038     life(col/abs/tl)  2.6701E+00 0.0038   2.6731E+00 0.0039
 source points generated   1049                source_entropy  4.4547E+00

  estimator     cycle    64   ave of    39 cycles      combination         simple average    combined average     corr
 k(collision)      1.019807       1.000771 0.0038     k(col/abs)          1.001048 0.0039     0.999711 0.0038   0.9935
 k(absorption)     1.023843       1.001324 0.0039     k(abs/tk ln)        1.001048 0.0031     1.000905 0.0030   0.5678
 k(trk length)     0.976288       1.000773 0.0031     k(tk ln/col)        1.000772 0.0031     1.000773 0.0030   0.5702
 rem life(col)   2.6962E+00     2.6706E+00 0.0037     k(col/abs/tk ln)    1.000956 0.0033     1.000081 0.0031
 rem life(abs)   2.6934E+00     2.6702E+00 0.0037     life(col/abs/tl)  2.6708E+00 0.0037   2.6738E+00 0.0038
 source points generated    990                source_entropy  4.4213E+00

  estimator     cycle    65   ave of    40 cycles      combination         simple average    combined average     corr
 k(collision)      1.007440       1.000938 0.0037     k(col/abs)          1.001106 0.0038     1.000464 0.0037   0.9918
 k(absorption)     0.999311       1.001273 0.0038     k(abs/tk ln)        1.001099 0.0030     1.001008 0.0030   0.5664
 k(trk length)     1.006804       1.000924 0.0030     k(tk ln/col)        1.000931 0.0030     1.000928 0.0029   0.5711
 rem life(col)   2.6708E+00     2.6706E+00 0.0036     k(col/abs/tk ln)    1.001045 0.0032     1.000634 0.0030
 rem life(abs)   2.6765E+00     2.6703E+00 0.0036     life(col/abs/tl)  2.6709E+00 0.0036   2.6737E+00 0.0037
 source points generated    972                source_entropy  4.4486E+00

  estimator     cycle    66   ave of    41 cycles      combination         simple average    combined average     corr
 k(collision)      1.041349       1.001924 0.0037     k(col/abs)          1.002071 0.0038     1.001558 0.0038   0.9921
 k(absorption)     1.040046       1.002219 0.0039     k(abs/tk ln)        1.001741 0.0030     1.001467 0.0029   0.5735
 k(trk length)     1.014822       1.001263 0.0030     k(tk ln/col)        1.001593 0.0030     1.001421 0.0029   0.5774
 rem life(col)   2.7588E+00     2.6728E+00 0.0036     k(col/abs/tk ln)    1.001802 0.0032     1.001205 0.0029
 rem life(abs)   2.7599E+00     2.6725E+00 0.0036     life(col/abs/tl)  2.6731E+00 0.0036   2.6759E+00 0.0037
 source points generated   1024                source_entropy  4.4540E+00

  estimator     cycle    67   ave of    42 cycles      combination         simple average    combined average     corr
 k(collision)      0.999339       1.001862 0.0037     k(col/abs)          1.002002 0.0037     1.001514 0.0037   0.9921
 k(absorption)     0.999006       1.002143 0.0038     k(abs/tk ln)        1.001708 0.0030     1.001459 0.0029   0.5733
 k(trk length)     1.001684       1.001273 0.0029     k(tk ln/col)        1.001568 0.0029     1.001414 0.0028   0.5773
 rem life(col)   2.6933E+00     2.6733E+00 0.0035     k(col/abs/tk ln)    1.001759 0.0031     1.001209 0.0029
 rem life(abs)   2.6934E+00     2.6730E+00 0.0035     life(col/abs/tl)  2.6735E+00 0.0035   2.6761E+00 0.0036
 source points generated    977                source_entropy  4.3205E+00

  estimator     cycle    68   ave of    43 cycles      combination         simple average    combined average     corr
 k(collision)      0.986051       1.001495 0.0036     k(col/abs)          1.001605 0.0036     1.001202 0.0036   0.9922
 k(absorption)     0.983782       1.001716 0.0037     k(abs/tk ln)        1.001407 0.0029     1.001226 0.0028   0.5754
 k(trk length)     0.993765       1.001098 0.0028     k(tk ln/col)        1.001296 0.0029     1.001191 0.0028   0.5794
 rem life(col)   2.7577E+00     2.6752E+00 0.0035     k(col/abs/tk ln)    1.001436 0.0031     1.001019 0.0028
 rem life(abs)   2.7594E+00     2.6750E+00 0.0035     life(col/abs/tl)  2.6755E+00 0.0035   2.6780E+00 0.0035
 source points generated    985                source_entropy  4.4523E+00

  estimator     cycle    69   ave of    44 cycles      combination         simple average    combined average     corr
 k(collision)      1.055474       1.002721 0.0037     k(col/abs)          1.002797 0.0037     1.002584 0.0037   0.9926
 k(absorption)     1.052663       1.002873 0.0038     k(abs/tk ln)        1.002456 0.0030     1.002193 0.0029   0.6169
 k(trk length)     1.042497       1.002039 0.0029     k(tk ln/col)        1.002380 0.0030     1.002177 0.0029   0.6239
 rem life(col)   2.6437E+00     2.6745E+00 0.0034     k(col/abs/tk ln)    1.002545 0.0032     1.002115 0.0029
 rem life(abs)   2.6457E+00     2.6744E+00 0.0034     life(col/abs/tl)  2.6749E+00 0.0034   2.6775E+00 0.0035
 source points generated   1051                source_entropy  4.4493E+00

  estimator     cycle    70   ave of    45 cycles      combination         simple average    combined average     corr
 k(collision)      1.022992       1.003172 0.0037     k(col/abs)          1.003258 0.0037     1.003008 0.0037   0.9927
 k(absorption)     1.024082       1.003345 0.0037     k(abs/tk ln)        1.002616 0.0030     1.002161 0.0028   0.6045
 k(trk length)     0.995254       1.001888 0.0029     k(tk ln/col)        1.002530 0.0029     1.002151 0.0028   0.6119
 rem life(col)   2.6414E+00     2.6738E+00 0.0034     k(col/abs/tk ln)    1.002802 0.0031     1.002083 0.0029
 rem life(abs)   2.6408E+00     2.6736E+00 0.0034     life(col/abs/tl)  2.6741E+00 0.0034   2.6759E+00 0.0034
 source points generated    969                source_entropy  4.3566E+00

  estimator     cycle    71   ave of    46 cycles      combination         simple average    combined average     corr
 k(collision)      1.015025       1.003430 0.0036     k(col/abs)          1.003459 0.0036     1.003386 0.0036   0.9922
 k(absorption)     1.009940       1.003488 0.0037     k(abs/tk ln)        1.002555 0.0029     1.001988 0.0028   0.5977
 k(trk length)     0.989666       1.001623 0.0028     k(tk ln/col)        1.002526 0.0029     1.002009 0.0028   0.6008
 rem life(col)   2.6988E+00     2.6743E+00 0.0033     k(col/abs/tk ln)    1.002847 0.0031     1.001987 0.0028
 rem life(abs)   2.7011E+00     2.6742E+00 0.0033     life(col/abs/tl)  2.6747E+00 0.0033   2.6764E+00 0.0033
 source points generated    990                source_entropy  4.4877E+00

  estimator     cycle    72   ave of    47 cycles      combination         simple average    combined average     corr
 k(collision)      0.966243       1.002638 0.0036     k(col/abs)          1.002666 0.0036     1.002596 0.0036   0.9926
 k(absorption)     0.966163       1.002694 0.0037     k(abs/tk ln)        1.001854 0.0029     1.001320 0.0028   0.6164
 k(trk length)     0.973035       1.001014 0.0028     k(tk ln/col)        1.001826 0.0029     1.001339 0.0028   0.6197
 rem life(col)   2.7051E+00     2.6750E+00 0.0032     k(col/abs/tk ln)    1.002116 0.0031     1.001317 0.0028
 rem life(abs)   2.7046E+00     2.6749E+00 0.0033     life(col/abs/tl)  2.6754E+00 0.0032   2.6771E+00 0.0033
 source points generated    919                source_entropy  4.4744E+00

  estimator     cycle    73   ave of    48 cycles      combination         simple average    combined average     corr
 k(collision)      0.993721       1.002453 0.0035     k(col/abs)          1.002486 0.0036     1.002403 0.0035   0.9926
 k(absorption)     0.994271       1.002518 0.0036     k(abs/tk ln)        1.001457 0.0029     1.000841 0.0028   0.6114
 k(trk length)     0.971317       1.000396 0.0028     k(tk ln/col)        1.001424 0.0029     1.000864 0.0028   0.6154
 rem life(col)   2.7672E+00     2.6769E+00 0.0032     k(col/abs/tk ln)    1.001789 0.0030     1.000841 0.0028
 rem life(abs)   2.7663E+00     2.6768E+00 0.0033     life(col/abs/tl)  2.6773E+00 0.0032   2.6791E+00 0.0033
 source points generated   1014                source_entropy  4.3571E+00

  estimator     cycle    74   ave of    49 cycles      combination         simple average    combined average     corr
 k(collision)      0.984662       1.002089 0.0035     k(col/abs)          1.002095 0.0035     1.002079 0.0035   0.9926
 k(absorption)     0.982081       1.002101 0.0035     k(abs/tk ln)        1.001453 0.0028     1.001105 0.0028   0.5836
 k(trk length)     1.020424       1.000804 0.0028     k(tk ln/col)        1.001447 0.0028     1.001125 0.0027   0.5903
 rem life(col)   2.6099E+00     2.6755E+00 0.0032     k(col/abs/tk ln)    1.001665 0.0030     1.001126 0.0028
 rem life(abs)   2.6124E+00     2.6754E+00 0.0032     life(col/abs/tl)  2.6759E+00 0.0032   2.6773E+00 0.0033
 source points generated   1001                source_entropy  4.4675E+00

  estimator     cycle    75   ave of    50 cycles      combination         simple average    combined average     corr
 k(collision)      1.010617       1.002260 0.0034     k(col/abs)          1.002267 0.0034     1.002248 0.0034   0.9926
 k(absorption)     1.010744       1.002274 0.0035     k(abs/tk ln)        1.001218 0.0028     1.000737 0.0027   0.5563
 k(trk length)     0.968646       1.000161 0.0028     k(tk ln/col)        1.001211 0.0028     1.000770 0.0027   0.5627
 rem life(col)   2.6151E+00     2.6743E+00 0.0032     k(col/abs/tk ln)    1.001565 0.0029     1.000774 0.0028
 rem life(abs)   2.6148E+00     2.6742E+00 0.0032     life(col/abs/tl)  2.6747E+00 0.0032   2.6764E+00 0.0033
 source points generated   1051                source_entropy  4.5066E+00

  estimator     cycle    76   ave of    51 cycles      combination         simple average    combined average     corr
 k(collision)      1.007454       1.002362 0.0033     k(col/abs)          1.002386 0.0034     1.002320 0.0034   0.9926
 k(absorption)     1.009208       1.002410 0.0034     k(abs/tk ln)        1.001105 0.0027     1.000543 0.0027   0.5460
 k(trk length)     0.981738       0.999800 0.0028     k(tk ln/col)        1.001081 0.0027     1.000574 0.0027   0.5537
 rem life(col)   2.6993E+00     2.6748E+00 0.0031     k(col/abs/tk ln)    1.001524 0.0029     1.000568 0.0027
 rem life(abs)   2.6966E+00     2.6747E+00 0.0031     life(col/abs/tl)  2.6751E+00 0.0031   2.6767E+00 0.0032
 source points generated    974                source_entropy  4.4721E+00

  estimator     cycle    77   ave of    52 cycles      combination         simple average    combined average     corr
 k(collision)      0.942694       1.001214 0.0035     k(col/abs)          1.001259 0.0035     1.001163 0.0035   0.9932
 k(absorption)     0.944877       1.001304 0.0035     k(abs/tk ln)        1.000502 0.0027     1.000093 0.0027   0.5295
 k(trk length)     0.994653       0.999701 0.0027     k(tk ln/col)        1.000458 0.0027     1.000088 0.0027   0.5343
 rem life(col)   2.7384E+00     2.6761E+00 0.0031     k(col/abs/tk ln)    1.000740 0.0029     1.000066 0.0027
 rem life(abs)   2.7366E+00     2.6759E+00 0.0031     life(col/abs/tl)  2.6763E+00 0.0031   2.6779E+00 0.0032
 source points generated    922                source_entropy  4.4631E+00

  estimator     cycle    78   ave of    53 cycles      combination         simple average    combined average     corr
 k(collision)      1.009457       1.001370 0.0034     k(col/abs)          1.001442 0.0034     1.001281 0.0034   0.9931
 k(absorption)     1.012485       1.001515 0.0035     k(abs/tk ln)        1.000793 0.0027     1.000433 0.0026   0.5319
 k(trk length)     1.019322       1.000071 0.0027     k(tk ln/col)        1.000721 0.0027     1.000413 0.0026   0.5350
 rem life(col)   2.7198E+00     2.6769E+00 0.0031     k(col/abs/tk ln)    1.000985 0.0029     1.000361 0.0026
 rem life(abs)   2.7179E+00     2.6767E+00 0.0031     life(col/abs/tl)  2.6771E+00 0.0030   2.6787E+00 0.0031
 source points generated   1095                source_entropy  4.4225E+00

  estimator     cycle    79   ave of    54 cycles      combination         simple average    combined average     corr
 k(collision)      1.000061       1.001346 0.0033     k(col/abs)          1.001396 0.0034     1.001284 0.0034   0.9930
 k(absorption)     0.997809       1.001446 0.0034     k(abs/tk ln)        1.000919 0.0027     1.000665 0.0026   0.5255
 k(trk length)     1.017351       1.000391 0.0027     k(tk ln/col)        1.000868 0.0026     1.000651 0.0026   0.5303
 rem life(col)   2.7272E+00     2.6778E+00 0.0030     k(col/abs/tk ln)    1.001061 0.0028     1.000622 0.0026
 rem life(abs)   2.7284E+00     2.6776E+00 0.0030     life(col/abs/tl)  2.6780E+00 0.0030   2.6796E+00 0.0031
 source points generated    979                source_entropy  4.4326E+00

  estimator     cycle    80   ave of    55 cycles      combination         simple average    combined average     corr
 k(collision)      0.991797       1.001172 0.0033     k(col/abs)          1.001233 0.0033     1.001101 0.0033   0.9930
 k(absorption)     0.993078       1.001294 0.0033     k(abs/tk ln)        1.000500 0.0026     1.000170 0.0026   0.5195
 k(trk length)     0.962742       0.999707 0.0027     k(tk ln/col)        1.000439 0.0026     1.000152 0.0026   0.5257
 rem life(col)   2.7888E+00     2.6798E+00 0.0031     k(col/abs/tk ln)    1.000724 0.0028     1.000124 0.0026
 rem life(abs)   2.7872E+00     2.6796E+00 0.0031     life(col/abs/tl)  2.6800E+00 0.0030   2.6816E+00 0.0031
 source points generated    990                source_entropy  4.4584E+00

  estimator     cycle    81   ave of    56 cycles      combination         simple average    combined average     corr
 k(collision)      0.981232       1.000816 0.0033     k(col/abs)          1.000890 0.0033     1.000739 0.0033   0.9930
 k(absorption)     0.982816       1.000964 0.0033     k(abs/tk ln)        1.000114 0.0026     0.999769 0.0026   0.5263
 k(trk length)     0.974950       0.999265 0.0027     k(tk ln/col)        1.000040 0.0026     0.999742 0.0026   0.5334
 rem life(col)   2.6704E+00     2.6797E+00 0.0030     k(col/abs/tk ln)    1.000348 0.0028     0.999718 0.0026
 rem life(abs)   2.6696E+00     2.6794E+00 0.0030     life(col/abs/tl)  2.6799E+00 0.0030   2.6815E+00 0.0031
 source points generated    990                source_entropy  4.5015E+00

  estimator     cycle    82   ave of    57 cycles      combination         simple average    combined average     corr
 k(collision)      1.024730       1.001236 0.0032     k(col/abs)          1.001315 0.0032     1.001147 0.0032   0.9931
 k(absorption)     1.025551       1.001395 0.0033     k(abs/tk ln)        1.000174 0.0026     0.999696 0.0026   0.5028
 k(trk length)     0.981484       0.998953 0.0027     k(tk ln/col)        1.000094 0.0026     0.999672 0.0025   0.5101
 rem life(col)   2.6169E+00     2.6786E+00 0.0030     k(col/abs/tk ln)    1.000528 0.0027     0.999647 0.0026
 rem life(abs)   2.6164E+00     2.6783E+00 0.0030     life(col/abs/tl)  2.6788E+00 0.0030   2.6804E+00 0.0030
 source points generated   1070                source_entropy  4.4892E+00

  estimator     cycle    83   ave of    58 cycles      combination         simple average    combined average     corr
 k(collision)      0.954252       1.000425 0.0033     k(col/abs)          1.000488 0.0033     1.000332 0.0033   0.9936
 k(absorption)     0.952438       1.000551 0.0033     k(abs/tk ln)        0.999820 0.0026     0.999510 0.0025   0.4725
 k(trk length)     1.006887       0.999089 0.0026     k(tk ln/col)        0.999757 0.0025     0.999489 0.0025   0.4807
 rem life(col)   2.7324E+00     2.6795E+00 0.0029     k(col/abs/tk ln)    1.000022 0.0027     0.999466 0.0025
 rem life(abs)   2.7327E+00     2.6793E+00 0.0030     life(col/abs/tl)  2.6797E+00 0.0029   2.6813E+00 0.0030
 source points generated    898                source_entropy  4.5064E+00

  estimator     cycle    84   ave of    59 cycles      combination         simple average    combined average     corr
 k(collision)      0.971402       0.999934 0.0033     k(col/abs)          0.999949 0.0033     0.999901 0.0033   0.9934
 k(absorption)     0.965987       0.999965 0.0033     k(abs/tk ln)        0.999130 0.0026     0.998803 0.0026   0.4964
 k(trk length)     0.952175       0.998294 0.0027     k(tk ln/col)        0.999114 0.0026     0.998822 0.0026   0.4986
 rem life(col)   2.7257E+00     2.6803E+00 0.0029     k(col/abs/tk ln)    0.999398 0.0028     0.998811 0.0026
 rem life(abs)   2.7299E+00     2.6801E+00 0.0029     life(col/abs/tl)  2.6805E+00 0.0029   2.6822E+00 0.0029
 source points generated    988                source_entropy  4.4968E+00

  estimator     cycle    85   ave of    60 cycles      combination         simple average    combined average     corr
 k(collision)      0.981826       0.999632 0.0032     k(col/abs)          0.999620 0.0032     0.999657 0.0032   0.9934
 k(absorption)     0.978574       0.999609 0.0033     k(abs/tk ln)        0.998988 0.0026     0.998742 0.0025   0.4903
 k(trk length)     1.002651       0.998367 0.0027     k(tk ln/col)        0.998999 0.0025     0.998772 0.0025   0.4937
 rem life(col)   2.7055E+00     2.6807E+00 0.0029     k(col/abs/tk ln)    0.999203 0.0027     0.998796 0.0025
 rem life(abs)   2.7084E+00     2.6806E+00 0.0029     life(col/abs/tl)  2.6810E+00 0.0029   2.6825E+00 0.0029
 source points generated    987                source_entropy  4.4760E+00

  estimator     cycle    86   ave of    61 cycles      combination         simple average    combined average     corr
 k(collision)      1.018573       0.999942 0.0032     k(col/abs)          0.999900 0.0032     1.000023 0.0032   0.9932
 k(absorption)     1.014748       0.999857 0.0032     k(abs/tk ln)        0.999026 0.0025     0.998700 0.0025   0.4828
 k(trk length)     0.987862       0.998195 0.0026     k(tk ln/col)        0.999068 0.0025     0.998756 0.0025   0.4838
 rem life(col)   2.6990E+00     2.6810E+00 0.0028     k(col/abs/tk ln)    0.999331 0.0027     0.998819 0.0025
 rem life(abs)   2.7025E+00     2.6810E+00 0.0028     life(col/abs/tl)  2.6813E+00 0.0028   2.6828E+00 0.0029
 source points generated   1055                source_entropy  4.4217E+00

  estimator     cycle    87   ave of    62 cycles      combination         simple average    combined average     corr
 k(collision)      0.983235       0.999673 0.0031     k(col/abs)          0.999624 0.0032     0.999768 0.0031   0.9932
 k(absorption)     0.982327       0.999574 0.0032     k(abs/tk ln)        0.998778 0.0025     0.998462 0.0025   0.4865
 k(trk length)     0.984937       0.997981 0.0026     k(tk ln/col)        0.998827 0.0025     0.998522 0.0024   0.4875
 rem life(col)   2.6394E+00     2.6803E+00 0.0028     k(col/abs/tk ln)    0.999076 0.0026     0.998596 0.0025
 rem life(abs)   2.6397E+00     2.6803E+00 0.0028     life(col/abs/tl)  2.6807E+00 0.0028   2.6822E+00 0.0028
 source points generated    954                source_entropy  4.3967E+00

  estimator     cycle    88   ave of    63 cycles      combination         simple average    combined average     corr
 k(collision)      1.031834       1.000183 0.0031     k(col/abs)          1.000117 0.0031     1.000293 0.0031   0.9933
 k(absorption)     1.029601       1.000051 0.0032     k(abs/tk ln)        0.999011 0.0025     0.998584 0.0024   0.4805
 k(trk length)     0.997412       0.997972 0.0026     k(tk ln/col)        0.999078 0.0024     0.998658 0.0024   0.4804
 rem life(col)   2.7174E+00     2.6809E+00 0.0027     k(col/abs/tk ln)    0.999402 0.0026     0.998747 0.0024
 rem life(abs)   2.7191E+00     2.6809E+00 0.0028     life(col/abs/tl)  2.6813E+00 0.0027   2.6827E+00 0.0028
 source points generated   1058                source_entropy  4.4283E+00

  estimator     cycle    89   ave of    64 cycles      combination         simple average    combined average     corr
 k(collision)      1.023790       1.000552 0.0031     k(col/abs)          1.000461 0.0031     1.000676 0.0031   0.9932
 k(absorption)     1.020474       1.000370 0.0031     k(abs/tk ln)        0.999077 0.0024     0.998551 0.0024   0.4691
 k(trk length)     0.985917       0.997783 0.0025     k(tk ln/col)        0.999168 0.0024     0.998645 0.0024   0.4667
 rem life(col)   2.6697E+00     2.6807E+00 0.0027     k(col/abs/tk ln)    0.999569 0.0026     0.998760 0.0024
 rem life(abs)   2.6723E+00     2.6808E+00 0.0027     life(col/abs/tl)  2.6812E+00 0.0027   2.6824E+00 0.0027
 source points generated   1007                source_entropy  4.3662E+00

  estimator     cycle    90   ave of    65 cycles      combination         simple average    combined average     corr
 k(collision)      1.016609       1.000799 0.0031     k(col/abs)          1.000722 0.0031     1.000911 0.0031   0.9932
 k(absorption)     1.018289       1.000646 0.0031     k(abs/tk ln)        0.999443 0.0024     0.998973 0.0024   0.4756
 k(trk length)     1.027421       0.998239 0.0025     k(tk ln/col)        0.999519 0.0024     0.999061 0.0024   0.4721
 rem life(col)   2.6516E+00     2.6803E+00 0.0027     k(col/abs/tk ln)    0.999895 0.0026     0.999169 0.0024
 rem life(abs)   2.6500E+00     2.6803E+00 0.0027     life(col/abs/tl)  2.6807E+00 0.0027   2.6821E+00 0.0027
 source points generated    999                source_entropy  4.4287E+00

  estimator     cycle    91   ave of    66 cycles      combination         simple average    combined average     corr
 k(collision)      1.012024       1.000969 0.0030     k(col/abs)          1.000900 0.0030     1.001072 0.0030   0.9933
 k(absorption)     1.012921       1.000832 0.0031     k(abs/tk ln)        0.999594 0.0024     0.999108 0.0024   0.4770
 k(trk length)     1.005904       0.998356 0.0025     k(tk ln/col)        0.999662 0.0024     0.999192 0.0023   0.4735
 rem life(col)   2.7475E+00     2.6813E+00 0.0027     k(col/abs/tk ln)    1.000052 0.0025     0.999291 0.0023
 rem life(abs)   2.7454E+00     2.6813E+00 0.0027     life(col/abs/tl)  2.6817E+00 0.0026   2.6831E+00 0.0027
 source points generated   1006                source_entropy  4.4852E+00

  estimator     cycle    92   ave of    67 cycles      combination         simple average    combined average     corr
 k(collision)      0.963757       1.000414 0.0030     k(col/abs)          1.000353 0.0030     1.000496 0.0030   0.9934
 k(absorption)     0.964706       1.000293 0.0031     k(abs/tk ln)        0.999055 0.0024     0.998569 0.0024   0.4964
 k(trk length)     0.962309       0.997818 0.0025     k(tk ln/col)        0.999116 0.0024     0.998645 0.0024   0.4940
 rem life(col)   2.8487E+00     2.6838E+00 0.0028     k(col/abs/tk ln)    0.999508 0.0025     0.998724 0.0024
 rem life(abs)   2.8478E+00     2.6838E+00 0.0028     life(col/abs/tl)  2.6842E+00 0.0028   2.6857E+00 0.0028
 source points generated    935                source_entropy  4.3392E+00

  estimator     cycle    93   ave of    68 cycles      combination         simple average    combined average     corr
 k(collision)      1.058438       1.001267 0.0031     k(col/abs)          1.001227 0.0031     1.001344 0.0031   0.9939
 k(absorption)     1.061055       1.001186 0.0032     k(abs/tk ln)        0.999560 0.0024     0.998817 0.0024   0.4889
 k(trk length)     1.005756       0.997934 0.0025     k(tk ln/col)        0.999601 0.0024     0.998892 0.0024   0.4874
 rem life(col)   2.6355E+00     2.6831E+00 0.0027     k(col/abs/tk ln)    1.000129 0.0026     0.998963 0.0024
 rem life(abs)   2.6339E+00     2.6830E+00 0.0028     life(col/abs/tl)  2.6835E+00 0.0027   2.6850E+00 0.0028
 source points generated   1123                source_entropy  4.4170E+00

  estimator     cycle    94   ave of    69 cycles      combination         simple average    combined average     corr
 k(collision)      0.977113       1.000917 0.0031     k(col/abs)          1.000894 0.0031     1.000956 0.0031   0.9939
 k(absorption)     0.979399       1.000870 0.0031     k(abs/tk ln)        0.999316 0.0024     0.998594 0.0024   0.4923
 k(trk length)     0.986047       0.997762 0.0024     k(tk ln/col)        0.999340 0.0024     0.998653 0.0023   0.4911
 rem life(col)   2.6822E+00     2.6831E+00 0.0027     k(col/abs/tk ln)    0.999850 0.0026     0.998692 0.0024
 rem life(abs)   2.6801E+00     2.6830E+00 0.0027     life(col/abs/tl)  2.6834E+00 0.0027   2.6851E+00 0.0028
 source points generated    904                source_entropy  4.4102E+00

  estimator     cycle    95   ave of    70 cycles      combination         simple average    combined average     corr
 k(collision)      1.015687       1.001128 0.0030     k(col/abs)          1.001129 0.0031     1.001126 0.0030   0.9938
 k(absorption)     1.019049       1.001130 0.0031     k(abs/tk ln)        0.999573 0.0024     0.998848 0.0023   0.4967
 k(trk length)     1.015472       0.998015 0.0024     k(tk ln/col)        0.999572 0.0024     0.998898 0.0023   0.4945
 rem life(col)   2.6151E+00     2.6821E+00 0.0027     k(col/abs/tk ln)    1.000091 0.0025     0.998905 0.0023
 rem life(abs)   2.6126E+00     2.6820E+00 0.0027     life(col/abs/tl)  2.6825E+00 0.0027   2.6842E+00 0.0027
 source points generated   1049                source_entropy  4.3897E+00

  estimator     cycle    96   ave of    71 cycles      combination         simple average    combined average     corr
 k(collision)      1.033965       1.001591 0.0030     k(col/abs)          1.001591 0.0030     1.001590 0.0030   0.9940
 k(absorption)     1.033874       1.001591 0.0031     k(abs/tk ln)        0.999895 0.0024     0.999074 0.0023   0.5011
 k(trk length)     1.011014       0.998198 0.0024     k(tk ln/col)        0.999894 0.0024     0.999128 0.0023   0.4989
 rem life(col)   2.6771E+00     2.6820E+00 0.0027     k(col/abs/tk ln)    1.000460 0.0025     0.999136 0.0023
 rem life(abs)   2.6765E+00     2.6819E+00 0.0027     life(col/abs/tl)  2.6824E+00 0.0026   2.6842E+00 0.0027
 source points generated   1048                source_entropy  4.3552E+00

  estimator     cycle    97   ave of    72 cycles      combination         simple average    combined average     corr
 k(collision)      0.987591       1.001396 0.0030     k(col/abs)          1.001423 0.0030     1.001354 0.0030   0.9938
 k(absorption)     0.991415       1.001450 0.0030     k(abs/tk ln)        1.000010 0.0023     0.999358 0.0023   0.4872
 k(trk length)     1.024954       0.998570 0.0024     k(tk ln/col)        0.999983 0.0023     0.999389 0.0023   0.4817
 rem life(col)   2.6401E+00     2.6815E+00 0.0026     k(col/abs/tk ln)    1.000472 0.0025     0.999343 0.0023
 rem life(abs)   2.6394E+00     2.6813E+00 0.0026     life(col/abs/tl)  2.6818E+00 0.0026   2.6835E+00 0.0027
 source points generated    933                source_entropy  4.4686E+00

  estimator     cycle    98   ave of    73 cycles      combination         simple average    combined average     corr
 k(collision)      0.983142       1.001146 0.0030     k(col/abs)          1.001178 0.0030     1.001097 0.0030   0.9939
 k(absorption)     0.983989       1.001211 0.0030     k(abs/tk ln)        0.999848 0.0023     0.999225 0.0023   0.4882
 k(trk length)     0.992407       0.998485 0.0024     k(tk ln/col)        0.999816 0.0023     0.999249 0.0022   0.4827
 rem life(col)   2.8022E+00     2.6831E+00 0.0027     k(col/abs/tk ln)    1.000281 0.0025     0.999194 0.0022
 rem life(abs)   2.8019E+00     2.6830E+00 0.0027     life(col/abs/tl)  2.6835E+00 0.0027   2.6848E+00 0.0027
 source points generated   1001                source_entropy  4.3874E+00

  estimator     cycle    99   ave of    74 cycles      combination         simple average    combined average     corr
 k(collision)      1.056380       1.001892 0.0030     k(col/abs)          1.001923 0.0030     1.001846 0.0030   0.9942
 k(absorption)     1.056250       1.001954 0.0031     k(abs/tk ln)        1.000431 0.0024     0.999668 0.0023   0.5094
 k(trk length)     1.029696       0.998907 0.0024     k(tk ln/col)        1.000400 0.0023     0.999697 0.0023   0.5043
 rem life(col)   2.6218E+00     2.6823E+00 0.0026     k(col/abs/tk ln)    1.000918 0.0025     0.999645 0.0023
 rem life(abs)   2.6216E+00     2.6821E+00 0.0027     life(col/abs/tl)  2.6827E+00 0.0026   2.6844E+00 0.0027
 source points generated   1075                source_entropy  4.4363E+00

  estimator     cycle   100   ave of    75 cycles      combination         simple average    combined average     corr
 k(collision)      1.002979       1.001907 0.0030     k(col/abs)          1.001966 0.0030     1.001821 0.0030   0.9940
 k(absorption)     1.007179       1.002024 0.0030     k(abs/tk ln)        1.000435 0.0023     0.999641 0.0023   0.5085
 k(trk length)     0.994344       0.998846 0.0023     k(tk ln/col)        1.000377 0.0023     0.999658 0.0023   0.5040
 rem life(col)   2.6634E+00     2.6820E+00 0.0026     k(col/abs/tk ln)    1.000926 0.0025     0.999568 0.0023
 rem life(abs)   2.6606E+00     2.6819E+00 0.0026     life(col/abs/tl)  2.6824E+00 0.0026   2.6843E+00 0.0027
 source points generated    896                source_entropy  4.4030E+00

  estimator     cycle   101   ave of    76 cycles      combination         simple average    combined average     corr
 k(collision)      1.010440       1.002019 0.0029     k(col/abs)          1.002081 0.0030     1.001927 0.0029   0.9941
 k(absorption)     1.011090       1.002143 0.0030     k(abs/tk ln)        1.000496 0.0023     0.999671 0.0022   0.5081
 k(trk length)     0.998994       0.998848 0.0023     k(tk ln/col)        1.000434 0.0023     0.999687 0.0022   0.5037
 rem life(col)   2.6695E+00     2.6819E+00 0.0026     k(col/abs/tk ln)    1.001004 0.0024     0.999592 0.0022
 rem life(abs)   2.6696E+00     2.6817E+00 0.0026     life(col/abs/tl)  2.6823E+00 0.0026   2.6843E+00 0.0027
 source points generated    999                source_entropy  4.3690E+00

  estimator     cycle   102   ave of    77 cycles      combination         simple average    combined average     corr
 k(collision)      1.052817       1.002679 0.0030     k(col/abs)          1.002769 0.0030     1.002486 0.0030   0.9943
 k(absorption)     1.057296       1.002860 0.0030     k(abs/tk ln)        1.001139 0.0024     1.000234 0.0023   0.5364
 k(trk length)     1.042738       0.999418 0.0023     k(tk ln/col)        1.001049 0.0023     1.000256 0.0023   0.5304
 rem life(col)   2.5491E+00     2.6801E+00 0.0026     k(col/abs/tk ln)    1.001652 0.0025     1.000067 0.0023
 rem life(abs)   2.5462E+00     2.6799E+00 0.0026     life(col/abs/tl)  2.6806E+00 0.0026   2.6826E+00 0.0027
 source points generated   1088                source_entropy  4.4504E+00

  estimator     cycle   103   ave of    78 cycles      combination         simple average    combined average     corr
 k(collision)      0.993005       1.002555 0.0029     k(col/abs)          1.002620 0.0030     1.002411 0.0029   0.9941
 k(absorption)     0.989263       1.002685 0.0030     k(abs/tk ln)        1.001039 0.0023     1.000169 0.0023   0.5361
 k(trk length)     0.997462       0.999393 0.0023     k(tk ln/col)        1.000974 0.0023     1.000203 0.0022   0.5303
 rem life(col)   2.6345E+00     2.6796E+00 0.0026     k(col/abs/tk ln)    1.001544 0.0025     1.000070 0.0022
 rem life(abs)   2.6374E+00     2.6794E+00 0.0026     life(col/abs/tl)  2.6800E+00 0.0026   2.6818E+00 0.0027
 source points generated    956                source_entropy  4.4634E+00

  estimator     cycle   104   ave of    79 cycles      combination         simple average    combined average     corr
 k(collision)      1.007508       1.002618 0.0029     k(col/abs)          1.002712 0.0029     1.002410 0.0029   0.9940
 k(absorption)     1.012242       1.002806 0.0030     k(abs/tk ln)        1.001072 0.0023     1.000157 0.0022   0.5345
 k(trk length)     0.995033       0.999338 0.0023     k(tk ln/col)        1.000978 0.0023     1.000180 0.0022   0.5295
 rem life(col)   2.7546E+00     2.6805E+00 0.0026     k(col/abs/tk ln)    1.001587 0.0024     0.999997 0.0022
 rem life(abs)   2.7505E+00     2.6803E+00 0.0026     life(col/abs/tl)  2.6809E+00 0.0026   2.6829E+00 0.0027
 source points generated   1016                source_entropy  4.4316E+00

  estimator     cycle   105   ave of    80 cycles      combination         simple average    combined average     corr
 k(collision)      1.048291       1.003189 0.0029     k(col/abs)          1.003278 0.0029     1.003002 0.0029   0.9942
 k(absorption)     1.047660       1.003367 0.0030     k(abs/tk ln)        1.001498 0.0023     1.000458 0.0022   0.5448
 k(trk length)     1.022668       0.999629 0.0023     k(tk ln/col)        1.001409 0.0023     1.000488 0.0022   0.5401
 rem life(col)   2.6375E+00     2.6800E+00 0.0026     k(col/abs/tk ln)    1.002062 0.0025     1.000321 0.0022
 rem life(abs)   2.6373E+00     2.6798E+00 0.0026     life(col/abs/tl)  2.6803E+00 0.0026   2.6820E+00 0.0027
 source points generated   1019                source_entropy  4.5081E+00

  estimator     cycle   106   ave of    81 cycles      combination         simple average    combined average     corr
 k(collision)      1.001990       1.003174 0.0029     k(col/abs)          1.003253 0.0029     1.003008 0.0029   0.9941
 k(absorption)     1.000601       1.003333 0.0029     k(abs/tk ln)        1.001368 0.0023     1.000296 0.0022   0.5431
 k(trk length)     0.981259       0.999403 0.0023     k(tk ln/col)        1.001288 0.0023     1.000334 0.0022   0.5379
 rem life(col)   2.6637E+00     2.6798E+00 0.0025     k(col/abs/tk ln)    1.001970 0.0024     1.000179 0.0022
 rem life(abs)   2.6646E+00     2.6796E+00 0.0025     life(col/abs/tl)  2.6801E+00 0.0025   2.6818E+00 0.0026
 source points generated    967                source_entropy  4.4685E+00

  estimator     cycle   107   ave of    82 cycles      combination         simple average    combined average     corr
 k(collision)      1.020491       1.003385 0.0028     k(col/abs)          1.003446 0.0029     1.003269 0.0029   0.9941
 k(absorption)     1.017580       1.003507 0.0029     k(abs/tk ln)        1.001688 0.0023     1.000762 0.0022   0.5429
 k(trk length)     1.037708       0.999870 0.0023     k(tk ln/col)        1.001627 0.0023     1.000795 0.0022   0.5402
 rem life(col)   2.6017E+00     2.6788E+00 0.0025     k(col/abs/tk ln)    1.002254 0.0024     1.000701 0.0022
 rem life(abs)   2.6040E+00     2.6786E+00 0.0025     life(col/abs/tl)  2.6792E+00 0.0025   2.6808E+00 0.0026
 source points generated   1040                source_entropy  4.4492E+00

  estimator     cycle   108   ave of    83 cycles      combination         simple average    combined average     corr
 k(collision)      1.003980       1.003392 0.0028     k(col/abs)          1.003451 0.0028     1.003280 0.0028   0.9941
 k(absorption)     1.003777       1.003510 0.0029     k(abs/tk ln)        1.001689 0.0023     1.000762 0.0022   0.5429
 k(trk length)     0.999788       0.999869 0.0022     k(tk ln/col)        1.001630 0.0022     1.000797 0.0022   0.5402
 rem life(col)   2.6532E+00     2.6785E+00 0.0025     k(col/abs/tk ln)    1.002257 0.0024     1.000705 0.0022
 rem life(abs)   2.6542E+00     2.6783E+00 0.0025     life(col/abs/tl)  2.6789E+00 0.0025   2.6803E+00 0.0026
 source points generated   1002                source_entropy  4.4704E+00

  estimator     cycle   109   ave of    84 cycles      combination         simple average    combined average     corr
 k(collision)      0.974288       1.003046 0.0028     k(col/abs)          1.003107 0.0028     1.002931 0.0028   0.9941
 k(absorption)     0.974814       1.003168 0.0029     k(abs/tk ln)        1.001410 0.0022     1.000497 0.0022   0.5480
 k(trk length)     0.981673       0.999652 0.0022     k(tk ln/col)        1.001349 0.0022     1.000527 0.0022   0.5455
 rem life(col)   2.7447E+00     2.6793E+00 0.0025     k(col/abs/tk ln)    1.001955 0.0024     1.000433 0.0022
 rem life(abs)   2.7447E+00     2.6791E+00 0.0025     life(col/abs/tl)  2.6797E+00 0.0025   2.6811E+00 0.0026
 source points generated    991                source_entropy  4.4420E+00

  estimator     cycle   110   ave of    85 cycles      combination         simple average    combined average     corr
 k(collision)      1.014115       1.003176 0.0028     k(col/abs)          1.003255 0.0028     1.003022 0.0028   0.9941
 k(absorption)     1.017331       1.003335 0.0028     k(abs/tk ln)        1.001419 0.0022     1.000439 0.0022   0.5419
 k(trk length)     0.987025       0.999504 0.0022     k(tk ln/col)        1.001340 0.0022     1.000464 0.0022   0.5405
 rem life(col)   2.7335E+00     2.6799E+00 0.0025     k(col/abs/tk ln)    1.002005 0.0023     1.000351 0.0022
 rem life(abs)   2.7304E+00     2.6797E+00 0.0025     life(col/abs/tl)  2.6803E+00 0.0025   2.6817E+00 0.0026
 source points generated   1038                source_entropy  4.4302E+00

  estimator     cycle   111   ave of    86 cycles      combination         simple average    combined average     corr
 k(collision)      1.009723       1.003252 0.0027     k(col/abs)          1.003322 0.0028     1.003118 0.0027   0.9941
 k(absorption)     1.008334       1.003393 0.0028     k(abs/tk ln)        1.001367 0.0022     1.000347 0.0021   0.5388
 k(trk length)     0.985556       0.999341 0.0022     k(tk ln/col)        1.001297 0.0022     1.000380 0.0021   0.5368
 rem life(col)   2.7103E+00     2.6803E+00 0.0024     k(col/abs/tk ln)    1.001995 0.0023     1.000277 0.0021
 rem life(abs)   2.7109E+00     2.6801E+00 0.0025     life(col/abs/tl)  2.6807E+00 0.0024   2.6820E+00 0.0025
 source points generated    992                source_entropy  4.3750E+00

  estimator     cycle   112   ave of    87 cycles      combination         simple average    combined average     corr
 k(collision)      1.020492       1.003450 0.0027     k(col/abs)          1.003521 0.0027     1.003315 0.0027   0.9941
 k(absorption)     1.020666       1.003592 0.0028     k(abs/tk ln)        1.001429 0.0022     1.000340 0.0021   0.5345
 k(trk length)     0.992744       0.999266 0.0022     k(tk ln/col)        1.001358 0.0021     1.000377 0.0021   0.5325
 rem life(col)   2.6041E+00     2.6794E+00 0.0024     k(col/abs/tk ln)    1.002102 0.0023     1.000275 0.0021
 rem life(abs)   2.6037E+00     2.6792E+00 0.0024     life(col/abs/tl)  2.6798E+00 0.0024   2.6815E+00 0.0025
 source points generated   1005                source_entropy  4.4550E+00

  estimator     cycle   113   ave of    88 cycles      combination         simple average    combined average     corr
 k(collision)      0.985685       1.003248 0.0027     k(col/abs)          1.003332 0.0027     1.003100 0.0027   0.9941
 k(absorption)     0.988156       1.003416 0.0027     k(abs/tk ln)        1.001349 0.0021     1.000306 0.0021   0.5329
 k(trk length)     1.000766       0.999283 0.0021     k(tk ln/col)        1.001265 0.0021     1.000330 0.0021   0.5304
 rem life(col)   2.7380E+00     2.6801E+00 0.0024     k(col/abs/tk ln)    1.001982 0.0023     1.000206 0.0021
 rem life(abs)   2.7359E+00     2.6799E+00 0.0024     life(col/abs/tl)  2.6805E+00 0.0024   2.6821E+00 0.0025
 source points generated    962                source_entropy  4.3871E+00

  estimator     cycle   114   ave of    89 cycles      combination         simple average    combined average     corr
 k(collision)      1.017393       1.003407 0.0027     k(col/abs)          1.003475 0.0027     1.003296 0.0027   0.9940
 k(absorption)     1.014701       1.003543 0.0027     k(abs/tk ln)        1.001618 0.0021     1.000710 0.0021   0.5315
 k(trk length)     1.035835       0.999693 0.0022     k(tk ln/col)        1.001550 0.0021     1.000731 0.0021   0.5311
 rem life(col)   2.7364E+00     2.6807E+00 0.0024     k(col/abs/tk ln)    1.002215 0.0023     1.000651 0.0021
 rem life(abs)   2.7390E+00     2.6805E+00 0.0024     life(col/abs/tl)  2.6811E+00 0.0024   2.6828E+00 0.0025
 source points generated   1038                source_entropy  4.3368E+00

  estimator     cycle   115   ave of    90 cycles      combination         simple average    combined average     corr
 k(collision)      1.032098       1.003726 0.0027     k(col/abs)          1.003811 0.0027     1.003567 0.0027   0.9940
 k(absorption)     1.035348       1.003896 0.0027     k(abs/tk ln)        1.001962 0.0021     1.001045 0.0021   0.5408
 k(trk length)     1.029827       1.000028 0.0022     k(tk ln/col)        1.001877 0.0021     1.001065 0.0021   0.5394
 rem life(col)   2.6309E+00     2.6802E+00 0.0024     k(col/abs/tk ln)    1.002550 0.0023     1.000943 0.0021
 rem life(abs)   2.6277E+00     2.6799E+00 0.0024     life(col/abs/tl)  2.6805E+00 0.0024   2.6821E+00 0.0025
 source points generated   1019                source_entropy  4.5086E+00

  estimator     cycle   116   ave of    91 cycles      combination         simple average    combined average     corr
 k(collision)      0.985515       1.003526 0.0026     k(col/abs)          1.003592 0.0027     1.003393 0.0026   0.9940
 k(absorption)     0.982191       1.003658 0.0027     k(abs/tk ln)        1.001696 0.0021     1.000777 0.0021   0.5457
 k(trk length)     0.973234       0.999734 0.0022     k(tk ln/col)        1.001630 0.0021     1.000814 0.0021   0.5432
 rem life(col)   2.7356E+00     2.6808E+00 0.0024     k(col/abs/tk ln)    1.002306 0.0022     1.000708 0.0021
 rem life(abs)   2.7379E+00     2.6806E+00 0.0024     life(col/abs/tl)  2.6812E+00 0.0024   2.6827E+00 0.0025
 source points generated    969                source_entropy  4.4679E+00

  estimator     cycle   117   ave of    92 cycles      combination         simple average    combined average     corr
 k(collision)      0.950602       1.002951 0.0027     k(col/abs)          1.003022 0.0027     1.002818 0.0027   0.9942
 k(absorption)     0.951701       1.003093 0.0027     k(abs/tk ln)        1.001265 0.0022     1.000343 0.0021   0.5573
 k(trk length)     0.972446       0.999437 0.0022     k(tk ln/col)        1.001194 0.0021     1.000370 0.0021   0.5550
 rem life(col)   2.7281E+00     2.6813E+00 0.0024     k(col/abs/tk ln)    1.001827 0.0023     1.000259 0.0021
 rem life(abs)   2.7278E+00     2.6811E+00 0.0024     life(col/abs/tl)  2.6817E+00 0.0024   2.6831E+00 0.0024
 source points generated    983                source_entropy  4.3879E+00

  estimator     cycle   118   ave of    93 cycles      combination         simple average    combined average     corr
 k(collision)      1.014410       1.003074 0.0026     k(col/abs)          1.003148 0.0027     1.002933 0.0026   0.9942
 k(absorption)     1.015181       1.003223 0.0027     k(abs/tk ln)        1.001250 0.0021     1.000274 0.0021   0.5515
 k(trk length)     0.984529       0.999277 0.0021     k(tk ln/col)        1.001175 0.0021     1.000302 0.0021   0.5494
 rem life(col)   2.5788E+00     2.6802E+00 0.0024     k(col/abs/tk ln)    1.001858 0.0022     1.000188 0.0021
 rem life(abs)   2.5783E+00     2.6800E+00 0.0024     life(col/abs/tl)  2.6806E+00 0.0024   2.6823E+00 0.0025
 source points generated   1079                source_entropy  4.4562E+00

  estimator     cycle   119   ave of    94 cycles      combination         simple average    combined average     corr
 k(collision)      0.972896       1.002753 0.0026     k(col/abs)          1.002847 0.0026     1.002607 0.0026   0.9942
 k(absorption)     0.976793       1.002942 0.0027     k(abs/tk ln)        1.001106 0.0021     1.000183 0.0021   0.5488
 k(trk length)     0.998551       0.999269 0.0021     k(tk ln/col)        1.001011 0.0021     1.000191 0.0021   0.5457
 rem life(col)   2.6276E+00     2.6796E+00 0.0024     k(col/abs/tk ln)    1.001655 0.0022     1.000048 0.0021
 rem life(abs)   2.6256E+00     2.6794E+00 0.0024     life(col/abs/tl)  2.6800E+00 0.0023   2.6819E+00 0.0024
 source points generated    965                source_entropy  4.4028E+00

  estimator     cycle   120   ave of    95 cycles      combination         simple average    combined average     corr
 k(collision)      0.998211       1.002705 0.0026     k(col/abs)          1.002807 0.0026     1.002550 0.0026   0.9942
 k(absorption)     0.999751       1.002908 0.0026     k(abs/tk ln)        1.001020 0.0021     1.000080 0.0021   0.5485
 k(trk length)     0.986293       0.999133 0.0021     k(tk ln/col)        1.000919 0.0021     1.000085 0.0020   0.5457
 rem life(col)   2.6305E+00     2.6791E+00 0.0023     k(col/abs/tk ln)    1.001582 0.0022     0.999935 0.0020
 rem life(abs)   2.6290E+00     2.6789E+00 0.0023     life(col/abs/tl)  2.6795E+00 0.0023   2.6811E+00 0.0024
 source points generated   1027                source_entropy  4.4680E+00

  estimator     cycle   121   ave of    96 cycles      combination         simple average    combined average     corr
 k(collision)      1.006255       1.002742 0.0026     k(col/abs)          1.002860 0.0026     1.002561 0.0026   0.9941
 k(absorption)     1.009618       1.002978 0.0026     k(abs/tk ln)        1.001238 0.0021     1.000428 0.0020   0.5445
 k(trk length)     1.034284       0.999499 0.0021     k(tk ln/col)        1.001120 0.0021     1.000420 0.0020   0.5398
 rem life(col)   2.6440E+00     2.6787E+00 0.0023     k(col/abs/tk ln)    1.001740 0.0022     1.000217 0.0020
 rem life(abs)   2.6417E+00     2.6785E+00 0.0023     life(col/abs/tl)  2.6791E+00 0.0023   2.6810E+00 0.0024
 source points generated   1027                source_entropy  4.4519E+00

  estimator     cycle   122   ave of    97 cycles      combination         simple average    combined average     corr
 k(collision)      0.944067       1.002137 0.0026     k(col/abs)          1.002267 0.0026     1.001985 0.0026   0.9943
 k(absorption)     0.946568       1.002397 0.0027     k(abs/tk ln)        1.000823 0.0021     1.000023 0.0020   0.5536
 k(trk length)     0.975248       0.999249 0.0021     k(tk ln/col)        1.000693 0.0021     1.000001 0.0020   0.5490
 rem life(col)   2.7000E+00     2.6790E+00 0.0023     k(col/abs/tk ln)    1.001261 0.0022     0.999802 0.0020
 rem life(abs)   2.6988E+00     2.6787E+00 0.0023     life(col/abs/tl)  2.6793E+00 0.0023   2.6813E+00 0.0024
 source points generated    935                source_entropy  4.4565E+00

  estimator     cycle   123   ave of    98 cycles      combination         simple average    combined average     corr
 k(collision)      0.980374       1.001915 0.0026     k(col/abs)          1.002049 0.0026     1.001764 0.0026   0.9943
 k(absorption)     0.981429       1.002183 0.0026     k(abs/tk ln)        1.000680 0.0021     0.999908 0.0020   0.5542
 k(trk length)     0.992323       0.999178 0.0021     k(tk ln/col)        1.000547 0.0021     0.999882 0.0020   0.5496
 rem life(col)   2.6168E+00     2.6783E+00 0.0023     k(col/abs/tk ln)    1.001092 0.0022     0.999680 0.0020
 rem life(abs)   2.6160E+00     2.6781E+00 0.0023     life(col/abs/tl)  2.6787E+00 0.0023   2.6807E+00 0.0024
 source points generated   1017                source_entropy  4.4328E+00

  estimator     cycle   124   ave of    99 cycles      combination         simple average    combined average     corr
 k(collision)      1.005525       1.001951 0.0026     k(col/abs)          1.002094 0.0026     1.001789 0.0026   0.9943
 k(absorption)     1.007585       1.002237 0.0026     k(abs/tk ln)        1.000916 0.0021     1.000298 0.0020   0.5472
 k(trk length)     1.040479       0.999595 0.0021     k(tk ln/col)        1.000773 0.0021     1.000256 0.0020   0.5414
 rem life(col)   2.6404E+00     2.6779E+00 0.0023     k(col/abs/tk ln)    1.001261 0.0022     1.000021 0.0020
 rem life(abs)   2.6392E+00     2.6777E+00 0.0023     life(col/abs/tl)  2.6783E+00 0.0023   2.6803E+00 0.0024
 source points generated   1052                source_entropy  4.4338E+00

  estimator     cycle   125   ave of   100 cycles      combination         simple average    combined average     corr
 k(collision)      0.978480       1.001717 0.0026     k(col/abs)          1.001854 0.0026     1.001551 0.0026   0.9944
 k(absorption)     0.977740       1.001992 0.0026     k(abs/tk ln)        1.000781 0.0021     1.000205 0.0020   0.5459
 k(trk length)     0.997062       0.999570 0.0021     k(tk ln/col)        1.000643 0.0020     1.000165 0.0020   0.5402
 rem life(col)   2.6392E+00     2.6775E+00 0.0022     k(col/abs/tk ln)    1.001093 0.0022     0.999936 0.0020
 rem life(abs)   2.6393E+00     2.6773E+00 0.0023     life(col/abs/tl)  2.6779E+00 0.0022   2.6801E+00 0.0023
 source points generated    996                source_entropy  4.3942E+00

 source distribution written to file critical.is        cycle=   125
1problem summary (active cycles only)              source particle weight for summary table normalization =       100000.00

      run terminated when     125 kcode cycles were done.
+                                                                                                    12/25/24 22:20:55 

 =====>      14.82 M neutrons/hr    (based on wall-clock time in mcrun)


      Generated using CardSharp:Jezebel reactor                                            probid =  12/25/24 22:20:22 

 neutron creation    tracks      weight        energy            neutron loss        tracks      weight        energy
                                 (per source particle)                                           (per source particle)

 source               99950    1.0000E+00    2.1505E+00          escape               94368    6.7083E-01    1.2608E+00
 nucl. interaction        0    0.            0.                  energy cutoff            0    0.            0.        
 particle decay           0    0.            0.                  time cutoff              0    0.            0.        
 weight window            0    0.            0.                  weight window            0    0.            0.        
 cell importance          0    0.            0.                  cell importance          0    0.            0.        
 weight cutoff            0    1.2424E-02    1.1750E-02          weight cutoff         5746    1.2825E-02    1.2183E-02
 e or t importance        0    0.            0.                  e or t importance        0    0.            0.        
 dxtran                   0    0.            0.                  dxtran                   0    0.            0.        
 forced collisions        0    0.            0.                  forced collisions        0    0.            0.        
 exp. transform           0    0.            0.                  exp. transform           0    0.            0.        
 upscattering             0    0.            0.                  downscattering           0    0.            2.6728E-01
 photonuclear             0    0.            0.                  capture                  0    1.2032E-02    6.6879E-03
 (n,xn)                 328    1.8183E-03    1.3441E-03          loss to (n,xn)         164    9.0917E-04    7.4123E-03
 prompt fission           0    0.            0.                  loss to fission          0    3.1764E-01    6.0914E-01
 delayed fission          0    0.            0.                  nucl. interaction        0    0.            0.        
 prompt photofis          0    0.            0.                  particle decay           0    0.            0.        
 tabular boundary         0    0.            0.                  tabular boundary         0    0.            0.        
 tabular sampling         0    0.            0.                  elastic scatter          0    0.            0.        
     total           100278    1.0142E+00    2.1635E+00              total           100278    1.0142E+00    2.1635E+00

   number of neutrons banked                     205        average time of (shakes)              cutoffs
   neutron tracks per source particle     1.0028E+00          escape            3.8351E+00          tco   1.0000E+33
   neutron collisions per source particle 2.1067E+00          capture           8.4400E-01          eco   0.0000E+00
   total neutron collisions                   210667          capture or escape 3.7824E+00          wc1  -5.0000E-01
   net multiplication              1.0009E+00 0.0001          any termination   2.6582E+00          wc2  -2.5000E-01

 computer time so far in this run    19.69 minutes            maximum number ever in bank         1
 computer time in mcrun              19.31 minutes            bank overflows to backup file       0
 source particles per minute            6.4847E+03
 random numbers generated                  4095063            most random numbers used was         566 in history       55575

 range of sampled source weights = 7.3584E-01 to 1.1364E+00

 number of histories processed by each thread
        9551        9006        9198        8935        8773        8845        8833        8722        9284        8868
        8845        8676        8774        8888
1neutron  activity in each cell                                                                         print table 126

                       tracks     population   collisions   collisions     number        flux        average      average
              cell    entering                               * weight     weighted     weighted   track weight   track mfp
                                                          (per history)    energy       energy     (relative)      (cm)

        1        1      100176       100114       210052    1.5093E+00   1.0893E+00   1.7938E+00   7.3157E-01   3.1709E+00
        2        2       94594        94405          615    4.2543E-03   1.1615E+00   1.8570E+00   7.1282E-01   3.4826E+00
        3        3       94368        94368            0    0.0000E+00   1.1832E+00   1.8784E+00   7.1102E-01   0.0000E+00

           total        289138       288887       210667    1.5136E+00
1neutron  weight balance in each cell                                                                   print table 130

        cell index        1           2           3
       cell number        1           2           3       total                                                                 

 external events:
          entering  1.4327E-03  6.7237E-01  6.7083E-01  1.3446E+00
            source  1.0000E+00  0.0000E+00  0.0000E+00  1.0000E+00
     energy cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
       time cutoff  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
           exiting -6.7237E-01 -6.7226E-01 -6.7083E-01 -2.0155E+00
                    ----------  ----------  ----------  ----------
             total  3.2907E-01  1.0126E-04  0.0000E+00  3.2917E-01

 variance reduction events:
     weight window  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   cell importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
     weight cutoff -4.0077E-04  0.0000E+00  0.0000E+00 -4.0077E-04
 e or t importance  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
            dxtran  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 forced collisions  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
    exp. transform  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------
             total -4.0077E-04  0.0000E+00  0.0000E+00 -4.0077E-04

 physical events:
           capture -1.1931E-02 -1.0126E-04  0.0000E+00 -1.2032E-02
            (n,xn)  1.8183E-03  0.0000E+00  0.0000E+00  1.8183E-03
    loss to (n,xn) -9.0917E-04  0.0000E+00  0.0000E+00 -9.0917E-04
           fission  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
   loss to fission -3.1764E-01  0.0000E+00  0.0000E+00 -3.1764E-01
      photonuclear  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 nucl. interaction  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  tabular boundary  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
        decay gain  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
  tabular sampling  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
        decay loss  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
      photofission  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
                    ----------  ----------  ----------  ----------
             total -3.2867E-01 -1.0126E-04  0.0000E+00 -3.2877E-01

                    ----------  ----------  ----------  ----------
             total  0.0000E+00  0.0000E+00  0.0000E+00  0.0000E+00
 
1neutron activity of each nuclide in each cell, per source particle                                     print table 140

      cell     cell   nuclides     atom       total  collisions   wgt. lost   wgt. gain   wgt. gain     photons  photon wgt  avg photon
     index     name            fraction  collisions    * weight  to capture  by fission   by (n,xn)    produced    produced      energy

         1        1  94238.80c 1.00E-03         228  1.6226E-03  3.4067E-05  3.7238E-04  0.0000E+00           0  0.0000E+00  0.0000E+00
                     94239.80c 8.62E-01      181363  1.3033E+00  9.2829E-03  2.8554E-01  7.5436E-04           0  0.0000E+00  0.0000E+00
                     94240.80c 1.20E-01       24719  1.7734E-01  2.2542E-03  2.6457E-02  7.7628E-05           0  0.0000E+00  0.0000E+00
                     94241.80c 1.59E-02        3299  2.3915E-02  3.2353E-04  4.8902E-03  7.0355E-05           0  0.0000E+00  0.0000E+00
                     94242.80c 1.98E-03         443  3.2171E-03  3.6214E-05  3.8047E-04  6.8213E-06           0  0.0000E+00  0.0000E+00

         2        2  28058.80c 6.81E-01         449  3.1031E-03  9.9187E-05  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28060.80c 2.62E-01         140  9.8458E-04  1.8643E-06  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28061.80c 1.14E-02           3  1.9059E-05  3.9078E-08  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28062.80c 3.63E-02          17  1.0473E-04  1.0187E-07  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28064.80c 9.25E-03           6  4.2803E-05  6.2903E-08  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00

              total                          210667  1.5136E+00  1.2032E-02  3.1764E-01  9.0917E-04           0  0.0000E+00  0.0000E+00


        total over all cells by nuclide       total  collisions   wgt. lost   wgt. gain   wgt. gain     photons  photon wgt  avg photon
                                         collisions    * weight  to capture  by fission   by (n,xn)    produced    produced      energy

                     28058.80c                  449  3.1031E-03  9.9187E-05  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28060.80c                  140  9.8458E-04  1.8643E-06  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28061.80c                    3  1.9059E-05  3.9078E-08  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28062.80c                   17  1.0473E-04  1.0187E-07  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     28064.80c                    6  4.2803E-05  6.2903E-08  0.0000E+00  0.0000E+00           0  0.0000E+00  0.0000E+00
                     94238.80c                  228  1.6226E-03  3.4067E-05  3.7238E-04  0.0000E+00           0  0.0000E+00  0.0000E+00
                     94239.80c               181363  1.3033E+00  9.2829E-03  2.8554E-01  7.5436E-04           0  0.0000E+00  0.0000E+00
                     94240.80c                24719  1.7734E-01  2.2542E-03  2.6457E-02  7.7628E-05           0  0.0000E+00  0.0000E+00
                     94241.80c                 3299  2.3915E-02  3.2353E-04  4.8902E-03  7.0355E-05           0  0.0000E+00  0.0000E+00
                     94242.80c                  443  3.2171E-03  3.6214E-05  3.8047E-04  6.8213E-06           0  0.0000E+00  0.0000E+00
1keff results for: Generated using CardSharp:Jezebel reactor                                            probid =  12/25/24 22:20:22 


 the initial fission neutron source distribution used the   1 source points that were input on the ksrc card.
 the criticality problem was scheduled to skip  25 cycles and run a total of  125 cycles with nominally     1000 neutrons per cycle.
 this problem has run  25 inactive cycles with    25248 neutron histories and  100 active cycles with       99950 neutron histories.


 this calculation has completed the requested number of keff cycles using a total of      125198 fission neutron source histories.
 all cells with fissionable material were sampled and had fission neutron source points.


 comment.
 comment. Average fission-source entropy for the last half of cycles:
 comment.      H=  4.43E+00  with population std.dev.=  4.60E-02
 comment.
 comment.
 comment. Cycle    7 is the first cycle having fission-source
 comment.   entropy within 1 std.dev. of the average
 comment.   entropy for the last half of cycles.
 comment.   At least this many cycles should be discarded.
 comment.
 comment. Source entropy convergence check passed. 
 comment.
 the results of the w test for normality applied to the individual collision, absorption, and track-length keff cycle values are:

           the k( collision) cycle values appear normally distributed at the 95 percent confidence level                       
           the k(absorption) cycle values appear normally distributed at the 95 percent confidence level                       
           the k(trk length) cycle values appear normally distributed at the 95 percent confidence level                       


 -----------------------------------------------------------------------------------------------------------------------------------
 |                                                                                                                                 |
 | the final estimated combined collision/absorption/track-length keff = 0.99994 with an estimated standard deviation of 0.00201   |
 |                                                                                                                                 |
 | the estimated 68, 95, & 99 percent keff confidence intervals are 0.99793 to 1.00194, 0.99594 to 1.00393, and 0.99464 to 1.00524 |
 |                                                                                                                                 |
 | the final combined (col/abs/tl) prompt removal lifetime = 2.6801E-08 seconds with an estimated standard deviation of 6.2727E-11 |
 |                                                                                                                                 |
 | the average neutron energy causing fission = 1.9177E+00 mev                                                                     |
 | the energy corresponding to the average neutron lethargy causing fission = 1.2643E+00 mev                                       |
 |                                                                                                                                 |
 | the percentages of fissions caused by neutrons in the thermal, intermediate, and fast neutron ranges are:                       |
 |         (<0.625 ev):   0.00%         (0.625 ev - 100 kev):   2.11%          (>100 kev):  97.89%                                 |
 |                                                                                                                                 |
 | the average fission neutrons produced per neutron absorbed (capture + fission) in all cells with fission = 3.0394E+00           |
 | the average fission neutrons produced per neutron absorbed (capture + fission) in all the geometry cells = 3.0385E+00           |
 |                                                                                                                                 |
 | the average number of neutrons produced per fission = 3.154                                                                     |
 |                                                                                                                                 |
 -----------------------------------------------------------------------------------------------------------------------------------


 the estimated average keffs, one standard deviations, and 68, 95, and 99 percent confidence intervals are:

        keff estimator       keff     standard deviation      68% confidence        95% confidence        99% confidence       corr

             collision     1.00172         0.00257          0.99914 to 1.00429    0.99659 to 1.00684    0.99492 to 1.00851
            absorption     1.00199         0.00260          0.99939 to 1.00460    0.99681 to 1.00718    0.99511 to 1.00887
          track length     0.99957         0.00208          0.99749 to 1.00165    0.99543 to 1.00371    0.99408 to 1.00506
            col/absorp     1.00155         0.00259          0.99896 to 1.00415    0.99639 to 1.00671    0.99470 to 1.00840    0.9944
           abs/trk len     1.00021         0.00201          0.99819 to 1.00222    0.99620 to 1.00421    0.99489 to 1.00552    0.5459
           col/trk len     1.00016         0.00200          0.99816 to 1.00216    0.99618 to 1.00415    0.99489 to 1.00544    0.5402
       col/abs/trk len     0.99994         0.00201          0.99793 to 1.00194    0.99594 to 1.00393    0.99464 to 1.00524


 if the largest of each keff occurred on the next cycle, the keff results and 68, 95, and 99 percent confidence intervals would be:

        keff estimator       keff     standard deviation      68% confidence        95% confidence        99% confidence

             collision     1.00228         0.00261          0.99967 to 1.00489    0.99709 to 1.00747    0.99539 to 1.00917
            absorption     1.00258         0.00264          0.99993 to 1.00522    0.99731 to 1.00784    0.99559 to 1.00956
          track length     1.00014         0.00213          0.99800 to 1.00228    0.99589 to 1.00439    0.99450 to 1.00578
       col/abs/trk len     1.00044         0.00207          0.99837 to 1.00250    0.99632 to 1.00455    0.99498 to 1.00589


 the estimated average prompt removal lifetimes, one standard deviations, and 68, 95, and 99 percent confidence intervals are (sec):

       estimator      lifetime     std. dev.         68% confidence           95% confidence           99% confidence           corr

       collision   2.67755E-08   6.01178E-11    2.6715E-08 to 2.6836E-08 2.6656E-08 to 2.6895E-08 2.6617E-08 to 2.6934E-08
      absorption   2.67729E-08   6.03339E-11    2.6712E-08 to 2.6833E-08 2.6653E-08 to 2.6893E-08 2.6613E-08 to 2.6932E-08
    track length   2.67900E-08   5.98907E-11    2.6730E-08 to 2.6850E-08 2.6671E-08 to 2.6909E-08 2.6632E-08 to 2.6948E-08
      col/absorp   2.67823E-08   6.06805E-11    2.6722E-08 to 2.6843E-08 2.6661E-08 to 2.6903E-08 2.6622E-08 to 2.6943E-08    0.9994
     abs/trk len   2.67934E-08   6.24798E-11    2.6731E-08 to 2.6856E-08 2.6669E-08 to 2.6918E-08 2.6628E-08 to 2.6958E-08    0.9947
     col/trk len   2.67876E-08   6.17500E-11    2.6726E-08 to 2.6849E-08 2.6665E-08 to 2.6911E-08 2.6624E-08 to 2.6951E-08    0.9944
 col/abs/trk len   2.68008E-08   6.27265E-11    2.6738E-08 to 2.6864E-08 2.6676E-08 to 2.6926E-08 2.6635E-08 to 2.6966E-08

 absorption estimates of prompt lifetimes (sec):

                             escape        capture        fission        removal

            fraction    6.70491E-01    1.20261E-02    3.17483E-01    1.00000E+00
       lifetime(abs)    3.99302E-08    2.22622E-06    8.43286E-08    2.67729E-08
     lifetime(c/a/t)    3.99718E-08    2.22854E-06    8.44165E-08    2.68008E-08

1average keff results summed over   2 cycles each to form 50 batch values of keff                       print table 178

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     27     1.00992  1.01151  0.99813
      2     28     29     1.03453  1.03525  1.01312       1.02222 0.01230   1.02338 0.01187   1.00562 0.00749
      3     30     31     0.99290  0.99281  1.01131       1.01245 0.01208   1.01319 0.01228   1.00752 0.00472
      4     32     33     1.00510  1.00898  1.00088       1.01061 0.00874   1.01214 0.00875   1.00586 0.00373       1.01050 0.00662
      5     34     35     0.99362  0.99308  1.00189       1.00721 0.00757   1.00833 0.00777   1.00507 0.00300       1.00705 0.00466
      6     36     37     1.00482  1.00413  1.02032       1.00681 0.00620   1.00763 0.00639   1.00761 0.00353       1.00979 0.00440
      7     38     39     1.01107  1.00777  1.00448       1.00742 0.00527   1.00765 0.00540   1.00716 0.00302       1.00739 0.00335
      8     40     41     1.00465  1.00562  1.01312       1.00708 0.00458   1.00740 0.00468   1.00791 0.00272       1.00795 0.00293
      9     42     43     1.02027  1.02370  0.99895       1.00854 0.00430   1.00921 0.00451   1.00691 0.00259       1.00780 0.00262
     10     44     45     0.98133  0.98233  0.98729       1.00582 0.00471   1.00652 0.00485   1.00495 0.00304       1.00590 0.00340
 -----------------------------------------------------------------------------------------------------------------------------------
     11     46     47     0.99378  0.99312  0.98859       1.00473 0.00440   1.00530 0.00455   1.00346 0.00312       1.00400 0.00347
     12     48     49     0.96564  0.96361  0.98235       1.00147 0.00517   1.00183 0.00541   1.00170 0.00335       1.00154 0.00378
     13     50     51     0.96233  0.96243  0.97856       0.99846 0.00563   0.99880 0.00583   0.99992 0.00356       1.00008 0.00401
     14     52     53     1.02222  1.02190  1.01314       1.00016 0.00548   1.00045 0.00564   1.00087 0.00343       1.00108 0.00374
     15     54     55     0.99586  0.99914  0.99415       0.99987 0.00511   1.00036 0.00526   1.00042 0.00322       1.00085 0.00356
     16     56     57     0.97866  0.97547  0.99364       0.99854 0.00496   0.99880 0.00516   0.99999 0.00304       1.00038 0.00328
     17     58     59     1.00755  1.00566  1.01508       0.99907 0.00469   0.99921 0.00486   1.00088 0.00299       1.00136 0.00320
     18     60     61     1.01868  1.02149  1.01664       1.00016 0.00455   1.00044 0.00475   1.00176 0.00296       1.00209 0.00320
     19     62     63     1.00222  1.00588  0.99529       1.00027 0.00431   1.00073 0.00450   1.00142 0.00282       1.00183 0.00308
     20     64     65     1.01362  1.01158  0.99155       1.00094 0.00414   1.00127 0.00430   1.00092 0.00272       1.00086 0.00290
 -----------------------------------------------------------------------------------------------------------------------------------
     21     66     67     1.02034  1.01953  1.00825       1.00186 0.00405   1.00214 0.00418   1.00127 0.00261       1.00121 0.00276
     22     68     69     1.02076  1.01822  1.01813       1.00272 0.00395   1.00287 0.00406   1.00204 0.00260       1.00203 0.00272
     23     70     71     1.01901  1.01701  0.99246       1.00343 0.00384   1.00349 0.00392   1.00162 0.00252       1.00160 0.00267
     24     72     73     0.97998  0.98022  0.97218       1.00245 0.00381   1.00252 0.00388   1.00040 0.00271       1.00045 0.00287
     25     74     75     0.99764  0.99641  0.99454       1.00226 0.00366   1.00227 0.00373   1.00016 0.00261       1.00022 0.00276
     26     76     77     0.97507  0.97704  0.98820       1.00121 0.00366   1.00130 0.00371   0.99970 0.00255       0.99969 0.00267
     27     78     79     1.00476  1.00515  1.01834       1.00135 0.00353   1.00145 0.00357   1.00039 0.00255       1.00045 0.00266
     28     80     81     0.98651  0.98795  0.96885       1.00082 0.00344   1.00096 0.00348   0.99926 0.00270       0.99954 0.00280
     29     82     83     0.98949  0.98899  0.99419       1.00043 0.00334   1.00055 0.00338   0.99909 0.00261       0.99931 0.00270
     30     84     85     0.97661  0.97228  0.97741       0.99963 0.00333   0.99961 0.00340   0.99837 0.00262       0.99855 0.00271
 -----------------------------------------------------------------------------------------------------------------------------------
     31     86     87     1.00090  0.99854  0.98640       0.99967 0.00322   0.99957 0.00329   0.99798 0.00257       0.99831 0.00265
     32     88     89     1.02781  1.02504  0.99166       1.00055 0.00324   1.00037 0.00328   0.99778 0.00249       0.99832 0.00259
     33     90     91     1.01432  1.01561  1.01666       1.00097 0.00317   1.00083 0.00321   0.99836 0.00248       0.99890 0.00256
     34     92     93     1.01110  1.01288  0.98403       1.00127 0.00309   1.00119 0.00314   0.99793 0.00245       0.99869 0.00253
     35     94     95     0.99640  0.99922  1.00076       1.00113 0.00300   1.00113 0.00305   0.99801 0.00238       0.99867 0.00244
     36     96     97     1.01078  1.01264  1.01798       1.00140 0.00293   1.00145 0.00298   0.99857 0.00238       0.99920 0.00241
     37     98     99     1.01976  1.02012  1.01105       1.00189 0.00289   1.00195 0.00294   0.99891 0.00233       0.99953 0.00238
     38    100    101     1.00671  1.00913  0.99667       1.00202 0.00282   1.00214 0.00287   0.99885 0.00227       0.99948 0.00233
     39    102    103     1.02291  1.02328  1.02010       1.00255 0.00279   1.00269 0.00285   0.99939 0.00228       1.00002 0.00234
     40    104    105     1.02790  1.02995  1.00885       1.00319 0.00280   1.00337 0.00286   0.99963 0.00223       1.00020 0.00231
 -----------------------------------------------------------------------------------------------------------------------------------
     41    106    107     1.01124  1.00909  1.00948       1.00338 0.00273   1.00351 0.00279   0.99987 0.00219       1.00051 0.00227
     42    108    109     0.98913  0.98930  0.99073       1.00305 0.00269   1.00317 0.00274   0.99965 0.00215       1.00024 0.00223
     43    110    111     1.01192  1.01283  0.98629       1.00325 0.00263   1.00339 0.00269   0.99934 0.00212       1.00013 0.00220
     44    112    113     1.00309  1.00441  0.99676       1.00325 0.00257   1.00342 0.00263   0.99928 0.00208       1.00007 0.00216
     45    114    115     1.02475  1.02502  1.03283       1.00373 0.00256   1.00390 0.00261   1.00003 0.00216       1.00091 0.00222
     46    116    117     0.96806  0.96695  0.97284       1.00295 0.00262   1.00309 0.00268   0.99944 0.00219       1.00017 0.00226
     47    118    119     0.99365  0.99599  0.99154       1.00275 0.00257   1.00294 0.00262   0.99927 0.00215       0.99996 0.00222
     48    120    121     1.00223  1.00468  1.01029       1.00274 0.00252   1.00298 0.00257   0.99950 0.00212       1.00011 0.00218
     49    122    123     0.96222  0.96400  0.98379       1.00191 0.00260   1.00218 0.00264   0.99918 0.00210       0.99951 0.00217
     50    124    125     0.99200  0.99266  1.01877       1.00172 0.00256   1.00199 0.00259   0.99957 0.00210       0.99987 0.00213



 average keff results summed over   4 cycles each to form 25 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     29     1.02222  1.02338  1.00562
      2     30     33     0.99900  1.00090  1.00610       1.01061 0.01161   1.01214 0.01124   1.00586 0.00024
      3     34     37     0.99922  0.99861  1.01110       1.00681 0.00770   1.00763 0.00790   1.00761 0.00175
      4     38     41     1.00786  1.00670  1.00880       1.00708 0.00545   1.00740 0.00559   1.00791 0.00127       1.00821 0.00079
      5     42     45     1.00080  1.00301  0.99312       1.00582 0.00441   1.00652 0.00442   1.00495 0.00312       1.00717 0.00311
      6     46     49     0.97971  0.97837  0.98547       1.00147 0.00565   1.00183 0.00592   1.00170 0.00413       1.00146 0.00550
      7     50     53     0.99228  0.99216  0.99585       1.00016 0.00495   1.00045 0.00519   1.00087 0.00359       1.00057 0.00455
      8     54     57     0.98726  0.98731  0.99390       0.99854 0.00458   0.99880 0.00479   0.99999 0.00323       0.99977 0.00405
      9     58     61     1.01311  1.01357  1.01586       1.00016 0.00435   1.00044 0.00453   1.00176 0.00335       1.00131 0.00417
     10     62     65     1.00792  1.00873  0.99342       1.00094 0.00397   1.00127 0.00413   1.00092 0.00311       1.00050 0.00362
 -----------------------------------------------------------------------------------------------------------------------------------
     11     66     69     1.02055  1.01887  1.01319       1.00272 0.00401   1.00287 0.00407   1.00204 0.00302       1.00221 0.00337
     12     70     73     0.99950  0.99861  0.98232       1.00245 0.00367   1.00252 0.00373   1.00040 0.00321       1.00104 0.00347
     13     74     77     0.98636  0.98673  0.99137       1.00121 0.00359   1.00130 0.00364   0.99970 0.00304       1.00008 0.00328
     14     78     81     0.99564  0.99655  0.99359       1.00082 0.00335   1.00096 0.00339   0.99926 0.00284       0.99968 0.00307
     15     82     85     0.98305  0.98064  0.98580       0.99963 0.00334   0.99961 0.00343   0.99837 0.00280       0.99870 0.00296
     16     86     89     1.01436  1.01179  0.98903       1.00055 0.00325   1.00037 0.00330   0.99778 0.00268       0.99870 0.00284
     17     90     93     1.01271  1.01424  1.00035       1.00127 0.00314   1.00119 0.00320   0.99793 0.00252       0.99882 0.00269
     18     94     97     1.00359  1.00593  1.00937       1.00140 0.00296   1.00145 0.00303   0.99857 0.00246       0.99918 0.00251
     19     98    101     1.01324  1.01463  1.00386       1.00202 0.00287   1.00214 0.00295   0.99885 0.00234       0.99935 0.00242
     20    102    105     1.02540  1.02662  1.01448       1.00319 0.00296   1.00337 0.00306   0.99963 0.00236       0.99983 0.00247
 -----------------------------------------------------------------------------------------------------------------------------------
     21    106    109     1.00019  0.99919  1.00011       1.00305 0.00282   1.00317 0.00291   0.99965 0.00224       0.99998 0.00233
     22    110    113     1.00750  1.00862  0.99152       1.00325 0.00270   1.00342 0.00279   0.99928 0.00217       0.99982 0.00229
     23    114    117     0.99640  0.99599  1.00284       1.00295 0.00260   1.00309 0.00268   0.99944 0.00208       0.99996 0.00215
     24    118    121     0.99794  1.00034  1.00091       1.00274 0.00249   1.00298 0.00257   0.99950 0.00199       0.99978 0.00207
     25    122    125     0.97711  0.97833  1.00128       1.00172 0.00260   1.00199 0.00266   0.99957 0.00191       0.99944 0.00195



 average keff results summed over   5 cycles each to form 20 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     30     1.01855  1.01946  1.00750
      2     31     35     0.99588  0.99720  1.00264       1.00721 0.01133   1.00833 0.01113   1.00507 0.00243
      3     36     40     1.00770  1.00580  1.01388       1.00737 0.00654   1.00749 0.00648   1.00800 0.00326
      4     41     45     1.00116  1.00362  0.99578       1.00582 0.00488   1.00652 0.00468   1.00495 0.00383       1.00782 0.00191
      5     46     50     0.97262  0.97143  0.98568       0.99918 0.00764   0.99950 0.00790   1.00109 0.00486       1.00384 0.00614
      6     51     55     1.00332  1.00465  0.99703       0.99987 0.00628   1.00036 0.00651   1.00042 0.00403       1.00262 0.00485
      7     56     60     0.99538  0.99383  1.00597       0.99923 0.00534   0.99943 0.00558   1.00121 0.00349       1.00338 0.00397
      8     61     65     1.01292  1.01420  0.99891       1.00094 0.00493   1.00127 0.00517   1.00092 0.00304       1.00208 0.00333
      9     66     70     1.02104  1.01992  1.00960       1.00317 0.00489   1.00334 0.00501   1.00189 0.00285       1.00192 0.00277
     10     71     75     0.99405  0.99264  0.98462       1.00226 0.00447   1.00227 0.00461   1.00016 0.00308       1.00006 0.00356
 -----------------------------------------------------------------------------------------------------------------------------------
     11     76     80     0.99029  0.99149  0.99516       1.00117 0.00419   1.00129 0.00428   0.99971 0.00282       0.99969 0.00316
     12     81     85     0.98269  0.98107  0.98363       0.99963 0.00412   0.99961 0.00426   0.99837 0.00290       0.99828 0.00324
     13     86     90     1.01481  1.01309  0.99671       1.00080 0.00397   1.00065 0.00405   0.99824 0.00267       0.99820 0.00305
     14     91     95     1.00540  1.00743  0.99510       1.00113 0.00369   1.00113 0.00378   0.99801 0.00249       0.99796 0.00284
     15     96    100     1.01281  1.01454  1.01048       1.00191 0.00352   1.00202 0.00363   0.99885 0.00246       0.99879 0.00278
     16    101    105     1.02241  1.02351  1.01138       1.00319 0.00353   1.00337 0.00365   0.99963 0.00243       0.99930 0.00276
     17    106    110     1.00297  1.00282  0.99749       1.00318 0.00332   1.00333 0.00343   0.99950 0.00229       0.99919 0.00261
     18    111    115     1.01308  1.01344  1.00895       1.00373 0.00318   1.00390 0.00328   1.00003 0.00222       0.99969 0.00253
     19    116    120     0.98433  0.98512  0.98301       1.00270 0.00317   1.00291 0.00326   0.99913 0.00228       0.99869 0.00261
     20    121    125     0.98294  0.98459  1.00788       1.00172 0.00317   1.00199 0.00322   0.99957 0.00221       0.99939 0.00240



 average keff results summed over  10 cycles each to form 10 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     35     1.00721  1.00833  1.00507
      2     36     45     1.00443  1.00471  1.00483       1.00582 0.00139   1.00652 0.00181   1.00495 0.00012
      3     46     55     0.98797  0.98804  0.99136       0.99987 0.00601   1.00036 0.00625   1.00042 0.00453
      4     56     65     1.00415  1.00402  1.00244       1.00094 0.00438   1.00127 0.00451   1.00092 0.00324       1.00048 0.00358
      5     66     75     1.00755  1.00628  0.99711       1.00226 0.00364   1.00227 0.00364   1.00016 0.00263       0.99838 0.00304
      6     76     85     0.98649  0.98628  0.98940       0.99963 0.00397   0.99961 0.00399   0.99837 0.00280       0.99716 0.00224
      7     86     95     1.01011  1.01026  0.99590       1.00113 0.00367   1.00113 0.00370   0.99801 0.00239       0.99723 0.00288
      8     96    105     1.01761  1.01903  1.01093       1.00319 0.00379   1.00337 0.00391   0.99963 0.00262       0.99736 0.00268
      9    106    115     1.00803  1.00813  1.00322       1.00373 0.00338   1.00390 0.00349   1.00003 0.00235       0.99771 0.00244
     10    116    125     0.98363  0.98486  0.99544       1.00172 0.00363   1.00199 0.00365   0.99957 0.00215       0.99700 0.00207



 average keff results summed over  20 cycles each to form  5 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     45     1.00582  1.00652  1.00495
      2     46     65     0.99606  0.99603  0.99690       1.00094 0.00488   1.00127 0.00525   1.00092 0.00402
      3     66     85     0.99702  0.99628  0.99325       0.99963 0.00311   0.99961 0.00346   0.99837 0.00346
      4     86    105     1.01386  1.01464  1.00342       1.00319 0.00418   1.00337 0.00448   0.99963 0.00275       0.99846 0.00129
      5    106    125     0.99583  0.99649  0.99933       1.00172 0.00356   1.00199 0.00373   0.99957 0.00213       0.99740 0.00130



 average keff results summed over  25 cycles each to form  4 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations              col/abs/tl keff
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev       k(c/a/t) st dev

      1     26     50     0.99918  0.99950  1.00109
      2     51     75     1.00534  1.00505  0.99923       1.00226 0.00308   1.00227 0.00277   1.00016 0.00093
      3     76    100     1.00120  1.00152  0.99622       1.00191 0.00181   1.00202 0.00162   0.99885 0.00142
      4    101    125     1.00115  1.00190  1.00174       1.00172 0.00130   1.00199 0.00115   0.99957 0.00124       1.00154 0.00249



 average keff results summed over  50 cycles each to form  2 batch values of keff

  batch  start    end     keff estimators by batch              average keff estimators and deviations                             
 number  cycle  cycle     k(coll)  k(abs)  k(track)       k(coll)  st dev    k(abs)  st dev   k(track) st dev                      

      1     26     75     1.00226  1.00227  1.00016
      2     76    125     1.00117  1.00171  0.99898       1.00172 0.00054   1.00199 0.00028   0.99957 0.00059
1average individual and combined collision/absorption/track-length keff results for  7 different batch sizes

 cycles per  number of    average keff estimators and deviations      normality  average k(c/a/t)    k(c/a/t) confidence intervals
 keff batch  k batches  k(col) st dev  k(abs) st dev  k(trk) st dev   co/ab/trk  k(c/a/t) st dev    95% confidence    99% confidence

       1        100  |  1.0017 0.0026  1.0020 0.0026  0.9996 0.0021  |95/95/95|  0.99994 0.00201   0.99594-1.00393   0.99464-1.00524
       2         50  |  1.0017 0.0026  1.0020 0.0026  0.9996 0.0021  |95/95/95|  0.99987 0.00213   0.99559-1.00415   0.99416-1.00558
       4         25  |  1.0017 0.0026  1.0020 0.0027  0.9996 0.0019  |95/95/95|  0.99944 0.00195   0.99541-1.00348   0.99396-1.00493
       5         20  |  1.0017 0.0032  1.0020 0.0032  0.9996 0.0022  |95/95/95|  0.99939 0.00240   0.99434-1.00445   0.99245-1.00634
      10         10  |  1.0017 0.0036  1.0020 0.0037  0.9996 0.0021  |95/95/95|  0.99700 0.00207   0.99209-1.00190   0.98974-1.00426
      20          5  |  1.0017 0.0036  1.0020 0.0037  0.9996 0.0021  |95/95/95|  0.99740 0.00130   0.99179-1.00300   0.98447-1.01032
      25          4  |  1.0017 0.0013  1.0020 0.0011  0.9996 0.0012  |95/95/95|  1.00154 0.00249   0.96990-1.03319   0.84307-1.16002
1individual and average keff estimator results by cycle

  keff     neutron    keff estimators by cycle           average keff estimators and deviations                average k(c/a/t)
 cycle   histories   k(coll)  k(abs)  k(track)     k(coll)  st dev    k(abs)  st dev   k(track) st dev    k(c/a/t)  st dev    fom

     1        1000 | 1.34613  1.34548  1.31335  | 
     2        1359 | 1.13253  1.13034  1.13622  | 
     3         893 | 1.07338  1.07695  1.01978  | 
     4         953 | 1.05132  1.05399  1.02394  | 
     5         995 | 1.01497  1.00660  1.03941  | 
     6         966 | 0.99284  0.99736  0.99325  | 
     7         938 | 1.02881  1.03132  1.03054  | 
     8        1040 | 1.01700  1.01531  1.00147  | 
     9        1021 | 0.96896  0.97178  1.00808  | 
    10         970 | 0.97694  0.97121  0.99412  | 
 -----------------------------------------------------------------------------------------------------------------------------------
    11        1028 | 1.05246  1.05200  1.02539  | 
    12        1082 | 1.06910  1.06703  0.99710  | 
    13        1013 | 0.96894  0.96798  0.98438  | 
    14         880 | 0.99511  0.99665  1.03216  | 
    15        1017 | 1.00160  1.00140  0.99486  | 
    16         996 | 0.96723  0.96776  0.96980  | 
    17         979 | 0.96283  0.96051  0.98632  | 
    18        1022 | 0.96629  0.96855  1.00250  | 
    19        1013 | 0.99512  0.99765  0.98678  | 
    20        1041 | 1.03406  1.03821  0.99919  | 
 -----------------------------------------------------------------------------------------------------------------------------------
    21        1051 | 1.02767  1.02509  0.99545  | 
    22         981 | 0.99415  0.99269  1.02783  | 
    23         995 | 0.99437  0.99756  1.02867  | 
    24         987 | 1.01867  1.02117  0.99789  | 
    25        1028 | 1.00479  1.00786  1.00540  | 
 -------------------  begin active keff cycles  ------------------------------------------------------------------------------------
    26         988 | 1.00434  1.00288  0.98198  | 
    27         941 | 1.01550  1.02014  1.01428  |  1.00992 0.00558   1.01151 0.00863   0.99813 0.01615  | 
    28         997 | 1.01288  1.01307  0.98414  |  1.01091 0.00337   1.01203 0.00501   0.99347 0.01043  | 
    29         958 | 1.05617  1.05744  1.04210  |  1.02222 0.01156   1.02338 0.01189   1.00562 0.01422  |  1.03149 0.08702        43
    30        1074 | 1.00384  1.00377  1.01498  |  1.01855 0.00968   1.01946 0.01001   1.00750 0.01117  |  1.01107 0.01871       846
 -----------------------------------------------------------------------------------------------------------------------------------
    31         949 | 0.98196  0.98185  1.00764  |  1.01245 0.00998   1.01319 0.01030   1.00752 0.00912  |  1.00581 0.01089      2434
    32         980 | 1.01318  1.01861  1.00437  |  1.01255 0.00844   1.01397 0.00874   1.00707 0.00772  |  1.00596 0.01008      2845
    33        1055 | 0.99702  0.99935  0.99739  |  1.01061 0.00756   1.01214 0.00779   1.00586 0.00680  |  1.00446 0.00908      3488
    34         988 | 0.96849  0.96869  1.00931  |  1.00593 0.00815   1.00731 0.00840   1.00624 0.00601  |  1.00316 0.00752      5003
    35         955 | 1.01875  1.01748  0.99446  |  1.00721 0.00740   1.00833 0.00758   1.00507 0.00550  |  1.00319 0.00627      7122
    36        1064 | 1.00785  1.00888  1.01508  |  1.00727 0.00669   1.00838 0.00685   1.00598 0.00506  |  1.00394 0.00569      8612
    37         988 | 1.00178  0.99938  1.02556  |  1.00681 0.00613   1.00763 0.00630   1.00761 0.00490  |  1.00639 0.00515     10567
    38        1004 | 1.02249  1.01986  1.01186  |  1.00802 0.00576   1.00857 0.00587   1.00794 0.00452  |  1.00763 0.00462     13194
    39        1033 | 0.99964  0.99567  0.99709  |  1.00742 0.00537   1.00765 0.00551   1.00716 0.00425  |  1.00703 0.00418     15932
    40         973 | 1.00671  1.00520  1.01980  |  1.00737 0.00500   1.00749 0.00514   1.00800 0.00405  |  1.00770 0.00392     18021
 -----------------------------------------------------------------------------------------------------------------------------------
    41        1006 | 1.00258  1.00604  1.00644  |  1.00708 0.00469   1.00740 0.00481   1.00791 0.00379  |  1.00743 0.00369     20320
    42        1011 | 0.98915  0.99594  0.99294  |  1.00602 0.00453   1.00672 0.00456   1.00703 0.00366  |  1.00686 0.00369     20264
    43        1004 | 1.05139  1.05146  1.00497  |  1.00854 0.00496   1.00921 0.00497   1.00691 0.00346  |  1.00750 0.00353     21962
    44        1055 | 0.98505  0.98333  0.98178  |  1.00730 0.00485   1.00785 0.00489   1.00559 0.00353  |  1.00596 0.00359     20831
    45         937 | 0.97761  0.98132  0.99279  |  1.00582 0.00483   1.00652 0.00483   1.00495 0.00341  |  1.00529 0.00355     21205
    46         961 | 0.99093  0.99300  0.98517  |  1.00511 0.00465   1.00588 0.00464   1.00401 0.00337  |  1.00454 0.00352     21286
    47        1018 | 0.99663  0.99323  0.99201  |  1.00473 0.00445   1.00530 0.00446   1.00346 0.00326  |  1.00381 0.00335     23483
    48         989 | 0.97727  0.97774  1.00606  |  1.00353 0.00442   1.00410 0.00443   1.00357 0.00312  |  1.00361 0.00319     25652
    49         984 | 0.95402  0.94949  0.95863  |  1.00147 0.00471   1.00183 0.00481   1.00170 0.00353  |  1.00128 0.00356     20264
    50         991 | 0.94424  0.94370  0.98652  |  0.99918 0.00506   0.99950 0.00517   1.00109 0.00344  |  1.00052 0.00352     20613
 -----------------------------------------------------------------------------------------------------------------------------------
    51         984 | 0.98042  0.98116  0.97059  |  0.99846 0.00492   0.99880 0.00501   0.99992 0.00350  |  0.99935 0.00358     19685
    52        1016 | 1.01643  1.01609  1.02916  |  0.99912 0.00478   0.99944 0.00487   1.00100 0.00354  |  1.00038 0.00362     19273
    53        1021 | 1.02801  1.02770  0.99711  |  1.00016 0.00472   1.00045 0.00480   1.00087 0.00341  |  1.00046 0.00346     21002
    54         988 | 1.00871  1.01276  0.98924  |  1.00045 0.00456   1.00087 0.00465   1.00046 0.00332  |  1.00012 0.00338     21788
    55        1011 | 0.98300  0.98552  0.99907  |  0.99987 0.00444   1.00036 0.00452   1.00042 0.00321  |  0.99996 0.00329     22871
    56         962 | 0.98397  0.98159  0.99864  |  0.99936 0.00433   0.99975 0.00441   1.00036 0.00310  |  0.99988 0.00316     24707
    57         957 | 0.97336  0.96935  0.98863  |  0.99854 0.00427   0.99880 0.00438   0.99999 0.00303  |  0.99951 0.00306     26304
    58         978 | 0.98024  0.97596  0.97294  |  0.99799 0.00418   0.99811 0.00430   0.99917 0.00305  |  0.99881 0.00302     26725
    59        1006 | 1.03486  1.03535  1.05723  |  0.99907 0.00419   0.99921 0.00431   1.00088 0.00341  |  1.00023 0.00335     21842
    60        1088 | 1.00446  1.00690  1.01243  |  0.99923 0.00408   0.99943 0.00419   1.00121 0.00333  |  1.00040 0.00326     22826
 -----------------------------------------------------------------------------------------------------------------------------------
    61         966 | 1.03290  1.03608  1.02086  |  1.00016 0.00407   1.00044 0.00420   1.00176 0.00328  |  1.00090 0.00322     23355
    62        1004 | 0.99147  0.99564  0.99060  |  0.99993 0.00396   1.00031 0.00409   1.00146 0.00321  |  1.00053 0.00317     23775
    63         952 | 1.01296  1.01613  0.99999  |  1.00027 0.00387   1.00073 0.00400   1.00142 0.00312  |  1.00048 0.00309     24994
    64        1049 | 1.01981  1.02384  0.97629  |  1.00077 0.00381   1.00132 0.00394   1.00077 0.00311  |  1.00008 0.00306     25280
    65         990 | 1.00744  0.99931  1.00680  |  1.00094 0.00371   1.00127 0.00384   1.00092 0.00303  |  1.00063 0.00297     26757
    66         972 | 1.04135  1.04005  1.01482  |  1.00192 0.00375   1.00222 0.00386   1.00126 0.00298  |  1.00121 0.00294     27252
    67        1024 | 0.99934  0.99901  1.00168  |  1.00186 0.00366   1.00214 0.00377   1.00127 0.00291  |  1.00121 0.00287     28480
    68         977 | 0.98605  0.98378  0.99376  |  1.00149 0.00360   1.00172 0.00371   1.00110 0.00284  |  1.00102 0.00280     29582
    69         985 | 1.05547  1.05266  1.04250  |  1.00272 0.00372   1.00287 0.00380   1.00204 0.00293  |  1.00211 0.00294     27031
    70        1051 | 1.02299  1.02408  0.99525  |  1.00317 0.00367   1.00334 0.00375   1.00189 0.00287  |  1.00208 0.00287     28003
 -----------------------------------------------------------------------------------------------------------------------------------
    71         969 | 1.01503  1.00994  0.98967  |  1.00343 0.00359   1.00349 0.00367   1.00162 0.00282  |  1.00199 0.00281     28989
    72         990 | 0.96624  0.96616  0.97303  |  1.00264 0.00361   1.00269 0.00368   1.00101 0.00283  |  1.00132 0.00283     28612
    73         919 | 0.99372  0.99427  0.97132  |  1.00245 0.00353   1.00252 0.00360   1.00040 0.00283  |  1.00084 0.00283     28345
    74        1014 | 0.98466  0.98208  1.02042  |  1.00209 0.00348   1.00210 0.00355   1.00080 0.00281  |  1.00113 0.00277     29578
    75        1001 | 1.01062  1.01074  0.96865  |  1.00226 0.00341   1.00227 0.00348   1.00016 0.00282  |  1.00077 0.00275     29660
    76        1051 | 1.00745  1.00921  0.98174  |  1.00236 0.00335   1.00241 0.00342   0.99980 0.00279  |  1.00057 0.00271     30476
    77         974 | 0.94269  0.94488  0.99465  |  1.00121 0.00348   1.00130 0.00353   0.99970 0.00274  |  1.00007 0.00268     31187
    78         922 | 1.00946  1.01249  1.01932  |  1.00137 0.00342   1.00151 0.00347   1.00007 0.00271  |  1.00036 0.00265     31756
    79        1095 | 1.00006  0.99781  1.01735  |  1.00135 0.00335   1.00145 0.00341   1.00039 0.00268  |  1.00062 0.00260     32829
    80         979 | 0.99180  0.99308  0.96274  |  1.00117 0.00329   1.00129 0.00335   0.99971 0.00272  |  1.00012 0.00262     32144
 -----------------------------------------------------------------------------------------------------------------------------------
    81         990 | 0.98123  0.98282  0.97495  |  1.00082 0.00325   1.00096 0.00330   0.99926 0.00271  |  0.99972 0.00261     32351
    82         990 | 1.02473  1.02555  0.98148  |  1.00124 0.00322   1.00140 0.00327   0.99895 0.00268  |  0.99965 0.00257     33314
    83        1070 | 0.95425  0.95244  1.00689  |  1.00043 0.00327   1.00055 0.00332   0.99909 0.00263  |  0.99947 0.00252     34378
    84         898 | 0.97140  0.96599  0.95218  |  0.99993 0.00325   0.99997 0.00332   0.99829 0.00271  |  0.99881 0.00256     33066
    85         988 | 0.98183  0.97857  1.00265  |  0.99963 0.00321   0.99961 0.00328   0.99837 0.00266  |  0.99880 0.00252     34018
    86         987 | 1.01857  1.01475  0.98786  |  0.99994 0.00317   0.99986 0.00324   0.99819 0.00262  |  0.99882 0.00248     35064
    87        1055 | 0.98323  0.98233  0.98494  |  0.99967 0.00313   0.99957 0.00320   0.99798 0.00259  |  0.99860 0.00245     35652
    88         954 | 1.03183  1.02960  0.99741  |  1.00018 0.00313   1.00005 0.00318   0.99797 0.00255  |  0.99875 0.00242     36484
    89        1058 | 1.02379  1.02047  0.98592  |  1.00055 0.00310   1.00037 0.00315   0.99778 0.00252  |  0.99876 0.00239     37118
    90        1007 | 1.01661  1.01829  1.02742  |  1.00080 0.00306   1.00065 0.00311   0.99824 0.00252  |  0.99917 0.00238     37286
 -----------------------------------------------------------------------------------------------------------------------------------
    91         999 | 1.01202  1.01292  1.00590  |  1.00097 0.00302   1.00083 0.00307   0.99836 0.00248  |  0.99929 0.00235     38373
    92        1006 | 0.96376  0.96471  0.96231  |  1.00041 0.00302   1.00029 0.00307   0.99782 0.00250  |  0.99872 0.00238     36915
    93         935 | 1.05844  1.06105  1.00576  |  1.00127 0.00310   1.00119 0.00316   0.99793 0.00247  |  0.99896 0.00237     37151
    94        1123 | 0.97711  0.97940  0.98605  |  1.00092 0.00307   1.00087 0.00313   0.99776 0.00244  |  0.99869 0.00235     37598
    95         904 | 1.01569  1.01905  1.01547  |  1.00113 0.00304   1.00113 0.00309   0.99801 0.00242  |  0.99890 0.00232     38457
    96        1049 | 1.03397  1.03387  1.01101  |  1.00159 0.00303   1.00159 0.00308   0.99820 0.00239  |  0.99914 0.00231     38748
    97        1048 | 0.98759  0.99141  1.02495  |  1.00140 0.00299   1.00145 0.00304   0.99857 0.00239  |  0.99934 0.00228     39662
    98         933 | 0.98314  0.98399  0.99241  |  1.00115 0.00296   1.00121 0.00301   0.99849 0.00236  |  0.99919 0.00225     40657
    99        1001 | 1.05638  1.05625  1.02970  |  1.00189 0.00302   1.00195 0.00306   0.99891 0.00236  |  0.99964 0.00228     39239
   100        1075 | 1.00298  1.00718  0.99434  |  1.00191 0.00298   1.00202 0.00302   0.99885 0.00233  |  0.99957 0.00225     40169
 -----------------------------------------------------------------------------------------------------------------------------------
   101         896 | 1.01044  1.01109  0.99899  |  1.00202 0.00294   1.00214 0.00298   0.99885 0.00230  |  0.99959 0.00223     40864
   102         999 | 1.05282  1.05730  1.04274  |  1.00268 0.00297   1.00286 0.00303   0.99942 0.00234  |  1.00007 0.00227     39397
   103        1088 | 0.99300  0.98926  0.99746  |  1.00255 0.00294   1.00269 0.00300   0.99939 0.00231  |  1.00007 0.00224     40270
   104         956 | 1.00751  1.01224  0.99503  |  1.00262 0.00290   1.00281 0.00296   0.99934 0.00228  |  1.00000 0.00221     40837
   105        1016 | 1.04829  1.04766  1.02267  |  1.00319 0.00292   1.00337 0.00298   0.99963 0.00227  |  1.00032 0.00222     40580
   106        1019 | 1.00199  1.00060  0.98126  |  1.00317 0.00289   1.00333 0.00294   0.99940 0.00225  |  1.00018 0.00220     40948
   107         967 | 1.02049  1.01758  1.03771  |  1.00338 0.00286   1.00351 0.00291   0.99987 0.00227  |  1.00070 0.00222     40557
   108        1040 | 1.00398  1.00378  0.99979  |  1.00339 0.00282   1.00351 0.00287   0.99987 0.00225  |  1.00071 0.00219     41290
   109        1002 | 0.97429  0.97481  0.98167  |  1.00305 0.00281   1.00317 0.00286   0.99965 0.00223  |  1.00043 0.00218     41385
   110         991 | 1.01411  1.01733  0.98702  |  1.00318 0.00278   1.00333 0.00283   0.99950 0.00221  |  1.00035 0.00216     42077
 -----------------------------------------------------------------------------------------------------------------------------------
   111        1038 | 1.00972  1.00833  0.98556  |  1.00325 0.00275   1.00339 0.00280   0.99934 0.00219  |  1.00028 0.00214     42603
   112         992 | 1.02049  1.02067  0.99274  |  1.00345 0.00272   1.00359 0.00277   0.99927 0.00217  |  1.00028 0.00212     43432
   113        1005 | 0.98569  0.98816  1.00077  |  1.00325 0.00270   1.00342 0.00275   0.99928 0.00214  |  1.00021 0.00209     44500
   114         962 | 1.01739  1.01470  1.03583  |  1.00341 0.00268   1.00354 0.00272   0.99969 0.00216  |  1.00065 0.00210     44070
   115        1038 | 1.03210  1.03535  1.02983  |  1.00373 0.00266   1.00390 0.00271   1.00003 0.00216  |  1.00094 0.00210     44069
   116        1019 | 0.98551  0.98219  0.97323  |  1.00353 0.00264   1.00366 0.00269   0.99973 0.00215  |  1.00071 0.00209     44125
   117         969 | 0.95060  0.95170  0.97245  |  1.00295 0.00268   1.00309 0.00272   0.99944 0.00215  |  1.00026 0.00210     43408
   118         983 | 1.01441  1.01518  0.98453  |  1.00307 0.00265   1.00322 0.00270   0.99928 0.00213  |  1.00019 0.00208     44090
   119        1079 | 0.97290  0.97679  0.99855  |  1.00275 0.00264   1.00294 0.00268   0.99927 0.00211  |  1.00005 0.00206     44830
   120         965 | 0.99821  0.99975  0.98629  |  1.00270 0.00261   1.00291 0.00265   0.99913 0.00209  |  0.99994 0.00204     45228
 -----------------------------------------------------------------------------------------------------------------------------------
   121        1027 | 1.00626  1.00962  1.03428  |  1.00274 0.00259   1.00298 0.00263   0.99950 0.00210  |  1.00022 0.00204     45634
   122        1027 | 0.94407  0.94657  0.97525  |  1.00214 0.00263   1.00240 0.00266   0.99925 0.00210  |  0.99980 0.00205     45104
   123         935 | 0.98037  0.98143  0.99232  |  1.00191 0.00261   1.00218 0.00264   0.99918 0.00208  |  0.99968 0.00203     45634
   124        1017 | 1.00552  1.00758  1.04048  |  1.00195 0.00259   1.00224 0.00262   0.99960 0.00210  |  1.00002 0.00203     45461
   125        1052 | 0.97848  0.97774  0.99706  |  1.00172 0.00257   1.00199 0.00260   0.99957 0.00208  |  0.99994 0.00201     46437


  the largest active cycle keffs by estimator are:                               the smallest active cycle keffs by estimator are:

                   collision 1.05844 on cycle  93                                                  collision 0.94269 on cycle  77
                  absorption 1.06105 on cycle  93                                                 absorption 0.94370 on cycle  50
                track length 1.05723 on cycle  59                                               track length 0.95218 on cycle  84

1plot of estimated col/abs/track-length keff one-standard-deviation interval versus cycle number        print table 179
 | = final keff =  0.99994

    cycle   active 0.99                            1.00                             1.01                             1.02   
   number   cycles  |-------------------------------|--------------------------------|--------------------------------|
       31        6  |              (----------------|------------------k------------------------------------)         |
       32        7  |                 (-------------|-------------------k--------------------------------)            |
       33        8  |               (---------------|--------------k-----------------------------)                    |
       34        9  |                (--------------|---------k------------------------)                              |
       35       10  |                     (---------|---------k--------------------)                                  |
       36       11  |                         (-----|------------k------------------)                                 |
       37       12  |                               |   (----------------k----------------)                           |
       38       13  |                               |         (--------------k---------------)                        |
       39       14  |                               |        (-------------k-------------)                            |
       40       15  +                               |           (-------------k------------)                          +
       41       16  |                               |           (------------k-----------)                            |
       42       17  |                               |         (------------k-----------)                              |
       43       18  |                               |            (-----------k-----------)                            |
       44       19  |                               |       (-----------k-----------)                                 |
       45       20  |                               |     (----------k-----------)                                    |
       46       21  |                               |  (-----------k-----------)                                      |
       47       22  |                               |(-----------k----------)                                         |
       48       23  |                               |(----------k---------)                                           |
       49       24  |                       (-------|---k-----------)                                                 |
       50       25  +                     (---------|-k----------)                                                    +
       51       26  |                 (-----------k-|---------)                                                       |
       52       27  |                    (----------|k-----------)                                                    |
       53       28  |                     (---------|k-----------)                                                    |
       54       29  |                    (----------k-----------)                                                     |
       55       30  |                    (----------k----------)                                                      |
       56       31  |                    (---------k|---------)                                                       |
       57       32  |                   (---------k-|-------)                                                         |
       58       33  |                 (---------k---|-----)                                                           |
       59       34  |                    (----------|k----------)                                                     |
       60       35  +                     (---------|k----------)                                                     +
       61       36  |                       (-------|--k----------)                                                   |
       62       37  |                      (--------|-k---------)                                                     |
       63       38  |                      (--------|k----------)                                                     |
       64       39  |                     (---------k---------)                                                       |
       65       40  |                       (-------|-k---------)                                                     |
       66       41  |                         (-----|---k---------)                                                   |
       67       42  |                         (-----|---k--------)                                                    |
       68       43  |                         (-----|--k---------)                                                    |
       69       44  |                            (--|------k---------)                                                |
       70       45  +                            (--|------k--------)                                                 +
       71       46  |                            (--|-----k---------)                                                 |
       72       47  |                          (----|---k---------)                                                   |
       73       48  |                        (------|--k--------)                                                     |
       74       49  |                         (-----|---k--------)                                                    |
       75       50  |                        (------|-k---------)                                                     |
       76       51  |                        (------|-k--------)                                                      |
       77       52  |                      (--------k--------)                                                        |
       78       53  |                       (-------|k--------)                                                       |
       79       54  |                        (------|-k--------)                                                      |
       80       55  +                       (-------k--------)                                                        +
       81       56  |                     (--------k|-------)                                                         |
       82       57  |                     (--------k|------)                                                          |
       83       58  |                     (-------k-|-----)                                                           |
       84       59  |                  (--------k---|---)                                                             |
       85       60  |                  (--------k---|---)                                                             |
       86       61  |                   (-------k---|---)                                                             |
       87       62  |                  (-------k----|--)                                                              |
       88       63  |                   (-------k---|---)                                                             |
       89       64  |                   (-------k---|---)                                                             |
       90       65  +                    (-------k--|----)                                                            +
       91       66  |                     (------k--|----)                                                            |
       92       67  |                   (-------k---|---)                                                             |
       93       68  |                   (-------k---|---)                                                             |
       94       69  |                   (------k----|--)                                                              |
       95       70  |                   (-------k---|---)                                                             |
       96       71  |                    (-------k--|----)                                                            |
       97       72  |                     (-------k-|----)                                                            |
       98       73  |                     (------k--|----)                                                            |
       99       74  |                      (-------k|-----)                                                           |
      100       75  +                      (------k-|-----)                                                           +
      101       76  |                      (------k-|-----)                                                           |
      102       77  |                       (-------k-------)                                                         |
      103       78  |                        (------k-------)                                                         |
      104       79  |                       (-------k------)                                                          |
      105       80  |                        (------|k------)                                                         |
      106       81  |                        (------k-------)                                                         |
      107       82  |                          (----|-k-------)                                                       |
      108       83  |                          (----|-k------)                                                        |
      109       84  |                         (-----|k-------)                                                        |
      110       85  +                         (-----|k------)                                                         +
      111       86  |                         (-----|k------)                                                         |
      112       87  |                         (-----|k------)                                                         |
      113       88  |                         (-----|k-----)                                                          |
      114       89  |                          (----|-k------)                                                        |
      115       90  |                           (---|--k------)                                                       |
      116       91  |                          (----|-k------)                                                        |
      117       92  |                         (-----|k------)                                                         |
      118       93  |                         (-----k------)                                                          |
      119       94  |                        (------k------)                                                          |
      120       95  +                        (------k-----)                                                           +
      121       96  |                         (-----|k-----)                                                          |
      122       97  |                       (------k|-----)                                                           |
      123       98  |                       (------k|-----)                                                           |
      124       99  |                        (------k------)                                                          |
      125      100  |                        (------k-----)                                                           |
                    |-------------------------------|--------------------------------|--------------------------------|
                   0.99                            1.00                             1.01                             1.02    
1individual and collision/absorption/track-length keffs for different numbers of inactive cycles skipped for fission source settling

   skip  active     active    average keff estimators and deviations     normality average k(c/a/t)   k(c/a/t) confidence intervals
  cycles cycles   neutrons  k(col) st dev  k(abs) st dev  k(trk) st dev  co/ab/tl  k(c/a/t) st dev   95% confidence   99% confidence

     0    125       125198| 1.0066 0.0038  1.0069 0.0038  1.0044 0.0033 |no/no/no| 1.00463 0.00332  0.99803-1.01124  0.99587-1.01339
     1    124       124198| 1.0039 0.0026  1.0042 0.0027  1.0019 0.0021 |no/99/no| 1.00229 0.00210  0.99811-1.00648  0.99674-1.00784
     2    123       122839| 1.0028 0.0025  1.0031 0.0025  1.0008 0.0018 |95/95/95| 1.00108 0.00180  0.99749-1.00467  0.99632-1.00584
     3    122       121946| 1.0023 0.0024  1.0025 0.0024  1.0007 0.0019 |95/95/95| 1.00091 0.00179  0.99733-1.00448  0.99617-1.00565
     4    121       120993| 1.0018 0.0024  1.0021 0.0024  1.0005 0.0019 |95/95/95| 1.00071 0.00179  0.99714-1.00428  0.99598-1.00544
     5    120       119998| 1.0017 0.0024  1.0021 0.0024  1.0002 0.0018 |95/95/95| 1.00026 0.00178  0.99671-1.00381  0.99555-1.00497
     6    119       119032| 1.0018 0.0024  1.0021 0.0025  1.0002 0.0019 |95/95/95| 1.00034 0.00179  0.99676-1.00391  0.99560-1.00507
     7    118       118094| 1.0016 0.0024  1.0019 0.0025  1.0000 0.0019 |95/95/95| 1.00012 0.00179  0.99655-1.00369  0.99539-1.00485
     8    117       117054| 1.0015 0.0025  1.0017 0.0025  0.9999 0.0019 |95/95/95| 1.00006 0.00181  0.99646-1.00366  0.99529-1.00484
     9    116       116033| 1.0017 0.0025  1.0020 0.0025  0.9999 0.0019 |95/95/95| 1.00010 0.00182  0.99647-1.00373  0.99528-1.00491
    10    115       115063| 1.0019 0.0025  1.0023 0.0025  0.9999 0.0019 |95/95/95| 1.00016 0.00184  0.99649-1.00383  0.99529-1.00503
 -----------------------------------------------------------------------------------------------------------------------------------
    11    114       114035| 1.0015 0.0024  1.0018 0.0025  0.9997 0.0019 |95/95/95| 0.99989 0.00184  0.99623-1.00355  0.99504-1.00474
    12    113       112953| 1.0009 0.0024  1.0013 0.0024  0.9997 0.0019 |95/95/95| 0.99974 0.00184  0.99607-1.00341  0.99487-1.00461
    13    112       111940| 1.0012 0.0024  1.0016 0.0024  0.9999 0.0019 |95/95/95| 0.99993 0.00185  0.99624-1.00362  0.99503-1.00482
    14    111       111060| 1.0012 0.0024  1.0016 0.0025  0.9996 0.0019 |95/95/95| 0.99973 0.00186  0.99602-1.00344  0.99481-1.00465
    15    110       110043| 1.0012 0.0024  1.0016 0.0025  0.9996 0.0020 |95/95/95| 0.99976 0.00188  0.99602-1.00350  0.99480-1.00472
    16    109       109047| 1.0016 0.0024  1.0019 0.0025  0.9999 0.0019 |95/95/95| 1.00005 0.00187  0.99632-1.00378  0.99510-1.00499
    17    108       108068| 1.0019 0.0024  1.0023 0.0025  1.0000 0.0020 |95/95/95| 1.00026 0.00189  0.99650-1.00401  0.99527-1.00524
    18    107       107046| 1.0022 0.0024  1.0026 0.0025  1.0000 0.0020 |95/95/95| 1.00035 0.00190  0.99656-1.00414  0.99533-1.00538
    19    106       106033| 1.0023 0.0025  1.0027 0.0025  1.0001 0.0020 |95/95/95| 1.00046 0.00191  0.99665-1.00428  0.99541-1.00552
    20    105       104992| 1.0020 0.0025  1.0023 0.0025  1.0001 0.0020 |95/95/95| 1.00043 0.00193  0.99659-1.00426  0.99534-1.00552
 -----------------------------------------------------------------------------------------------------------------------------------
    21    104       103941| 1.0018 0.0025  1.0021 0.0025  1.0002 0.0020 |95/95/95| 1.00036 0.00194  0.99649-1.00424  0.99522-1.00550
    23    102       101965| 1.0019 0.0025  1.0022 0.0026  0.9996 0.0020 |95/95/95| 0.99997 0.00197  0.99605-1.00390  0.99476-1.00518
    25    100*       99950| 1.0017 0.0026  1.0020 0.0026  0.9996 0.0021 |95/95/95| 0.99994 0.00201  0.99594-1.00393  0.99464-1.00524
    27     98        98021| 1.0015 0.0026  1.0018 0.0027  0.9996 0.0021 |95/95/95| 0.99995 0.00204  0.99589-1.00401  0.99456-1.00533
    29     96        96066| 1.0009 0.0026  1.0011 0.0026  0.9993 0.0021 |95/95/95| 0.99959 0.00202  0.99557-1.00361  0.99426-1.00492
    31     94        94043| 1.0010 0.0027  1.0013 0.0027  0.9991 0.0021 |95/95/95| 0.99944 0.00206  0.99533-1.00354  0.99399-1.00488
    33     92        92008| 1.0009 0.0027  1.0011 0.0027  0.9990 0.0022 |95/95/95| 0.99944 0.00210  0.99526-1.00363  0.99389-1.00499
    35     90        90065| 1.0011 0.0027  1.0013 0.0028  0.9990 0.0022 |95/95/95| 0.99943 0.00215  0.99515-1.00372  0.99375-1.00512
    37     88        88013| 1.0010 0.0028  1.0012 0.0028  0.9985 0.0022 |95/95/95| 0.99899 0.00219  0.99464-1.00335  0.99322-1.00477
    39     86        85976| 1.0008 0.0029  1.0011 0.0029  0.9983 0.0023 |95/95/95| 0.99875 0.00223  0.99431-1.00320  0.99286-1.00465
 -----------------------------------------------------------------------------------------------------------------------------------
    41     84        83997| 1.0007 0.0029  1.0010 0.0030  0.9980 0.0023 |95/95/95| 0.99845 0.00228  0.99392-1.00299  0.99244-1.00447
    43     82        81982| 1.0002 0.0029  1.0004 0.0030  0.9980 0.0024 |95/95/95| 0.99840 0.00230  0.99381-1.00299  0.99231-1.00449
    45     80        79990| 1.0007 0.0030  1.0009 0.0030  0.9982 0.0024 |95/95/95| 0.99875 0.00235  0.99407-1.00343  0.99254-1.00496
    47     78        78011| 1.0009 0.0031  1.0011 0.0031  0.9985 0.0025 |95/95/95| 0.99895 0.00240  0.99415-1.00374  0.99259-1.00530
    49     76        76038| 1.0018 0.0031  1.0020 0.0031  0.9989 0.0025 |95/95/95| 0.99956 0.00243  0.99472-1.00439  0.99314-1.00597
    51     74        74063| 1.0029 0.0030  1.0031 0.0031  0.9994 0.0025 |95/95/95| 1.00034 0.00245  0.99546-1.00522  0.99387-1.00681
    53     72        72026| 1.0023 0.0031  1.0026 0.0031  0.9991 0.0026 |95/95/95| 0.99987 0.00249  0.99491-1.00483  0.99329-1.00645
    55     70        70027| 1.0025 0.0032  1.0027 0.0032  0.9992 0.0026 |95/95/95| 1.00007 0.00255  0.99499-1.00516  0.99332-1.00682
    57     68        68108| 1.0032 0.0032  1.0035 0.0032  0.9994 0.0027 |95/95/95| 1.00040 0.00263  0.99514-1.00566  0.99341-1.00738
    59     66        66124| 1.0031 0.0033  1.0034 0.0033  0.9989 0.0026 |95/95/95| 0.99991 0.00259  0.99474-1.00507  0.99304-1.00678
 -----------------------------------------------------------------------------------------------------------------------------------
    61     64        64070| 1.0026 0.0033  1.0029 0.0033  0.9983 0.0027 |95/95/95| 0.99947 0.00263  0.99422-1.00473  0.99248-1.00646
    63     62        62114| 1.0026 0.0034  1.0028 0.0034  0.9984 0.0028 |95/95/95| 0.99957 0.00270  0.99418-1.00497  0.99239-1.00675
    65     60        60075| 1.0022 0.0035  1.0025 0.0035  0.9987 0.0028 |95/95/95| 0.99944 0.00277  0.99389-1.00499  0.99205-1.00683
    67     58        58079| 1.0016 0.0036  1.0019 0.0036  0.9983 0.0029 |95/95/95| 0.99903 0.00284  0.99334-1.00471  0.99146-1.00659
    69     56        56117| 1.0009 0.0036  1.0013 0.0036  0.9976 0.0029 |95/95/95| 0.99813 0.00280  0.99251-1.00374  0.99065-1.00561
    71     54        54097| 1.0003 0.0037  1.0007 0.0037  0.9978 0.0030 |95/95/95| 0.99794 0.00291  0.99210-1.00378  0.99016-1.00573
    73     52        52188| 1.0010 0.0037  1.0015 0.0038  0.9988 0.0030 |95/95/95| 0.99886 0.00294  0.99295-1.00477  0.99098-1.00674
    75     50        50173| 1.0012 0.0039  1.0017 0.0039  0.9990 0.0031 |95/95/95| 0.99873 0.00304  0.99262-1.00484  0.99058-1.00688
    77     48        48148| 1.0023 0.0038  1.0027 0.0039  0.9994 0.0032 |95/95/95| 0.99944 0.00311  0.99317-1.00571  0.99107-1.00781
    79     46        46131| 1.0022 0.0040  1.0026 0.0040  0.9986 0.0033 |95/95/95| 0.99869 0.00323  0.99217-1.00521  0.98998-1.00740
 -----------------------------------------------------------------------------------------------------------------------------------
    81     44        44162| 1.0029 0.0042  1.0033 0.0042  1.0000 0.0033 |95/95/95| 0.99973 0.00321  0.99325-1.00620  0.99106-1.00839
    83     42        42102| 1.0035 0.0042  1.0040 0.0042  1.0002 0.0034 |95/95/95| 0.99989 0.00339  0.99304-1.00675  0.99072-1.00907
    85     40        40216| 1.0048 0.0043  1.0056 0.0042  1.0014 0.0033 |95/95/99| 1.00112 0.00355  0.99392-1.00832  0.99147-1.01077
    87     38        38174| 1.0051 0.0044  1.0059 0.0044  1.0022 0.0035 |95/95/99| 1.00181 0.00379  0.99412-1.00950  0.99150-1.01213
    89     36        36162| 1.0038 0.0046  1.0049 0.0046  1.0027 0.0036 |95/95/95| 1.00192 0.00409  0.99359-1.01025  0.99073-1.01311
    91     34        34156| 1.0032 0.0048  1.0042 0.0049  1.0019 0.0038 |95/95/95| 1.00118 0.00424  0.99253-1.00984  0.98954-1.01283
    93     32        32215| 1.0027 0.0047  1.0037 0.0047  1.0030 0.0038 |95/95/99| 1.00226 0.00420  0.99367-1.01084  0.99068-1.01383
    95     30        30188| 1.0031 0.0049  1.0040 0.0049  1.0032 0.0040 |95/95/no| 1.00256 0.00432  0.99370-1.01143  0.99059-1.01454
    97     28        28091| 1.0025 0.0051  1.0034 0.0051  1.0021 0.0042 |95/95/no| 1.00177 0.00454  0.99242-1.01112  0.98911-1.01443
    99     26        26157| 1.0012 0.0050  1.0021 0.0050  1.0015 0.0044 |95/95/no| 1.00078 0.00463  0.99119-1.01037  0.98777-1.01379
 -----------------------------------------------------------------------------------------------------------------------------------
   101     24        24186| 1.0008 0.0054  1.0015 0.0054  1.0019 0.0047 |95/95/no| 1.00089 0.00496  0.99057-1.01120  0.98685-1.01492
   103     22        22099| 0.9987 0.0054  0.9995 0.0053  1.0002 0.0048 |95/95/no| 1.00023 0.00499  0.98978-1.01068  0.98595-1.01451
   105     20        20127| 0.9958 0.0053  0.9965 0.0052  0.9993 0.0052 |95/95/no| 0.99809 0.00512  0.98728-1.00889  0.98324-1.01293
   107     18        18141| 0.9941 0.0057  0.9951 0.0057  0.9982 0.0052 |95/95/no| 0.99575 0.00563  0.98375-1.00775  0.97916-1.01234
   109     16        16099| 0.9947 0.0063  0.9958 0.0063  0.9991 0.0058 |95/95/99| 0.99649 0.00632  0.98284-1.01014  0.97745-1.01552
   111     14        14070| 0.9923 0.0069  0.9934 0.0069  1.0010 0.0065 |95/95/99| 0.99666 0.00757  0.98001-1.01332  0.97317-1.02016
   113     12        12073| 0.9905 0.0077  0.9916 0.0077  1.0017 0.0076 |95/95/99| 0.99583 0.00926  0.97487-1.01678  0.96573-1.02592
   115     10        10073| 0.9836 0.0074  0.9849 0.0074  0.9954 0.0076 |95/95/99| 0.98721 0.00876  0.96648-1.00793  0.95654-1.01788
   117      8         8085| 0.9875 0.0082  0.9893 0.0081  1.0011 0.0084 |95/95/95| 0.99161 0.01388  0.95592-1.02730  0.93563-1.04759
   119      6         6023| 0.9855 0.0096  0.9871 0.0097  1.0043 0.0109 |95/95/95| 0.98528 0.02152  0.91676-1.05379  0.85955-1.11100
 -----------------------------------------------------------------------------------------------------------------------------------
   121      4         4031| 0.9771 0.0126  0.9783 0.0125  1.0013 0.0139 |95/95/95| 0.96856 0.06186  0.18233-1.75479  0.00000-4.90652
   122      3         3004| 0.9881 0.0087  0.9889 0.0094  1.0100 0.0153 |
   123      2         2069| 0.9920 0.0135  0.9927 0.0149  1.0188 0.0217 |


 the minimum estimated standard deviation for the col/abs/tl keff estimator occurs with   5 inactive cycles and  120 active cycles.


 the first active half of the problem skips 25 cycles and uses  50 active cycles; the second half skips  75 and uses  50 cycles.
 the col/abs/trk-len keff, one standard deviation, and 68, 95, and 99 percent intervals for each active half of the problem are:

              problem        keff     standard deviation       68% confidence         95% confidence         99% confidence

            first half     1.00077         0.00275           0.99800 to 1.00354     0.99524 to 1.00631     0.99338 to 1.00817
           second half     0.99873         0.00304           0.99568 to 1.00179     0.99262 to 1.00484     0.99058 to 1.00688
          final result     0.99994         0.00201           0.99793 to 1.00194     0.99594 to 1.00393     0.99464 to 1.00524

 the first and second half values of k(collision/absorption/track length) appear to be the same at the 68 percent confidence level.

1plot of estimated col/abs/track-length keff one-standard-deviation interval by active cycle number     print table 179
 | = final keff =  0.99994

 inactive   active 0.97                    0.98                     0.99                     1.00                     1.01  
   cycles   cycles  |-----------------------|------------------------|------------------------|------------------------|
        0      125  |                                                                        |   (-------k-------)     |
        1      124  |                                                                        |(----k----)              |
        2      123  |                                                                       (|--k----)                 |
        3      122  |                                                                      (-|--k---)                  |
        4      121  |                                                                      (-|-k----)                  |
        5      120  |                                                                     (--|k----)                   |
        6      119  |                                                                     (--|k----)                   |
        7      118  |                                                                    (---|k---)                    |
        8      117  |                                                                    (---|k---)                    |
        9      116  +                                                                    (---|k---)                    +
       10      115  |                                                                    (---|k----)                   |
       11      114  |                                                                    (---k----)                    |
       12      113  |                                                                   (----k---)                     |
       13      112  |                                                                    (---k----)                    |
       14      111  |                                                                   (----k---)                     |
       15      110  |                                                                   (----k----)                    |
       16      109  |                                                                    (---|k---)                    |
       17      108  |                                                                    (---|k----)                   |
       18      107  |                                                                     (--|k----)                   |
       19      106  +                                                                     (--|-k---)                   +
       20      105  |                                                                     (--|-k---)                   |
       21      104  |                                                                     (--|k----)                   |
       22      103  |                                                                    (---|k----)                   |
       23      102  |                                                                    (---k----)                    |
       24      101  |                                                                   (----k----)                    |
       25      100  *                                                                   (----k----)                    *
       26       99  |                                                                    (---|k----)                   |
       27       98  |                                                                   (----k----)                    |
       28       97  |                                                                   (----|k----)                   |
       29       96  +                                                                  (----k|----)                    +
       30       95  |                                                                  (----k|---)                     |
       31       94  |                                                                  (----k|---)                     |
       32       93  |                                                                  (----k|---)                     |
       33       92  |                                                                  (----k|---)                     |
       34       91  |                                                                  (----k|---)                     |
       35       90  |                                                                  (----k|---)                     |
       36       89  |                                                                 (-----k|---)                     |
       37       88  |                                                                 (----k-|--)                      |
       38       87  |                                                                (----k--|--)                      |
       39       86  +                                                                (----k--|--)                      +
       40       85  |                                                               (-----k--|-)                       |
       41       84  |                                                               (-----k--|-)                       |
       42       83  |                                                               (-----k--|--)                      |
       43       82  |                                                               (----k---|-)                       |
       44       81  |                                                               (-----k--|--)                      |
       45       80  |                                                               (-----k--|--)                      |
       46       79  |                                                                (-----k-|---)                     |
       47       78  |                                                                (-----k-|---)                     |
       48       77  |                                                                (-----k-|---)                     |
       49       76  +                                                                 (-----k|----)                    +
       50       75  |                                                                  (-----|k-----)                  |
       51       74  |                                                                   (----|k-----)                  |
       52       73  |                                                                  (-----k------)                  |
       53       72  |                                                                  (-----k-----)                   |
       54       71  |                                                                  (-----k------)                  |
       55       70  |                                                                  (-----|k-----)                  |
       56       69  |                                                                  (-----|k-----)                  |
       57       68  |                                                                   (----|k------)                 |
       58       67  |                                                                    (---|--k-----)                |
       59       66  +                                                                  (-----k------)                  +
       60       65  |                                                                 (------k-----)                   |
       61       64  |                                                                 (-----k|-----)                   |
       62       63  |                                                                 (------k-----)                   |
       63       62  |                                                                 (-----k|-----)                   |
       64       61  |                                                                 (------k------)                  |
       65       60  |                                                                (------k|-----)                   |
       66       59  |                                                               (------k-|----)                    |
       67       58  |                                                               (------k-|----)                    |
       68       57  |                                                               (------k-|-----)                   |
       69       56  +                                                             (------k---|--)                      +
       70       55  |                                                             (------k---|--)                      |
       71       54  |                                                            (------k----|--)                      |
       72       53  |                                                             (-------k--|---)                     |
       73       52  |                                                              (-------k-|----)                    |
       74       51  |                                                             (-------k--|---)                     |
       75       50  |                                                              (------k--|----)                    |
       76       49  |                                                              (-------k-|-----)                   |
       77       48  |                                                               (-------k|------)                  |
       78       47  |                                                               (-------k|-----)                   |
       79       46  +                                                             (-------k--|----)                    +
       80       45  |                                                               (-------k|------)                  |
       81       44  |                                                                (-------k-------)                 |
       82       43  |                                                                (-------k-------)                 |
       83       42  |                                                                (-------k--------)                |
       84       41  |                                                                   (----|--k--------)             |
       85       40  |                                                                  (-----|--k--------)             |
       86       39  |                                                                  (-----|---k--------)            |
       87       38  |                                                                    (---|----k--------)           |
       88       37  |                                                                   (----|----k--------)           |
       89       36  +                                                                   (----|----k----------)         +
       90       35  |                                                                 (------|---k---------)           |
       91       34  |                                                                 (------|--k----------)           |
       92       33  |                                                                    (---|------k---------)        |
       93       32  |                                                                    (---|-----k----------)        |
       94       31  |                                                                     (--|------k----------)       |
       95       30  |                                                                    (---|------k----------)       |
       96       29  |                                                                  (-----|-----k----------)        |
       97       28  |                                                                  (-----|----k----------)         |
       98       27  |                                                                  (-----|-----k-----------)       |
       99       26  +                                                               (--------|-k-----------)           +
      100       25  |                                                               (--------|--k-----------)          |
      101       24  |                                                              (---------|--k-----------)          |
      102       23  |                                                            (-----------k-----------)             |
      103       22  |                                                             (----------|k------------)           |
      104       21  |                                                            (-----------|k------------)           |
      105       20  |                                                       (------------k---|--------)                |
      106       19  |                                                       (-------------k--|----------)              |
      107       18  |                                                (-------------k---------|---)                     |
      108       17  |                                              (--------------k----------|---)                     |
      109       16  +                                                (---------------k-------|-------)                 +
      110       15  |                                               (----------------k-------|--------)                |
      111       14  |                                             (------------------k-------|----------)              |
      112       13  |                                        (---------------------k---------|----------)              |
      113       12  |                                       (----------------------k---------|------------)            |
      114       11  |                       (---------------------k---------------------)    |                         |
      115       10  |                   (---------------------k--------------------)         |                         |
                    |-----------------------|------------------------|------------------------|------------------------|
                   0.97                    0.98                     0.99                     1.00                     1.01   

 ***********************************************************************************************************************

 dump no.    2 on file critical.ir     nps =      125198     coll =         210667     ctm =       19.31   nrn =        
   4095063
 tally data written to file critical.im

         2 warning messages so far.


 run terminated when     125 kcode cycles were done.

 computer time =   19.69 minutes

 mcnp     version 6     05/08/13                     12/25/24 22:20:55                     probid =  12/25/24 22:20:22 
