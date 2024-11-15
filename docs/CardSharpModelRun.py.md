# Module: CardSharpModelRun.py



-----------------
-----------------
## Function: runMcnpModel
(folder, filename, mcnpCodePath="C:/MY_MCNP/MCNP_CODE/bin/", mcnpDataPath="C:/MY_MCNP/MCNP_DATA/", numTasks=1):

MCNP manual suggests setting environment variables in Windows like below,  but you can pass in the paths as arguments to this function and it should work for both Windows and Unix.

"set PATH=c:\MY_MCNP\MCNP_CODE\bin\;%PATH%"
"set DATAPATH=C:\MY_MCNP\MCNP_DATA"

If filename is ex.i, then files named ex.io/im/ir WILL BE DELETED before a new run is started.

Return '' or error string.

