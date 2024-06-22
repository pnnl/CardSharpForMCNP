# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================
import sys

"""
This file provides support for materials.

Material composition: positive - atomic fraction. With negative sign, weight fraction, 
Don't need to be normalized.
Cell densities: negative g/cc. positive 10^24 atoms/cm3 (i.e., atoms/b-cm).

Atomic fraction materials
ZAID – 1000*(atomic number) + mass number

To add more materials, add the material string and make an entry in the dictionary.
Don't put any ZAID in first five columns.
"""
#############################################################################
cString = 'm{}    6012.       1      $ C  density depends on form'
alString = 'm{}   13027.      1      $ Al  usually 2.7  g/cc'
pbString = 'm{}   82208.      1      $ Pb usually 11.4  g/cc'

wString =  """\
m{}   74182.70c   26.5    $ W (Tungsten) usually 19.3 g/cc
      74183.70c   14.31
      74184.70c   30.64
      74186.70c   28.43""" # Don't put these ending quotes on the next line
      
polyString = """\
c     Polyethylene (C2H4)n by atomic percent... Need to confirm. 
c     rho:  0.93 g/cc
m{}    6000   0.333338     $  C
       1001   0.666662     $  H"""

# Weight fraction materials
cuString =  """\
m{}   029063.80c -0.692    $ Cu usually 8.941  g/cc
      029065.80c -0.308"""

airString = """\
c     Air:  40% relative Humidity at 1 atmosphere, Rivard  AAPM TG-43
c     Update, Med Phys 31(3):633-674, Table XIV                      
c     rho:  .0012 g/cc (1.20e-3)                                                  
m{}    1001   -0.0732     $  H
       6000   -0.0123     $  C
       7014  -75.0325     $  N
       8016  -23.6077     $  O
      18000   -1.2743     $  Ar"""

carbonSteelString = """\
c     Carbon steel
c     rho: 7.82 gm/cc
m{}    6000   -0.005    $ C
       26000   -0.995    $ Fe"""

ss304String = """\
c    SS304L
c    8.0 g/cc
c    ref:  Metals Handbook, p 15.2
m{}       6000 -0.0003  $  C-nat
          7014 -0.001   $  N-14 (nat)
         14000 -0.01    $  Si-nat
         15031 -0.00045 $  P-nat
         16000 -0.0003  $  S-nat
         24000 -0.19    $  Cr-nat
         25055 -0.02    $  Mn-55 (nat)
         28000 -0.10    $  Ni-nat
         26000 -0.67795 $  Fe-nat (remainder)"""

laBrString = """\
c   LaBr detector
c   5.98 g/cc
m{}  35079 -0.316012
     35081 -0.315192
     58136 -0.000033
     58138 -0.000045
     58140 -0.016151
     58142 -0.002059
     57138 -0.000309
     57139 -0.350195"""

teflonString = """\
c  Teflon (Polytetrafluoroethylene) (C2F4)n
c  2.25 g/cc
m{}  6000   0.333339  $ C   
     9000   0.666661  $ F"""

muMetalString = """\
c MuMetal
c 8.70 g/cc
m{}    24000  -0.016524  $ Cr
       26000  -0.144512  $ Fe
       28000  -0.787484  $ Ni
       29000  -0.051480  $ Cu"""

uf6GasString = """\
m{}   92238  1.0        $ U, UF6 gas, rho = 9.633E-4 g/cc, all U-238 for simplicity w/ gamma transport
     9019   6.0        $ F"""
     
uDepositString = """\
c                           
m{}   92238  1.0        $ U, Deposit UO2F2, 3.0 g/cc, all U-238 for simplicity w/ gamma transport
     8016   2.0        $ O
     9019   2.0        $ F"""

cztString = """\
c                           
m{}   48106  1.0        $ Cd, CZT, rho = 5.8 g/cc
     30064  1.0        $ Zn
     52130  1.0        $ Te"""

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
     
polyCarbString = """\
c Polycarbonate, C15 H16 O2??? rho = 1.2 g/cc
m{}   1001  -0.055491   $ H, 
      6012  -0.755751   $ C
      8016  -0.188758   $ O """

zirconiumDioxideString = """\
c ZrO2, rho = 5.68 g/cc ... More isotopes of Zr should be used
m{}   40000   0.333338   $ Zr 1/3
       8000   0.666662   $ O  2/3 """

# see Lucite below
acrylicString = """\
c Acrylic C5O2H8 ... rho = 1.18 g/cc
m{}   1001   0.53333    $ H, 8/15 
      6012   0.33333    $ C, 5/15
      8016   0.13333    $ O, 2/15 """

naICrystalString = """\
c     Sodium Iodide crystal, NaI 
c     rho = 3.67 g/cc
m{}   11000   -0.1534   $ Na
      53000   -0.8466   $ I """

avgEarthsCrustString = """\
c      Average earth's crust
c      40% porosity, 2.5% moisture (wt.)
c      rho: 1.631 g/cc  
m{}    8016  -0.47655      $ O
       11023  -0.02730     $ Na    
       12000  -0.02048     $ Mg
       13027  -0.07898     $ Al
       14000  -0.27008     $ Si
       15031  -0.00195     $ P
       19000  -0.02535     $ K
       20000  -0.03510     $ Ca
       22000  -0.01170     $ Ti
       25055  -0.00098     $ Mn
       26000  -0.04875     $ Fe
        1001  -0.00280     $ H """
        
