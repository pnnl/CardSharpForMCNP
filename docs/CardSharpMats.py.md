# Module: CardSharpMats.py
This file provides support for materials.

-----------------
-----------------
## Function: matSearch
(partialName='Carbon')

Use this function to find materials that you need for your deck. It takes a partial name and looks for possible matches to the materials in the dictionary.
It looks for a match in keys as well as the material description since it contains  alternate names.

-----------------
## Function: matClone
(key, newDensity)

If an application requires an existing material with a different density, you can specify the density for each cell that you use it in. Or clone the material.

-----------------
## Function: matAddAlias
(keyStr, aliasStr)

Some of the material names in the dictionary/PNNL compendium are very long and cumbersome. This is a convenience function for creating simple aliases to the  long name.

-----------------
## Function: matClearAllAliases
()

Remove all aliases. This is mainly needed if you are generating multiple MCNP decks from one scrip invocation, and the different decks use different aliases.

-----------------
## Function: matLookup
(matKey)

Use this function to lookup a specific material in the dictionary by it's key.

-----------------
## Function: matInsert
(key, matString, defaultDensity, matNum=0)

Insert material into the material dictionary from which materials can be inserted into the MCNP card deck. More than 400 materials are already included,  so this function is only needed if the material you want is not already in the material dictionary. See matSearch.

The key is what the material will be identified by for insertion into the deck and has to be unique.

defaultDensity must be in g/cc, and a negative number. (MCNP convention) 
matNum is what MCNP identifies a material by and has to be unique.
If matNum is 0, an unused material number will be assigned and returned.
If a matNum is provided, it will be checked for uniqueness and if it is unique it will be returned. If it is not unique, 0 will be returned and the material won't be inserted.

matString must be a valid MCNP material string, can be multiline.
See material strings examples in the provided material files.

Material composition: positive - atomic fraction. With negative sign, weight fraction,  Don't need to be normalized.
Cell densities: negative g/cc. positive 10^24 atoms/cm3 (i.e., atoms/b-cm).

Atomic fraction materials ZAID - 1000*(atomic number) + mass number 
To add more materials, add the material string and make an entry in the dictionary.
Don't put any ZAID in first five columns.  

-----------------
## Class: AliasDict
This class supports adding aliases to the keys in a dictionary.

### Method: AliasDict::add_alias
(self, key, alias)

Add an alias to an existing item 

### Method: AliasDict::clearAllAliases
(self)

Clear all aliases in the dictionary. The original items are retained.

