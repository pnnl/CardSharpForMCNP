# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================

"""
This file provides support for materials.

"""

import sys
from pathlib import Path

#############################################################################
class AliasDict(dict):
  """
  This class supports adding aliases to the keys in a dictionary.
  """
  def __init__(self, *args, **kwargs):
    dict.__init__(self, *args, **kwargs)
    self.aliases = {}

  def __getitem__(self, key):
    return dict.__getitem__(self, self.aliases.get(key, key))

  def __setitem__(self, key, value):
    return dict.__setitem__(self, self.aliases.get(key, key), value)

  def add_alias(self, key, alias):
    """ Add an alias to an existing item """
    self.aliases[alias] = key

  def clearAllAliases(self):
    """ Clear all aliases in the dictionary. The original items are retained."""
    self.aliases = {}
#############################################################################
def matSearch(partialName='Carbon'):
  """
  Use this function to find materials that you need for your deck. It takes a
  partial name and looks for possible matches to the materials in the dictionary.
  It looks for a match in keys as well as the material description since it contains 
  alternate names.
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
def matClone(oldKey, newKey, newDensity, matNum=0):
  """
  If an application requires an existing material with a different density,
  you can specify the density for each cell that you use it in. Or clone the
  material.
  """
  global matDict
  matString = matDict[oldKey][0]
  matInsert(newKey, matString=matString, defaultDensity=newDensity, matNum=matNum)
#############################################################################
def matAddAlias(keyStr, aliasStr):
  """
  Some of the material names in the dictionary/PNNL compendium are very long and
  cumbersome. This is a convenience function for creating simple aliases to the 
  long name.
  """
  if aliasStr in matDict.keys():
    print('Error: The alias provided already exists in the dict.')
    sys.exit(0)
  if aliasStr in matDict.aliases.keys():
    print('Error: The alias provided already exists as an alias.')
    sys.exit(0)
    
  matDict.add_alias(keyStr, aliasStr)
#############################################################################
def matClearAllAliases():
  """
  Remove all aliases. This is mainly needed if you are generating multiple MCNP
  decks from one scrip invocation, and the different decks use different aliases.
  """
  global matDict
  matDict.clearAllAliases()
#############################################################################
def matLookupByNum(matNum):
  """
  Use this function to lookup the material associated with the given matNum.
  """
  global matDict

  if matNum == 0:
    return 'Void'
  
  matKeys = matDict.keys()
  for k in matKeys:
    if matNum == matDict[k][1]:      
#      print('Mat key: ', k)
#      print('Mat num/density: ', matDict[k][1], matDict[k][2])
#      print('--------------------------')
      return k # if found, return key

  return None
def matLookup(matKey):
  """
  Use this function to lookup a specific material in the dictionary by it's key.
  """
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
#############################################################################
def matInsert(key, matString, defaultDensity, matNum=0):
  """
  Insert material into the material dictionary from which materials can be
  inserted into the MCNP card deck. More than 400 materials are already included, 
  so this function is only needed if the material you want is not already in the
  material dictionary. See matSearch.
  
  The key is what the material will be identified by for insertion into the deck
  and has to be unique.

  defaultDensity must be in g/cc, and a negative number. (MCNP convention)

  matNum is what MCNP identifies a material by and has to be unique.
  If matNum is 0, an unused material number will be assigned and returned.
  If a matNum is provided, it will be checked for uniqueness and if it is
  unique it will be returned. If it is not unique, 0 will be returned and the
  material won't be inserted.
  
  matString must be a valid MCNP material string, can be multiline.
  See material strings examples in the provided material files.

  Material composition: positive - atomic fraction. With negative sign, weight fraction, 
  Don't need to be normalized.
  Cell densities: negative g/cc. positive 10^24 atoms/cm3 (i.e., atoms/b-cm).
  
  Atomic fraction materials
  ZAID - 1000*(atomic number) + mass number
  
  To add more materials, add the material string and make an entry in the dictionary.
  Don't put any ZAID in first five columns.  
  """
  global matDict, nextMatNum
  
  matString = matString.strip() # In case user puts extra new lines which can signal end of MCNP deck
  if key in matDict:
    print('Key already in dict: ', key)
    #sys.exit(0)
    return 0
  else:
    if matNum == 0: # auto assign
      newMatNum = nextMatNum
      nextMatNum += 1
      matDict[key] = [matString, newMatNum, defaultDensity]
      return newMatNum
    else: # matNum is non zero
      currMatNumList = [matDict[k][1] for k in matDict.keys()]
      if matNum in currMatNumList:
        print('Mat num already in dict: ', matNum)
        #sys.exit(0)
        return 0
      else: # user matNum is valid
        matDict[key] = [matString, matNum, defaultDensity]
        return matNum

def reloadMatsDict():
  """
  This loads the material dict when the module is imported.
  If for some reason the materials dictionary needs to be reloaded, we use
  the same function and hence the name.
  Reloading can be needed if certain material numbers need to be avoided.
  """
  global matDict
  matDict = AliasDict({})
  
  thisFileFolder = Path(__file__).parent
  exec(open(thisFileFolder / "./matCompendiumIsotopic.py").read())
  exec(open(thisFileFolder / "./matDataAdditional.py").read())

matDict = None # AliasDict({}) # 'matKey': [matString,       matNum, -matDensity],
nextMatNum = 1 # auto incremented to generate next material number
reloadMatsDict()
        
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
  
  matNum = matClone('Air', 'NewAir', newDensity=-0.002)
  print('Pass') if matNum != 0 else print('Fail')
  
  # Test search  
  matSearch(partialName = 'air')
  
#############################################################################
if __name__ == '__main__':
  main()