concreteString = """\
c       ANSI/ANS 6.6.1-1987 concrete
c        Numbers from NIST LSR7 input file
c       rho: 2.4 g/cc
m{}     1001.60c -0.0056  $
         8016.60c -0.4996 $
        11023.60c -0.0171 $
        12000.60c -0.0024 $
        13027.60c -0.0458 $
        14000.60c -0.315  $
        19000.60c -0.0191 $
        20000.60c -0.0831 $
        26056.60c -0.0123 $ """

dryWallString = """\
c       Gypsum (dry-wall)  Materials Compendium
c       rho: 2.32 g/cc
m{} 	1001 -0.023411
     	1002 -0.000005
	    8016 -0.556044
	    8017 -0.000225
	    8018 -0.001286
	   16000 -0.186251
	   20000 -0.232776 """  # Don't put these ending quotes on the next line
#############################################################################
def matInsert(key, matString, defaultDensity, matNum=0):
  """
  The key and matNum have to be unique.
  defaultDensity must be in g/cc.
  matString must be a valid MCNP material string, can be multiline.
  See material strings above for examples.

  If matNum is 0, an unused material number will be assigned and returned.
  If a matNum is provided, it will be checked for uniqueness and if it is
  unique it will be returned. If it is not unique, 0 will be returned and the
  material won't be inserted.
  """
  global matDict
  
  matString = matString.strip() # In case user puts extra new lines which can signal end of MCNP deck
  if key in matDict:
    print('Key already in dict: ', key)
    #sys.exit(0)
    return 0
  else:
    currMatNumList = [matDict[k][1] for k in matDict.keys()]
    if matNum == 0:
      newMatNum = max(currMatNumList) + 1
      matDict[key] = [matString, newMatNum, defaultDensity]
      return newMatNum
    else: # matNum is non zero
      if matNum in currMatNumList:
        print('Mat num already in dict: ', matNum)
        #sys.exit(0)
        return 0
      else: # user matNum is valid
        matDict[key] = [matString, matNum, defaultDensity]
        return matNum
#############################################################################
# name: Z (for elem, arb number for compounds), density g/cc
# elements are given the same matNum as their Z (just convention)
matDict = {   
               'C': [cString,         6, -2.0], # carbon fiber is between 1.75 and 2 g/cc graphite can be 2.0
              'Al': [alString,       13, -2.7],
              'Cu': [cuString,       29, -8.96],
               'W': [wString,        74, -19.3],
              'Pb': [pbString,       82, -11.35]
}              

# compounds can have arbitrary matNum
# The keys in the following entries are used in the user scripts
matNum = matInsert('SS304', ss304String,       -8.0)
matNum = matInsert('Poly', polyString,         -0.93)
matNum = matInsert('LaBr', laBrString,         -5.08)
matNum = matInsert('Teflon', teflonString,     -2.25)
matNum = matInsert('MuMetal', muMetalString,   -8.70)
matNum = matInsert('UF6Gas', uf6GasString,     -9.633E-4)
matNum = matInsert('UOFDep', uDepositString,   -3)
matNum = matInsert('CZT'   , cztString,        -5.8)
matNum = matInsert('FR4PCB', fr4PCBString,     -2.635)
matNum = matInsert('Polycarb', polyCarbString, -1.2)
matNum = matInsert('Acrylic', acrylicString,   -1.18)
matNum = matInsert('NaI', naICrystalString,    -3.67)
matNum = matInsert('Concrete', concreteString, -2.4)
matNum = matInsert('DryWall', dryWallString,   -2.32)
matNum = matInsert('Air', airString,           -0.001205)
matNum = matInsert('ZrO2', zirconiumDioxideString, -5.68)
matNum = matInsert('CarbonSteel', carbonSteelString, -7.82)
matNum = matInsert('EarthsCrust', avgEarthsCrustString, -1.631)

print('Pass') if matNum != 0 else print('Fail')

#(['C', 'Al', 'Cu', 'W', 'Pb', 'Air', 'CarbonSteel', 'SS304', 'Poly', 'LaBr', 
#'Teflon', 'MuMetal', 'UF6Gas', 'UOFDep', 'CZT', 'FR4PCB', 'Polycarb', 'ZrO2', 
#'Acrylic', 'NaI', 'EarthsCrust', 'Concrete', 'DryWall'])
#############################################################################
def matLookup(matName):
  """ """
  if matName == 'Void':
    return 0, 0
  else:
    try:
      matNum = matDict[matName][1]
      density = matDict[matName][2]
    except IndexError as e:
      print(e)
      sys.exit(1)
    return matNum, density    
#############################################################################
def main():
  """  
  """
  k = matDict.keys()
  print('Num materials:', len(k))
  print(k)
  # Test insertion
  matNum = matInsert('Al', alString, 2.7, 13) # should Fail, existing key
  print('Pass') if matNum != 0 else print('Fail')

  matNum = matInsert('dummy', alString, 2.7, 13) # should Fail, existnig matNum
  print('Pass') if matNum != 0 else print('Fail')

  matNum = matInsert('dummy1', alString, 2.7, 150) # should Pass
  print('Pass', matNum) if matNum != 0 else print('Fail')

  matNum = matInsert('dummy2', alString, 2.7) # should Pass
  print('Pass', matNum) if matNum != 0 else print('Fail')

  # Test lookup
  mat = 'DryWall'
  matNum, density = matLookup(mat)
  print(mat, matNum, density)
  
  k = matDict.keys()
  print('Num materials:', len(k))
  print(k)
#############################################################################
if __name__ == '__main__':
  main()

