# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================
import numpy as np
import matplotlib.pyplot as plt

import os
from mctal import Mctal
show = False
"""
This file is an abstraction layer for whatever code will be used to parse
mctal files.
"""
#############################################################################
def main():
  """  """
  pass
#############################################################################
def getTallyFromMctal(filepath, tallyNumWtype, objectNum, t_or_d):
  """
  tallyNumWtype - tally number with type. For tally nums15, 25, the tally type
  is 5.
  objectNum is facet? surface or cell num???
  #--------------------  
  A tally in MCNP can have 9 possible dimensions.

  - facet f The facet of the tally, cell, surface, point number
  - direct/flagged d The flagged/unflagged contribution for cell/surface tallies OR the
                    direct/scattered contribution for point detectors (this dimension never
                    exceeds 2)
  - user u The user bins established by use of an FT tally input or by use of a
          TALLYX routine
  - segment s The segmenting bins established by use of an FS tally input
  - multiplier m The multiplier bins established by use of an FM tally input
  - cosine c The cosine bins established by use of an C tally input
  - energy e The energy bins established by use of an E tally input
  - time t The time bins established by use of a T tally input
  - perturbation pert The perturbation number established by use of PERT inputs
  #--------------------  
  A given tally can have multiple tally objects in it, say corresponding
  to different points. These are t.object_bins.
  For each object, there are two possible tallies. t_or_d
  For each of t or d, there is 'data' or 'err'.
  
  And each object can have a single bin or a spectrum!!! ???
  
  Suppose there were two points in an F5 tally.
  There would be two objects, each with a t and a d tally,
  for a total of 4 t.vals dictionaries.
  t.vals[0]/t.vals[1] would be the t/d of the first.
  t.vals[2]/t.vals[3] wold be the t/d of the second.
  
  t_or_d = 0 is total
  t_or_d = 1 is direct
  
  Start of energy bins is always zero. don't return that.
  Last bin is total, DON'T return that either.
  """
  mctal = Mctal(filepath=filepath, verbose=False)
  t = mctal.tallies[tallyNumWtype]
  printIfShow('Num objects:', t.object_bins)
  
  # t.energies [0.0, ... , 'total']
  en = [e for e in t.energies]
  d = None; err = None
  for v in t.vals:
    printIfShow('Object:', v['object'], ' t_or_d:', v['t_or_d'])
    if v['object'] == objectNum and v['t_or_d'] == t_or_d:      
      d = v['data']
      err = v['err']

  if d is None:
    return None # relevant objectNum not found
  
  # skip last data bin which contains total
  # skip first en bin, it is 0, energy bin edges???
  return np.array(en[1:-1]), np.array(d[0:-1]), np.array(err[0:-1])
 
def getRadiographyTallyFromMctal(filepath, tallyNumWtype, t_or_d):
  """  
  t_or_d = 0: # Total, with scatter
  t_or_d = 1: # Direct, no scatter
    
  If the tally has spectral bins, is there a total bin???
  Do I need separate methods for tallies with and without energy bins?
  """
  if( os.path.isfile(filepath)):
    print('Reading File:', filepath)
  else:
    print('File not found:', filepath)
    return
  mctal = Mctal(filepath=filepath, verbose=False)
  print('Title:', mctal.title)           # the input title card
  print('probid:', mctal.probid) 	      # the date and time when the problem was run and, if it is available, the designator of the machine that was used.
  print('Number of histories:', mctal.nps)
#  print('Code:', tal.kod)             # the name of the code, MCNPX.
#  print('Version:', tal.ver)          # the version, 2.7.0.
#  print('Dump #:', tal.knod)          # the dump number.
#  print('Number of perturbations:', tal.npert) # number of perturbations
#  print('Pseudo Rands used:', tal.rnr) # nrn??? the number of pseudorandom numbers that were used.
#  print('Number of tallies:', tal.ntal)# number of tallies
#  print('Tally numbers:', tal.tally_n) # list of tally types (name numbers)
#  print(tal.tallies)                   # dictionary of tally objects
#  print(tal.verbose)                   # flag if prints are done ???
#  print('segments:', t.segments)       # len is 41, but should be two axes???
#  print('vals (number of items in tallies):', len(t.vals))
  
  # can also get the mesh tally data -> 
  # it is *always* xy distributions and indexed in z (MCNP mesh tally coordinates)
  tally = mctal.tallies[tallyNumWtype]
  print('segment_bins:', tally.segment_bins) # 41
  numRows = tally.segment_bins # ??? poorly named???
  numPixels = len(tally.vals)//2 # half for total, half for direct/unscattered
  numCols = numPixels//numRows
  
  # Extract total (direct+scattered) counts from tally
  
  # t.vals is a list of dictionaries, two dicts for each pixel
  # among other things, each dict has two numbers 'data', 'err'
  #{'object': 0, 'multiplier': False, 'segment': 0, 't_or_d': 0, 'cosine_bin': [-0.0984], 'user_bin': 0, 'data': [7.18551e-06], 'err': [0.0024]}
  tallyArray = [] # 1681 = 41x41
  relerr = []
  for i in range(len(tally.vals)): # t.vals is a list of dictionaries, one dict for each pixel
    if tally.vals[i]['t_or_d'] == t_or_d: # 0 is total, 1 is direct/unscattered
      tallyArray.append(tally.vals[i]['data']) # contains all energy bins for a pixel
      relerr.append(tally.vals[i]['err'])    
  tallyArray = np.array(tallyArray)
  relerr = np.array(relerr)
  
  tallyArrayReshaped = []
  relerrReshaped = []
  print('Reading FIR energy bins:', tally.energy_bins)
  ebinsToRead = tally.energy_bins
  if tally.energy_bins>1: ebinsToRead -= 1 # If multiple bins, the last bin is total
  for e in range(ebinsToRead):
    t = tallyArray[:, e]
    t = np.reshape(t, (numRows, numCols))
    t = np.rot90(t)
    t = np.flipud(t)
    tallyArrayReshaped.append(t)

    r = relerr[:, e]
    r = np.reshape(r, (numRows, numCols))  
    r = np.rot90(r)
    r = np.flipud(r)    
    relerrReshaped.append(r)
  
  tallyArrayReshaped = np.array(tallyArrayReshaped)
  relerrReshaped = np.array(relerrReshaped)

  if tally.energy_bins == 1:
    tallyArrayReshaped = tallyArrayReshaped[0]
    relerrReshaped = relerrReshaped[0]
  else:
    tallyArrayReshaped = np.sum(tallyArrayReshaped, axis=0)
    relerrReshaped = np.sum(relerrReshaped, axis=0)
  
  return tallyArrayReshaped, relerrReshaped
