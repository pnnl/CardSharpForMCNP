# Compendium only has dry air
airString = """\
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m{}    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar"""
matNum = matInsert('Air', airString,           -0.001205)

carbonFiberString = 'm{}    6012.       1      $ C  density depends on form'
matNum = matInsert('CarbonFiber', carbonFiberString, -2.0)

# Not in compendium
muMetalString = """\
c MuMetal
c 8.70 g/cc
m{}    24000  -0.016524  $ Cr
       26000  -0.144512  $ Fe
       28000  -0.787484  $ Ni
       29000  -0.051480  $ Cu"""
matNum = matInsert('MuMetal', muMetalString,   -8.70)

# compendium has UF6 but at much higher density
uf6GasString = """\
m{}   92238  1.0        $ U, UF6 gas, rho = 9.633E-4 g/cc, all U-238 for simplicity w/ gamma transport
     9019   6.0        $ F"""
matNum = matInsert('UF6Gas', uf6GasString,     -9.633E-4)

# not in compendium
uDepositString = """\
c                           
m{}   92238  1.0        $ U, Deposit UO2F2, 3.0 g/cc, all U-238 for simplicity w/ gamma transport
     8016   2.0        $ O
     9019   2.0        $ F"""
matNum = matInsert('UOFDep', uDepositString,   -3)

fr4PCBString = """\
c                            
m{}   1001  -0.010      $ FR4 circuit board, rho = 2.635 g/cc
     5010  -0.0053
     5011  -0.0147
     6000  -0.04
     8016  -0.39
     13027 -0.01
     14028 -0.23
     29063 -0.2
     35079 -0.1 """
matNum = matInsert('FR4PCB', fr4PCBString,     -2.635)

zirconiumDioxideString = """\
c ZrO2, rho = 5.68 g/cc ... More isotopes of Zr should be used
m{}   40000   0.333338   $ Zr 1/3
       8000   0.666662   $ O  2/3 """
matNum = matInsert('ZrO2', zirconiumDioxideString, -5.68)

# The CZT defintion in the material compendium is not correct
# and will be fixed in the next version
# It assumes that the atom ratio is really 1:1:1 CZT
CZT_fixedString = """\
c  CD_0.9 Zn_0.1 Te_1 
m{}    48000  0.9
       30000  0.1
       52120  0.0009
       52122  0.0255
       52123  0.0089
       52124  0.0474
       52125  0.0707
       52126  0.1884
       52128  0.3174
       52130  0.3408  """
matNum = matInsert('CZT_fixed', CZT_fixedString, -5.78)
