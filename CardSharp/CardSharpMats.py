# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================
import sys
from pathlib import Path

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
def matInsert(key, matString, defaultDensity, matNum=0):
  """
  The key and matNum have to be unique.
  defaultDensity must be in g/cc, and a negative number.
  ??? Don't make user put a negative number.
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
    if matNum == 0: # auto assign
      if len(currMatNumList) == 0:
        newMatNum = 1
      else:
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
def matClone(key, newDensity):
  """
  If an application requires an existing material with a different density,
  you can specify the density for each cell that you use it in. Or clone the
  material.
  """
  global matDict
  
  pass

def matAddAlias(keyStr, aliasStr):
  """
  """
  if aliasStr in matDict.keys():
    print('Error: The alias provided already exists in the dict.')
    sys.exit(0)
  if aliasStr in matDict.aliases.keys():
    print('Error: The alias provided already exists as an alias.')
    sys.exit(0)
    
  matDict.add_alias(keyStr, aliasStr)

def matClearAllAliases():
  """ """
  global matDict
  matDict.clearAllAliases()
  
def matLookup(matKey):
  """ """
  global matDict

  if matKey == 'Void':
    return 0, 0
  else:
    try:
      matNum = matDict[matKey][1]
      density = matDict[matKey][2]
      print('Material Lookup, key:'+matKey, ', MatNum/density:', matNum, density)

    except IndexError as e:
      print(e)
      sys.exit(1)
    return matNum, density    

def matSearch(partialName='Carbon'):
  """
  To find possible matches to a material in the dictionary.
  Look in keys and description since it contains alternate names.
  """
  global matDict
  
  matKeys = matDict.keys()
  print('Possible matches:------------')
  for k in matKeys:
    if partialName.lower() in k.lower() or partialName.lower() in matDict[k][0].lower():
      print('Mat key: ', k)
      print('Mat num/density: ', matDict[k][1], matDict[k][2])
      print('--------------------------')
  print('Done')
#############################################################################
class AliasDict(dict):
  def __init__(self, *args, **kwargs):
    dict.__init__(self, *args, **kwargs)
    self.aliases = {}

  def __getitem__(self, key):
    return dict.__getitem__(self, self.aliases.get(key, key))

  def __setitem__(self, key, value):
    return dict.__setitem__(self, self.aliases.get(key, key), value)

  def add_alias(self, key, alias):
    self.aliases[alias] = key

  def clearAllAliases(self):
    self.aliases = {}
        
matDict = AliasDict({}) # 'matKey': [matString,       matNum, -matDensity],
thisFileFolder = Path(__file__).parent
exec(open(thisFileFolder / "./matCompendiumIsotopic.py").read())
exec(open(thisFileFolder / "./matDataAdditional.py").read())
#############################################################################
def main():
  """  
  """
  k = matDict.keys()
  print('Num materials:', len(k))
  #print(k); #return
  dummyString = 'm{}   13027.      1      $ Dummy material'

  # Test alias
  matAddAlias('PolyethyleneNonborated', 'Poly')
  matLookup('PolyethyleneNonborated')
  matLookup('Poly')

  #matAddAlias('Tungsten', 'CarbonFiber') # Should fail, existing key
  #matAddAlias('Tungsten', 'Poly') # Should fail, existing alias

  # Test lookup
  matLookup('Copper')

  # Test insertion
  matNum = matInsert('dummy1', dummyString, 2.7) # should Pass
  print('Pass', matNum) if matNum != 0 else print('Fail')

  matNum = matInsert('Aluminum', dummyString, 2.7, 13) # should Fail, existing key
  print('Pass') if matNum != 0 else print('Fail')

  matNum = matInsert('dummy', dummyString, 2.7, 13) # should Fail, existing matNum
  print('Pass') if matNum != 0 else print('Fail')
  
  # Test search  
  matSearch(partialName = 'air')
  
#############################################################################
if __name__ == '__main__':
  main()

