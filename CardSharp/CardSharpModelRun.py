# Cardsharp for MCNP
# @author: Nikhil Deshmukh
#==============================================================================
import os
import shlex
from subprocess import Popen, PIPE

"""
This file supports running MCNP on a Windows machine.
Used for testing the input deck and for small problems not requiring an HPC.
HPC support coming soon.
"""

#############################################################################
def main():
  """  """
  modelFolder = '../CardSharpOutput/Tests/CardSharpGeomTest0/'
  modelFilename = 'test.i'
  
  runMcnpModel(modelFolder, modelFilename, numTasks=10)
#############################################################################
def runMcnpModel(folder, filename, mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/", 
                 mcnpDataPath="C:/MY_MCNP/MCNP_DATA/", numTasks=1):
  """
  MCNP manual suggests setting environment variables in Windows like below, 
  but you can pass in the paths as arguments to this function and it should
  work for both Windows and Unix.
  
  "set PATH=c:\\MY_MCNP\\MCNP_CODE\\bin\\;%PATH%"
  "set DATAPATH=C:\\MY_MCNP\\MCNP_DATA"
  
  If filename is ex.i, then files named ex.io/im/ir WILL BE DELETED before
  a new run is started.
  
  Return '' or error string.
  """
  fileList = [folder+filename+'o', folder+filename+'r', folder+filename+'m',
              folder+filename+'s'] # folder+filename+'msht']
  for f in fileList:
    try:
      print('Deleting: ', f)
      os.remove(f)
    except FileNotFoundError as e:
      print('Warning: ', e)
  print('----------------')
  #command = shlex.split('dir *.*')
  command = shlex.split('mcnp6 n=%s tasks %d'%(filename, numTasks))

  #os.pathsep that is ; and is a separator in the PATH environment variable
  #os.path.sep that is / in Unix/Linux and \ in Windows, which is a separator 
  # between folders in the path
  myEnv = os.environ.copy()
  myEnv["PATH"] = mcnpCodePath + os.pathsep + myEnv["PATH"]
  myEnv["DATAPATH"] = mcnpDataPath
  process = Popen(command, env=myEnv, cwd=folder, stdout=PIPE, stderr=PIPE, shell=True)

  # poll for output... comment out if issues and simply do the process.communicate
  s = ''
  while process.poll() is None:
    #print('Polling:')
    output = process.stdout.readline().decode().rstrip() # read a line
    if output == '':
      continue # skip blank lines
    print('>'+str(output),)
    if 'fatal' in str(output).lower():
      s += str(output)
    #time.sleep(1) # seconds
  # read any remaining output
  stdout, stderr = process.communicate()
  #----------
  stdout = stdout.decode().rstrip()
  if stdout != '':
    print('2>'+str(stdout))
  print('-------------')
  stderr = stderr.decode().rstrip()
  if stderr != '':
    print('3>'+str(stderr))
  return s
#############################################################################
if __name__ == '__main__':
  main()

