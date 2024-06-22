#Adapted from code by: Ryan Bergmann
#https://github.com/sellitforcache/MCNPtools/tree/master?tab=License-1-ov-file#readme

import re, numpy
"""
This file has support for reading tallies out of an mctally file.
"""
#############################################################################
class Tally:
  """
  Class representing a single tally in an mctally file.
  """
  def __init__(self,verbose=False):
      self.name               = 0    # tally name number
      self.particle_type      = 0    # i>0 particle type, i<0 i=number of particle type, list following
      self.detector_type      = 0    # j=type of detector tally (0=none)
      self.particle_list      = []   # list of included particles
      self.comment            = ''
      self.object_bins        = 0
      self.objects            = []
      self.totalvsdirect_bins = 1
      self.user_bins          = 0
      self.segment_bins       = 0
      self.segments           = []
      self.multiplier_bins    = 0
      self.multiplier_flag    = True
      self.cosine_bins        = 0
      self.cosines            = []
      self.energy_bins        = 0
      self.energies           = []
      self.time_bins          = 0
      self.times              = []
      self.total_bins         = 0
      self.vals               = []
      self.tfc                = [0,0,0,0,0,0,0,0,0]
      self.tfc_data           = []
      self.verbose            = verbose
      self.is_meshtal         = False

  def _process_vals(self):
      # calculate based on binning
      if type(self.objects[0])==type([]):
          self.is_meshtal=True
          total_bins = self.object_bins
          # de-interlace the errors
          vals = self.vals[0::2]
          errs = self.vals[1::2]
          self.vals = []
          # make containers for each energy bin
          e_bins=max(1,len(self.objects[0])-1)
          for e in range(0,e_bins):
              self.vals.append([])
          # split into xy plots
          n_xy_plots = total_bins / (len(self.objects[3])-1)
          x_bins = len(self.objects[1])-1
          y_bins = len(self.objects[2])-1
          for e in range(0,e_bins):
              for b in range(0,len(self.objects[3])-1):
                  # get length, and reshape
                  these_vals = {}
                  these_vals['data']  = np.reshape(vals[b*n_xy_plots:(b+1)*n_xy_plots],(y_bins,x_bins))
                  these_vals['err']   = np.reshape(errs[b*n_xy_plots:(b+1)*n_xy_plots],(y_bins,x_bins))
                  self.vals[e].append(these_vals)
      else:
          total_bins = self.object_bins*(self.multiplier_bins*self.segment_bins*self.cosine_bins*self.totalvsdirect_bins)  ## update for user/multiplier

          # check based on e vec length
          total_bins_e = len(self.vals)/(2*(len(self.energies)+1))

          # check consistency (should be thick by now)
          #assert(total_bins == total_bins_e) # ??? Nik commented out
          self.total_bins = total_bins
          if self.verbose:
              print("...... %d non-energy bins in tally" % (self.total_bins))

          # make full vector of cosine edges if not a point detector
          if self.cosine_bins==1:
                  self.cosines=[-1.0,1.0]
          if (self.name % 10) != 5:
              self.cosines.insert(0,-1.0)

          # make ful vector of energy edges
          self.energies.insert(0,0.0)
          self.energies.append('total')

          # bag and tag em
          # indexing only for segment and cosine bins now, add others once I understand what they mean...
          new_vals = []
          n = 0
          num_seg=self.segment_bins
          num_cos=self.cosine_bins
          num_obj=self.object_bins
          num_mul=self.multiplier_bins
          num_td =self.totalvsdirect_bins

          for o in range(num_obj):
              for td in range(num_td):
                  for s in range(num_seg):
                      for m in range(num_mul):
                          for c in range(num_cos):
                              if self.verbose:
                                  if self.multiplier_flag:
                                      print("...... parsing object %2d (%4d) segment %2d multiplier %2d cosine bin %2d " % (o,self.objects[o],s,m,c))
                                  else:
                                      print("...... parsing object %2d (%4d) segment %2d cosine bin %2d " % (o,self.objects[o],s,c))
                              these_vals                  = {}
                              subset                      = self.vals[n*(self.energy_bins*2):(n+1)*(self.energy_bins*2)]
                              these_vals['object']        = self.objects[o]
                              if self.multiplier_flag:
                                  these_vals['multiplier']= m
                              else:
                                  these_vals['multiplier']= False
                              these_vals['segment']       = s
                              these_vals['t_or_d']        = td
                              if (self.name % 10) != 5:
                                  if c == len(self.cosines)-1:  #  only happens when there is a total bin
                                      these_vals['cosine_bin']    = [-1,1]
                                  else:
                                      these_vals['cosine_bin']    = [self.cosines[c],self.cosines[c+1]]
                              else:
                                  if self.cosine_bins > 1:
                                      these_vals['cosine_bin']    = [self.cosines[c]] # radiography
                                  else:
                                      these_vals['cosine_bin']    = [-1,1]   # regular pd
                              these_vals['user_bin']      = self.user_bins       # replace once understood
                              these_vals['data']          = subset[0::2]
                              these_vals['err']           = subset[1::2]
                              new_vals.append(these_vals)
                              n = n+1
          self.vals = new_vals