#############################################################################
def exploreMctalFile(filepath):
  """
  A MCTAL file contains the tally data of one dump of a RUNTPE file.
  Page 6-29.
  
  This function goes through all the tallyTypes in the mctally file
  Then through all tallies of each type and so on.
  """
  mctal = Mctal(filepath=filepath, verbose=True)
  print('filepath:', mctal.filepath)
  print('title:', mctal.title)
  print('probid:', mctal.probid)
  print('nps:', mctal.nps)
  print('ntal (number of tallies):', mctal.ntal)
  print('tally_n (list of tally nums):', mctal.tally_n)
  print('tallies:', mctal.tallies)
  return
  #mctal = Mctal(filepath=filepath, verbose=True)

  # Suppose the mctal has two tallyTypes, type 5 and type 15
  # For each tallyType there are multiple tallies or detectors
  # Some tallyTypes have multiple energy bins and some don't
  # When there is only a single energy bin, collect them into one array and plot
  # When there are multiple energy bins, plot each by itself
  for tallyNumWtype in mctal.tally_n:
    print('------------------------')
    t = mctal.tallies[tallyNumWtype]
    print('tallyNumWtype:', tallyNumWtype)
    print('name:', t.name)
    print('comment:', t.comment)
    print('detector_type:', t.detector_type)
    #print('t.energies:', t.energies)
    print('t.energy_bins:', t.energy_bins)
    print('t.is_meshtal:', t.is_meshtal)
    #print('t.meshtally_units:', t.meshtally_units)
    print('t.multiplier_bins:', t.multiplier_bins)
    print('t.multiplier_flag:', t.multiplier_flag)
    print('t.object_bins:', t.object_bins)
    print('t.objects:', t.objects)
    #print('t.particles:', t.particles)
    #print('t.particles_shorthand:', t.particles_shorthand)
    print('t.what_particles():', t.what_particles())
    #print('t.vals:', t.vals)
    print('Len of t.vals:', len(t.vals))

    #d = 'data' # 'err'
    if 'FIR' in t.comment:
      if t.energy_bins == 1:
        print('Found FIR tally with one energy bin')
        tallyArray, relErr = getRadiographyTallyFromMctal(filepath, tallyNumWtype, 0)
        u.showImageWithColorBar(tallyArray)
        plt.show()
      else:
        print('Found FIR tally with %d energy bins'%(t.energy_bins))
        tallyArray, relErr = getRadiographyTallyFromMctal(filepath, tallyNumWtype, 0)
        tallyArray = np.sum(tallyArray, axis=0)
        u.showImageWithColorBar(tallyArray)
        plt.show()
        # ??? What about FIR tallies with energy_bins???

    # Fix these cases  
    else: # NOT FIR 
      if t.energy_bins == 1: # 1 or more point detectors without energy bins
        total = []
        direct = []; # total and direct
        err = []
        for v in t.vals:
          print('Object:', v['object'], ' t_or_d:', v['t_or_d'])
          if v['t_or_d'] == 0: # Total
            total.append(v['data'][0]) # accessing only bin in tally
            err.append(v['err'][0]) # accessing only bin in tally
          elif v['t_or_d'] == 1: # Direct
            direct.append(v['data'][0]) # accessing only bin in tally
            err.append(v['err'][0]) # accessing only bin in tally
        print('Total:', total)
        print('Direct:', direct)
#        plt.plot(total, drawstyle='steps')
#        plt.title('total'); plt.show()
#        plt.plot(direct, drawstyle='steps')
#        plt.title('direct'); plt.show()
#        plt.plot(err, drawstyle='steps')
#        plt.title('err for total and direct'); plt.grid(); plt.show()
      else: # t.energy_bins > 1
        en = [e for e in t.energies]
        for v in t.vals:
          print('Object:', v['object'], ' t_or_d:', v['t_or_d'])
          d = v['data']
          plt.plot(en[1:-1], d[0:-1], drawstyle='steps')
          plt.grid(); plt.show()
    #print('t.tfc_data:', t.tfc_data) # tally fluctuation chart    
#############################################################################
def printIfShow(*args, **kwargs):
  """ """
  global show
  if show:
    print(*args, **kwargs)
#############################################################################
if __name__ == '__main__':
  main()