#############################################################################
class Mctal:
  """
  Class representing mctally file.
  """
  def __init__(self, filepath=None, verbose=False):
      ### mctal header data
      self.kod        = ''        # the name of the code, MCNPX.
      self.ver        = ''        # the version, 2.7.0.
      self.probid     = ''        # the date and time when the problem was run and, if it is available, the designator of the machine that was used.
      self.knod       = 0         # the dump number.
      self.nps        = 0         # the number of histories that were run.
      self.rnr        = 0         # the number of pseudorandom numbers that were used.
      self.title      = ''        # the input title card
      self.ntal       = 0         # number of tallies
      self.tally_n    = []        # list of tally name numbers
      self.npert      = 0         # number of perturbations
      self.tallies    = {}        # dictionary of tally objects
      self.verbose    = verbose   # flag if prints are done
      self.filepath   = filepath  # path the mctal file
      self.picklepath = None      # path for pickling
      if self.filepath:               # read in file if specified at instantiation
          self.read_mctal(self.filepath)

  def read_mctal(self,filepath):

      meshtal_flag = False

      # open and read in entirely
      fobj    = open(filepath)
      fstr    = fobj.read()

      # split into lines for convenience
      lines   = fstr.split('\n')

      # split first line into its six parts
      line1           = lines[0].split()
      self.kod        = line1[0]
      self.ver        = line1[1]
      self.probid     = line1[2]+' '+line1[3]
      self.knod       = int(line1[4])
      self.nps        = int(line1[5])
      self.rnr        = int(line1[6])

      # next line is the title
      self.title = lines[1]

      # next is number of tallies
      self.ntal = int(lines[2].split()[1])

      # next is list of tally numbers
      n = 3
      n = read_array(lines,self.tally_n,n,mode='int')

      # go through tally data
      for k in self.tally_n:
          if self.verbose:
              print("... reading tally "+str(k))
          # init tally object
          self.tallies[k] = Tally(verbose=self.verbose)
          # get header data, assert things
          t1 = lines[n].split()
          n = n+1
          self.tallies[k].name            = int(t1[1])
          self.tallies[k].particle_type   = int(t1[2])
          self.tallies[k].detector_type   = int(t1[3])
          assert(t1[0]=='tally')
          assert(self.tallies[k].name==k)
          ### get list of numbers if flagged
          if self.tallies[k].particle_type < 0:
              t1 = lines[n].split()
              n = n+1
              for p in t1:
                  self.tallies[k].particle_list.append(int(p))
          for i in range(0,5):
              if lines[n][0] != 'f':
                  self.tallies[k].comment         = lines[n]
                  n = n+1
              else:
                  break
          # read the object numbers (surfaces, cells), keep all values so can decide what to do with them
          t1 = lines[n].split()
          self.tallies[k].object_bins             = int(t1[1])
          n = n+1
          if (self.tallies[k].name % 10) == 5:   # point detector objects are not listed, so skip
              n = n
              self.tallies[k].objects = range(0,self.tallies[k].object_bins)
          elif len(lines[n-1].split())>2:
              if len(lines[n-1].split())!=6:
                  if self.verbose:
                      print("...... rejected.  number of object entries not consistent with a mesh tally.")
                  else:
                      print("Tally %d rejected.  Number of object entries not consistent with a mesh tally."%k)
                  ## find the start of the next tally (if any)
                  while len(lines[n])>0:
                      if lines[n].split()[0]=='tally':
                          break
                      else:
                          n=n+1
                  continue
              else:
                  meshtal_flag = True
                  self.tallies[k].objects = [[],[],[],[]]
                  # read in binning parameters
                  self.tallies[k].object_bins = int(t1[1])
                  nbins_et    = int(t1[2])
                  nbins_x     = int(t1[3])
                  nbins_y     = int(t1[4])
                  nbins_z     = int(t1[5])
                  # read in binning data
                  if nbins_et>0:
                      n = read_array(lines,self.tallies[k].objects[0],n,mode='float',limit=(nbins_et/6+1))
                      self.tallies[k].energies = self.tallies[k].objects[0]
                  if nbins_x>0:
                      n = read_array(lines,self.tallies[k].objects[1],n,mode='float',limit=(nbins_x/6+1))
                  if nbins_y>0:
                      n = read_array(lines,self.tallies[k].objects[2],n,mode='float',limit=(nbins_y/6+1))
                  if nbins_z>0:
                      n = read_array(lines,self.tallies[k].objects[3],n,mode='float',limit=(nbins_z/6+1))
          else:
              n = read_array(lines,self.tallies[k].objects,n,mode='float') # Nik: was int, change to fix F1 tallies
          # read single numbers bins
          self.tallies[k].totalvsdirect_bins      = int(lines[n+0].split()[1])
          self.tallies[k].user_bins               = int(lines[n+1].split()[1])
          # read segments
          self.tallies[k].segment_bins            = int(lines[n+2].split()[1])
          n = n+3
          if self.tallies[k].segment_bins == 0: # make 1-indexing, since if there is 1 bin, this number is 0, and if there are two, this number is 2!
              self.tallies[k].segment_bins = 1
          elif (self.tallies[k].name % 10) == 5:   # point detector objects can only be segmented in radiography tallies, will be floats, otherwise there is no list
              n = read_array(lines,self.tallies[k].segments,n,mode='float')
          # read multipliers
          self.tallies[k].multiplier_bins         = int(lines[n].split()[1])
          n = n+1
          if self.tallies[k].multiplier_bins == 0: # make 1-indexing, but flag to keep information that this tally is NOT multiplied
              self.tallies[k].multiplier_bins = 1
              self.tallies[k].multiplier_flag = False
          #  read cosine bins
          self.tallies[k].cosine_bins             = int(lines[n].split()[1])
          n = n+1
          n = read_array(lines,self.tallies[k].cosines,n)
          if self.tallies[k].cosine_bins == 0:
              self.tallies[k].cosine_bins = 1
              self.tallies[k].cosines     = [-1.0,1.0]
          #  read energy bins
          self.tallies[k].energy_bins             = int(lines[n].split()[1])
          n = n+1
          n = read_array(lines,self.tallies[k].energies,n)
          if self.tallies[k].energy_bins == 0:
              self.tallies[k].energy_bins = 1
          #  read time bins
          self.tallies[k].time_bins               = int(lines[n].split()[1])
          n = n+1
          n = read_array(lines,self.tallies[k].times,n)
          if self.tallies[k].time_bins == 0:
              self.tallies[k].time_bins = 1
          #  read tally data
          n = n+1 #vals has no numbers following it
          n = read_array(lines,self.tallies[k].vals,n)
          self.tallies[k]._process_vals()  # parse tally data
          #  read tfc data
          if meshtal_flag:
              continue
          else:
              for d in lines[n].split()[1:] :
                  self.tallies[k].tfc.append(int(d))
              n = n+1
              n = read_array(lines,self.tallies[k].tfc_data,n)

      if self.verbose:
          print("... done.")
#############################################################################
def read_array(lines,obj,n,mode='float',limit=1e99):
  """
  Given a list of text lines, start at line n, end at line that does not start with space.
  Convert all tokens to integer or float.
  Return line stopped at.
  Return numbers found in list obj.
  """
  small=re.compile('([0-9].[0-9]+)([+-]+[0-9]+)')
  n_start=n
  while len(lines[n])>0 and lines[n][0]==' ' and (n-n_start)<limit:
    for m in lines[n].split():
      if mode == 'int':
          obj.append(int(m))
      elif mode == 'float':
        check = small.match(m)
        if check:
          obj.append(float(check.group(1)) * numpy.power(10.0,float(check.group(2))))   #  workaround for mcnp omitting 'E' for exponents with 3 digits
        else:
          obj.append(float(m))
    n = n+1
  return n
#############################################################################
