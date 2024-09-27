# PNNL Compendium version: 0.1.1

A150TissueEquivalentPlasticStr = """\
c      A-150 Tissue-Equivalent Plastic
c      AKA: ['A-150 TEP']
c      rho: 1.127000 g/cc
m{}       1001  -0.101300 $ H1
       1002  -0.000023 $ H2
       6012  -0.766525 $ C12
       6013  -0.008984 $ C13
       7014  -0.034920 $ N14
       7015  -0.000137 $ N15
       8016  -0.052174 $ O16
       8017  -0.000021 $ O17
       8018  -0.000121 $ O18
       9019  -0.017422 $ F19
       20040  -0.017764 $ Ca40
       20042  -0.000124 $ Ca42
       20043  -0.000027 $ Ca43
       20044  -0.000420 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000041 $ Ca48
"""
matNum = matInsert('A150TissueEquivalentPlastic', A150TissueEquivalentPlasticStr, -1.13)

AcetoneStr = """\
c      Acetone
c      AKA: None
c      rho: 0.789900 g/cc
m{}       1001  -0.104104 $ H1
       1002  -0.000024 $ H2
       6012  -0.613213 $ C12
       6013  -0.007187 $ C13
       8016  -0.274730 $ O16
       8017  -0.000111 $ O17
       8018  -0.000635 $ O18
"""
matNum = matInsert('Acetone', AcetoneStr, -0.79)

AcetyleneStr = """\
c      Acetylene
c      AKA: None
c      rho: 0.001097 g/cc
m{}       1001  -0.077405 $ H1
       1002  -0.000018 $ H2
       6012  -0.911897 $ C12
       6013  -0.010687 $ C13
"""
matNum = matInsert('Acetylene', AcetyleneStr, -0.00)

AirdrynearsealevelStr = """\
c      Air (dry, near sea level)
c      AKA: None
c      rho: 0.001205 g/cc
m{}       6012  -0.000123 $ C12
       6013  -0.000001 $ C13
       7014  -0.752316 $ N14
       7015  -0.002944 $ N15
       8016  -0.231153 $ O16
       8017  -0.000094 $ O17
       8018  -0.000535 $ O18
       18036  -0.000039 $ Ar36
       18038  -0.000008 $ Ar38
       18040  -0.012781 $ Ar40
"""
matNum = matInsert('Airdrynearsealevel', AirdrynearsealevelStr, -0.00)

AlanineStr = """\
c      Alanine
c      AKA: None
c      rho: 1.420000 g/cc
m{}       1001  -0.079169 $ H1
       1002  -0.000018 $ H2
       6012  -0.399758 $ C12
       6013  -0.004685 $ C13
       7014  -0.156598 $ N14
       7015  -0.000613 $ N15
       8016  -0.358185 $ O16
       8017  -0.000145 $ O17
       8018  -0.000828 $ O18
"""
matNum = matInsert('Alanine', AlanineStr, -1.42)

AluminumStr = """\
c      Aluminum
c      AKA: None
c      rho: 2.698900 g/cc
m{}       13027  -1.000000 $ Al27
"""
matNum = matInsert('Aluminum', AluminumStr, -2.70)

AluminumOxideStr = """\
c      Aluminum Oxide
c      AKA: ['Alumina', 'Corundum']
c      rho: 3.970000 g/cc
m{}       8016  -0.469474 $ O16
       8017  -0.000190 $ O17
       8018  -0.001086 $ O18
       13027  -0.529251 $ Al27
"""
matNum = matInsert('AluminumOxide', AluminumOxideStr, -3.97)

Aluminumalloy2024OStr = """\
c      Aluminum, alloy 2024-O
c      AKA: None
c      rho: 2.780000 g/cc
m{}       12024  -0.011692 $ Mg24
       12025  -0.001542 $ Mg25
       12026  -0.001765 $ Mg26
       13027  -0.927000 $ Al27
       14028  -0.002603 $ Si28
       14029  -0.000137 $ Si29
       14030  -0.000093 $ Si30
       22046  -0.000067 $ Ti46
       22047  -0.000062 $ Ti47
       22048  -0.000628 $ Ti48
       22049  -0.000047 $ Ti49
       22050  -0.000046 $ Ti50
       24050  -0.000024 $ Cr50
       24052  -0.000475 $ Cr52
       24053  -0.000055 $ Cr53
       24054  -0.000014 $ Cr54
       25055  -0.006000 $ Mn55
       26054  -0.000160 $ Fe54
       26056  -0.002604 $ Fe56
       26057  -0.000061 $ Fe57
       26058  -0.000008 $ Fe58
       29063  -0.029788 $ Cu63
       29065  -0.013712 $ Cu65
       30064  -0.000681 $ Zn64
       30066  -0.000396 $ Zn66
       30067  -0.000059 $ Zn67
       30068  -0.000272 $ Zn68
       30070  -0.000009 $ Zn70
"""
matNum = matInsert('Aluminumalloy2024O', Aluminumalloy2024OStr, -2.78)

Aluminumalloy2090T83Str = """\
c      Aluminum, alloy 2090-T83
c      AKA: None
c      rho: 2.590000 g/cc
m{}       3006  -0.001474 $ Li6
       3007  -0.020937 $ Li7
       12024  -0.001271 $ Mg24
       12025  -0.000168 $ Mg25
       12026  -0.000192 $ Mg26
       13027  -0.944001 $ Al27
       14028  -0.000599 $ Si28
       14029  -0.000032 $ Si29
       14030  -0.000022 $ Si30
       22046  -0.000078 $ Ti46
       22047  -0.000071 $ Ti47
       22048  -0.000723 $ Ti48
       22049  -0.000054 $ Ti49
       22050  -0.000053 $ Ti50
       24050  -0.000014 $ Cr50
       24052  -0.000273 $ Cr52
       24053  -0.000032 $ Cr53
       24054  -0.000008 $ Cr54
       25055  -0.000326 $ Mn55
       26054  -0.000044 $ Fe54
       26056  -0.000720 $ Fe56
       26057  -0.000017 $ Fe57
       26058  -0.000002 $ Fe58
       29063  -0.018489 $ Cu63
       29065  -0.008511 $ Cu65
       30064  -0.000313 $ Zn64
       30066  -0.000182 $ Zn66
       30067  -0.000027 $ Zn67
       30068  -0.000125 $ Zn68
       30070  -0.000004 $ Zn70
       40090  -0.000583 $ Zr90
       40091  -0.000129 $ Zr91
       40092  -0.000199 $ Zr92
       40094  -0.000206 $ Zr94
       40096  -0.000034 $ Zr96
"""
matNum = matInsert('Aluminumalloy2090T83', Aluminumalloy2090T83Str, -2.59)

Aluminumalloy3003Str = """\
c      Aluminum, alloy 3003
c      AKA: None
c      rho: 2.730000 g/cc
m{}       13027  -0.978500 $ Al27
       14028  -0.003051 $ Si28
       14029  -0.000161 $ Si29
       14030  -0.000110 $ Si30
       25055  -0.012500 $ Mn55
       26054  -0.000219 $ Fe54
       26056  -0.003561 $ Fe56
       26057  -0.000084 $ Fe57
       26058  -0.000011 $ Fe58
       29063  -0.000856 $ Cu63
       29065  -0.000394 $ Cu65
       30064  -0.000266 $ Zn64
       30066  -0.000155 $ Zn66
       30067  -0.000023 $ Zn67
       30068  -0.000106 $ Zn68
       30070  -0.000004 $ Zn70
"""
matNum = matInsert('Aluminumalloy3003', Aluminumalloy3003Str, -2.73)

Aluminumalloy4043OStr = """\
c      Aluminum, alloy 4043-O
c      AKA: None
c      rho: 2.690000 g/cc
m{}       4009  -0.000005 $ Be9
       12024  -0.000221 $ Mg24
       12025  -0.000029 $ Mg25
       12026  -0.000033 $ Mg26
       13027  -0.939000 $ Al27
       14028  -0.048231 $ Si28
       14029  -0.002538 $ Si29
       14030  -0.001732 $ Si30
       22046  -0.000090 $ Ti46
       22047  -0.000083 $ Ti47
       22048  -0.000837 $ Ti48
       22049  -0.000063 $ Ti49
       22050  -0.000061 $ Ti50
       25055  -0.000283 $ Mn55
       26054  -0.000256 $ Fe54
       26056  -0.004164 $ Fe56
       26057  -0.000098 $ Fe57
       26058  -0.000013 $ Fe58
       29063  -0.001163 $ Cu63
       29065  -0.000536 $ Cu65
       30064  -0.000272 $ Zn64
       30066  -0.000158 $ Zn66
       30067  -0.000023 $ Zn67
       30068  -0.000108 $ Zn68
       30070  -0.000004 $ Zn70
"""
matNum = matInsert('Aluminumalloy4043O', Aluminumalloy4043OStr, -2.69)

Aluminumalloy5086OStr = """\
c      Aluminum, alloy 5086-O
c      AKA: None
c      rho: 2.660000 g/cc
m{}       12024  -0.031179 $ Mg24
       12025  -0.004112 $ Mg25
       12026  -0.004708 $ Mg26
       13027  -0.946499 $ Al27
       14028  -0.001969 $ Si28
       14029  -0.000104 $ Si29
       14030  -0.000071 $ Si30
       22046  -0.000064 $ Ti46
       22047  -0.000059 $ Ti47
       22048  -0.000594 $ Ti48
       22049  -0.000044 $ Ti49
       22050  -0.000043 $ Ti50
       24050  -0.000063 $ Cr50
       24052  -0.001255 $ Cr52
       24053  -0.000145 $ Cr53
       24054  -0.000037 $ Cr54
       25055  -0.004500 $ Mn55
       26054  -0.000151 $ Fe54
       26056  -0.002462 $ Fe56
       26057  -0.000058 $ Fe57
       26058  -0.000008 $ Fe58
       29063  -0.000367 $ Cu63
       29065  -0.000169 $ Cu65
       30064  -0.000644 $ Zn64
       30066  -0.000374 $ Zn66
       30067  -0.000055 $ Zn67
       30068  -0.000257 $ Zn68
       30070  -0.000009 $ Zn70
"""
matNum = matInsert('Aluminumalloy5086O', Aluminumalloy5086OStr, -2.66)

Aluminumalloy6061OStr = """\
c      Aluminum, alloy 6061-O
c      AKA: None
c      rho: 2.700000 g/cc
m{}       12024  -0.007795 $ Mg24
       12025  -0.001028 $ Mg25
       12026  -0.001177 $ Mg26
       13027  -0.972000 $ Al27
       14028  -0.005512 $ Si28
       14029  -0.000290 $ Si29
       14030  -0.000198 $ Si30
       22046  -0.000069 $ Ti46
       22047  -0.000064 $ Ti47
       22048  -0.000647 $ Ti48
       22049  -0.000048 $ Ti49
       22050  -0.000047 $ Ti50
       24050  -0.000081 $ Cr50
       24052  -0.001632 $ Cr52
       24053  -0.000189 $ Cr53
       24054  -0.000048 $ Cr54
       25055  -0.000876 $ Mn55
       26054  -0.000231 $ Fe54
       26056  -0.003757 $ Fe56
       26057  -0.000088 $ Fe57
       26058  -0.000012 $ Fe58
       29063  -0.001883 $ Cu63
       29065  -0.000867 $ Cu65
       30064  -0.000702 $ Zn64
       30066  -0.000408 $ Zn66
       30067  -0.000060 $ Zn67
       30068  -0.000280 $ Zn68
       30070  -0.000010 $ Zn70
"""
matNum = matInsert('Aluminumalloy6061O', Aluminumalloy6061OStr, -2.70)

Aluminumalloy7075OStr = """\
c      Aluminum, alloy 7075-O
c      AKA: None
c      rho: 2.810000 g/cc
m{}       12024  -0.019487 $ Mg24
       12025  -0.002570 $ Mg25
       12026  -0.002942 $ Mg26
       13027  -0.892500 $ Al27
       14028  -0.002152 $ Si28
       14029  -0.000113 $ Si29
       14030  -0.000077 $ Si30
       22046  -0.000093 $ Ti46
       22047  -0.000085 $ Ti47
       22048  -0.000865 $ Ti48
       22049  -0.000065 $ Ti49
       22050  -0.000063 $ Ti50
       24050  -0.000096 $ Cr50
       24052  -0.001925 $ Cr52
       24053  -0.000222 $ Cr53
       24054  -0.000056 $ Cr54
       25055  -0.001757 $ Mn55
       26054  -0.000165 $ Fe54
       26056  -0.002692 $ Fe56
       26057  -0.000063 $ Fe57
       26058  -0.000009 $ Fe58
       29063  -0.010957 $ Cu63
       29065  -0.005043 $ Cu65
       30064  -0.026924 $ Zn64
       30066  -0.015658 $ Zn66
       30067  -0.002316 $ Zn67
       30068  -0.010734 $ Zn68
       30070  -0.000365 $ Zn70
"""
matNum = matInsert('Aluminumalloy7075O', Aluminumalloy7075OStr, -2.81)

AmmonialiquidatT79CStr = """\
c      Ammonia (liquid at T= -79 C)
c      AKA: None
c      rho: 0.771000 g/cc
m{}       1001  -0.177510 $ H1
       1002  -0.000041 $ H2
       7014  -0.819229 $ N14
       7015  -0.003206 $ N15
"""
matNum = matInsert('AmmonialiquidatT79C', AmmonialiquidatT79CStr, -0.77)

AnthraceneStr = """\
c      Anthracene
c      AKA: None
c      rho: 1.280000 g/cc
m{}       1001  -0.056540 $ H1
       1002  -0.000013 $ H2
       6012  -0.932526 $ C12
       6013  -0.010929 $ C13
"""
matNum = matInsert('Anthracene', AnthraceneStr, -1.28)

ArgonStr = """\
c      Argon
c      AKA: None
c      rho: 0.001662 g/cc
m{}       18036  -0.003004 $ Ar36
       18038  -0.000598 $ Ar38
       18040  -0.996394 $ Ar40
"""
matNum = matInsert('Argon', ArgonStr, -0.00)

AsbestosChrysotileStr = """\
c      Asbestos (Chrysotile)
c      AKA: None
c      rho: 2.530000 g/cc
m{}       1001  -0.014546 $ H1
       1002  -0.000003 $ H2
       8016  -0.518216 $ O16
       8017  -0.000210 $ O17
       8018  -0.001198 $ O18
       12024  -0.205105 $ Mg24
       12025  -0.027049 $ Mg25
       12026  -0.030969 $ Mg26
       14028  -0.186214 $ Si28
       14029  -0.009798 $ Si29
       14030  -0.006689 $ Si30
"""
matNum = matInsert('AsbestosChrysotile', AsbestosChrysotileStr, -2.53)

AsphaltStr = """\
c      Asphalt
c      AKA: ['Bitumen']
c      rho: 1.300000 g/cc
m{}       1001  -0.103697 $ H1
       1002  -0.000024 $ H2
       6012  -0.838234 $ C12
       6013  -0.009824 $ C13
       7014  -0.006026 $ N14
       7015  -0.000024 $ N15
       8016  -0.004039 $ O16
       8017  -0.000002 $ O17
       8018  -0.000009 $ O18
       16032  -0.035705 $ S32
       16033  -0.000291 $ S33
       16034  -0.001697 $ S34
       16036  -0.000004 $ S36
       23050  -0.000001 $ V50
       23051  -0.000392 $ V51
       28058  -0.000023 $ Ni58
       28060  -0.000009 $ Ni60
       28062  -0.000001 $ Ni62
"""
matNum = matInsert('Asphalt', AsphaltStr, -1.30)

AsphaltpavementStr = """\
c      Asphalt pavement
c      AKA: ['Blacktop']
c      rho: 2.578400 g/cc
m{}       1001  -0.007508 $ H1
       1002  -0.000002 $ H2
       6012  -0.105509 $ C12
       6013  -0.001237 $ C13
       7014  -0.000362 $ N14
       7015  -0.000001 $ N15
       8016  -0.423081 $ O16
       8017  -0.000171 $ O17
       8018  -0.000978 $ O18
       11023  -0.013149 $ Na23
       12024  -0.024212 $ Mg24
       12025  -0.003193 $ Mg25
       12026  -0.003656 $ Mg26
       13027  -0.054927 $ Al27
       14028  -0.179905 $ Si28
       14029  -0.009466 $ Si29
       14030  -0.006462 $ Si30
       15031  -0.000448 $ P31
       16032  -0.010194 $ S32
       16033  -0.000083 $ S33
       16034  -0.000485 $ S34
       16036  -0.000001 $ S36
       19039  -0.014871 $ K39
       19040  -0.000002 $ K40
       19041  -0.001128 $ K41
       20040  -0.098861 $ Ca40
       20042  -0.000693 $ Ca42
       20043  -0.000148 $ Ca43
       20044  -0.002340 $ Ca44
       20046  -0.000005 $ Ca46
       20048  -0.000229 $ Ca48
       22046  -0.000271 $ Ti46
       22047  -0.000250 $ Ti47
       22048  -0.002526 $ Ti48
       22049  -0.000189 $ Ti49
       22050  -0.000185 $ Ti50
       23051  -0.000024 $ V51
       25055  -0.000427 $ Mn55
       26054  -0.001853 $ Fe54
       26056  -0.030166 $ Fe56
       26057  -0.000709 $ Fe57
       26058  -0.000096 $ Fe58
       28058  -0.000001 $ Ni58
       28060  -0.000001 $ Ni60
"""
matNum = matInsert('Asphaltpavement', AsphaltpavementStr, -2.58)

BakeliteStr = """\
c      Bakelite
c      AKA: ['phenol-formaldehyde resin', 'polymer']
c      rho: 1.250000 g/cc
m{}       1001  -0.057429 $ H1
       1002  -0.000013 $ H2
       6012  -0.765624 $ C12
       6013  -0.008973 $ C13
       8016  -0.167513 $ O16
       8017  -0.000068 $ O17
       8018  -0.000387 $ O18
"""
matNum = matInsert('Bakelite', BakeliteStr, -1.25)

BariumFluorideStr = """\
c      Barium Fluoride
c      AKA: None
c      rho: 4.890000 g/cc
m{}       9019  -0.216724 $ F19
       56130  -0.000785 $ Ba130
       56132  -0.000760 $ Ba132
       56134  -0.018460 $ Ba134
       56135  -0.050723 $ Ba135
       56136  -0.060881 $ Ba136
       56137  -0.087708 $ Ba137
       56138  -0.563958 $ Ba138
"""
matNum = matInsert('BariumFluoride', BariumFluorideStr, -4.89)

BariumsulfateStr = """\
c      Barium sulfate
c      AKA: None
c      rho: 4.500000 g/cc
m{}       8016  -0.273463 $ O16
       8017  -0.000111 $ O17
       8018  -0.000632 $ O18
       16032  -0.130126 $ S32
       16033  -0.001060 $ S33
       16034  -0.006185 $ S34
       16036  -0.000015 $ S36
       56130  -0.000590 $ Ba130
       56132  -0.000571 $ Ba132
       56134  -0.013867 $ Ba134
       56135  -0.038103 $ Ba135
       56136  -0.045734 $ Ba136
       56137  -0.065886 $ Ba137
       56138  -0.423645 $ Ba138
"""
matNum = matInsert('Bariumsulfate', BariumsulfateStr, -4.50)

BenzeneStr = """\
c      Benzene
c      AKA: None
c      rho: 0.878650 g/cc
m{}       1001  -0.077405 $ H1
       1002  -0.000018 $ H2
       6012  -0.911897 $ C12
       6013  -0.010687 $ C13
"""
matNum = matInsert('Benzene', BenzeneStr, -0.88)

BerylliumStr = """\
c      Beryllium
c      AKA: None
c      rho: 1.848000 g/cc
m{}       4009  -1.000000 $ Be9
"""
matNum = matInsert('Beryllium', BerylliumStr, -1.85)

BerylliumCarbideStr = """\
c      Beryllium Carbide
c      AKA: None
c      rho: 1.900000 g/cc
m{}       4009  -0.600113 $ Be9
       6012  -0.395259 $ C12
       6013  -0.004632 $ C13
"""
matNum = matInsert('BerylliumCarbide', BerylliumCarbideStr, -1.90)

BerylliumOxideStr = """\
c      Beryllium Oxide
c      AKA: None
c      rho: 3.010000 g/cc
m{}       4009  -0.360320 $ Be9
       8016  -0.637946 $ O16
       8017  -0.000258 $ O17
       8018  -0.001475 $ O18
"""
matNum = matInsert('BerylliumOxide', BerylliumOxideStr, -3.01)

BismuthStr = """\
c      Bismuth
c      AKA: None
c      rho: 9.747000 g/cc
m{}       83209  -1.000000 $ Bi209
"""
matNum = matInsert('Bismuth', BismuthStr, -9.75)

BismuthGermanateBGOStr = """\
c      Bismuth Germanate (BGO)
c      AKA: ['BGO', 'Bismuth Germanium Oxide']
c      rho: 7.130000 g/cc
m{}       8016  -0.153694 $ O16
       8017  -0.000062 $ O17
       8018  -0.000355 $ O18
       32070  -0.034636 $ Ge70
       32072  -0.047542 $ Ge72
       32073  -0.013609 $ Ge73
       32074  -0.064973 $ Ge74
       32076  -0.014132 $ Ge76
       83209  -0.670989 $ Bi209
"""
matNum = matInsert('BismuthGermanateBGO', BismuthGermanateBGOStr, -7.13)

BismuthIodideStr = """\
c      Bismuth Iodide
c      AKA: None
c      rho: 5.778000 g/cc
m{}       53127  -0.645612 $ I127
       83209  -0.354388 $ Bi209
"""
matNum = matInsert('BismuthIodide', BismuthIodideStr, -5.78)

BloodICRPStr = """\
c      Blood (ICRP)
c      AKA: None
c      rho: 1.060000 g/cc
m{}       1001  -0.101839 $ H1
       1002  -0.000023 $ H2
       6012  -0.098862 $ C12
       6013  -0.001159 $ C13
       7014  -0.029524 $ N14
       7015  -0.000116 $ N15
       8016  -0.757356 $ O16
       8017  -0.000307 $ O17
       8018  -0.001751 $ O18
       11023  -0.001850 $ Na23
       12024  -0.000031 $ Mg24
       12025  -0.000004 $ Mg25
       12026  -0.000005 $ Mg26
       14028  -0.000028 $ Si28
       14029  -0.000001 $ Si29
       14030  -0.000001 $ Si30
       15031  -0.000350 $ P31
       16032  -0.001752 $ S32
       16033  -0.000014 $ S33
       16034  -0.000083 $ S34
       17035  -0.002077 $ Cl35
       17037  -0.000703 $ Cl37
       19039  -0.001515 $ K39
       19041  -0.000115 $ K41
       20040  -0.000058 $ Ca40
       20044  -0.000001 $ Ca44
       26054  -0.000026 $ Fe54
       26056  -0.000423 $ Fe56
       26057  -0.000010 $ Fe57
       26058  -0.000001 $ Fe58
       30064  -0.000005 $ Zn64
       30066  -0.000003 $ Zn66
       30068  -0.000002 $ Zn68
"""
matNum = matInsert('BloodICRP', BloodICRPStr, -1.06)

BoneEquivalentPlasticB100Str = """\
c      Bone Equivalent Plastic, B-100
c      AKA: ['B-100']
c      rho: 1.450000 g/cc
m{}       1001  -0.065454 $ H1
       1002  -0.000015 $ H2
       6012  -0.530730 $ C12
       6013  -0.006220 $ C13
       7014  -0.021416 $ N14
       7015  -0.000084 $ N15
       8016  -0.031998 $ O16
       8017  -0.000013 $ O17
       8018  -0.000074 $ O18
       9019  -0.167411 $ F19
       20040  -0.170694 $ Ca40
       20042  -0.001196 $ Ca42
       20043  -0.000256 $ Ca43
       20044  -0.004040 $ Ca44
       20046  -0.000008 $ Ca46
       20048  -0.000395 $ Ca48
"""
matNum = matInsert('BoneEquivalentPlasticB100', BoneEquivalentPlasticB100Str, -1.45)

BoneEquivalentPlasticB110Str = """\
c      Bone Equivalent Plastic, B-110
c      AKA: ['B-110']
c      rho: 1.785000 g/cc
m{}       1001  -0.035491 $ H1
       1002  -0.000008 $ H2
       6012  -0.363049 $ C12
       6013  -0.004255 $ C13
       7014  -0.039545 $ N14
       7015  -0.000155 $ N15
       8016  -0.045177 $ O16
       8017  -0.000018 $ O17
       8018  -0.000104 $ O18
       9019  -0.249300 $ F19
       20040  -0.254124 $ Ca40
       20042  -0.001781 $ Ca42
       20043  -0.000380 $ Ca43
       20044  -0.006015 $ Ca44
       20046  -0.000012 $ Ca46
       20048  -0.000588 $ Ca48
"""
matNum = matInsert('BoneEquivalentPlasticB110', BoneEquivalentPlasticB110Str, -1.78)

BoneCompactICRUStr = """\
c      Bone, Compact (ICRU)
c      AKA: None
c      rho: 1.850000 g/cc
m{}       1001  -0.063967 $ H1
       1002  -0.000015 $ H2
       6012  -0.274783 $ C12
       6013  -0.003220 $ C13
       7014  -0.026894 $ N14
       7015  -0.000105 $ N15
       8016  -0.408905 $ O16
       8017  -0.000166 $ O17
       8018  -0.000946 $ O18
       12024  -0.001559 $ Mg24
       12025  -0.000206 $ Mg25
       12026  -0.000235 $ Mg26
       15031  -0.070000 $ P31
       16032  -0.001894 $ S32
       16033  -0.000015 $ S33
       16034  -0.000090 $ S34
       20040  -0.142093 $ Ca40
       20042  -0.000996 $ Ca42
       20043  -0.000213 $ Ca43
       20044  -0.003363 $ Ca44
       20046  -0.000007 $ Ca46
       20048  -0.000329 $ Ca48
"""
matNum = matInsert('BoneCompactICRU', BoneCompactICRUStr, -1.85)

BoneCorticalICRPStr = """\
c      Bone, Cortical (ICRP)
c      AKA: None
c      rho: 1.850000 g/cc
m{}       1001  -0.047222 $ H1
       1002  -0.000011 $ H2
       6012  -0.142660 $ C12
       6013  -0.001672 $ C13
       7014  -0.041826 $ N14
       7015  -0.000164 $ N15
       8016  -0.444887 $ O16
       8017  -0.000180 $ O17
       8018  -0.001029 $ O18
       12024  -0.001715 $ Mg24
       12025  -0.000226 $ Mg25
       12026  -0.000259 $ Mg26
       15031  -0.104970 $ P31
       16032  -0.002983 $ S32
       16033  -0.000024 $ S33
       16034  -0.000142 $ S34
       20040  -0.202922 $ Ca40
       20042  -0.001422 $ Ca42
       20043  -0.000304 $ Ca43
       20044  -0.004803 $ Ca44
       20046  -0.000010 $ Ca46
       20048  -0.000470 $ Ca48
       30064  -0.000048 $ Zn64
       30066  -0.000028 $ Zn66
       30067  -0.000004 $ Zn67
       30068  -0.000019 $ Zn68
       30070  -0.000001 $ Zn70
"""
matNum = matInsert('BoneCorticalICRP', BoneCorticalICRPStr, -1.85)

Boral65Al35B4CStr = """\
c      Boral (65% Al-35% B4C)
c      AKA: None
c      rho: 2.530000 g/cc
m{}       5010  -0.050489 $ B10
       5011  -0.223448 $ B11
       6012  -0.075120 $ C12
       6013  -0.000880 $ C13
       13027  -0.650000 $ Al27
"""
matNum = matInsert('Boral65Al35B4C', Boral65Al35B4CStr, -2.53)

BoralAluminum10boronalloyStr = """\
c      Boral (Aluminum 10% boron alloy)
c      AKA: None
c      rho: 2.600000 g/cc
m{}       5010  -0.018427 $ B10
       5011  -0.081550 $ B11
       11023  -0.005000 $ Na23
       13027  -0.879000 $ Al27
       14028  -0.002297 $ Si28
       14029  -0.000121 $ Si29
       14030  -0.000082 $ Si30
       19039  -0.009294 $ K39
       19040  -0.000001 $ K40
       19041  -0.000705 $ K41
       22046  -0.000040 $ Ti46
       22047  -0.000036 $ Ti47
       22048  -0.000369 $ Ti48
       22049  -0.000028 $ Ti49
       22050  -0.000027 $ Ti50
       26054  -0.000169 $ Fe54
       26056  -0.002757 $ Fe56
       26057  -0.000065 $ Fe57
       26058  -0.000009 $ Fe58
"""
matNum = matInsert('BoralAluminum10boronalloy', BoralAluminum10boronalloyStr, -2.60)

BoralAluminum5boronalloyStr = """\
c      Boral (Aluminum 5% boron alloy)
c      AKA: None
c      rho: 2.600000 g/cc
m{}       5010  -0.009225 $ B10
       5011  -0.040828 $ B11
       11023  -0.005007 $ Na23
       13027  -0.929408 $ Al27
       14028  -0.001840 $ Si28
       14029  -0.000097 $ Si29
       14030  -0.000066 $ Si30
       19039  -0.009306 $ K39
       19040  -0.000001 $ K40
       19041  -0.000706 $ K41
       22046  -0.000040 $ Ti46
       22047  -0.000037 $ Ti47
       22048  -0.000370 $ Ti48
       22049  -0.000028 $ Ti49
       22050  -0.000027 $ Ti50
       26054  -0.000170 $ Fe54
       26056  -0.002761 $ Fe56
       26057  -0.000065 $ Fe57
       26058  -0.000009 $ Fe58
"""
matNum = matInsert('BoralAluminum5boronalloy', BoralAluminum5boronalloyStr, -2.60)

BoraxStr = """\
c      Borax
c      AKA: None
c      rho: 1.730000 g/cc
m{}       11023  -0.120560 $ Na23
       5010  -0.020898 $ B10
       5011  -0.092489 $ B11
       8016  -0.711235 $ O16
       8017  -0.000288 $ O17
       8018  -0.001645 $ O18
       1001  -0.052845 $ H1
       1002  -0.000012 $ H2
"""
matNum = matInsert('Borax', BoraxStr, -1.73)

BoricAcidStr = """\
c      Boric Acid
c      AKA: None
c      rho: 1.500000 g/cc
m{}       1001  -0.048890 $ H1
       1002  -0.000011 $ H2
       5010  -0.032224 $ B10
       5011  -0.142611 $ B11
       8016  -0.774119 $ O16
       8017  -0.000313 $ O17
       8018  -0.001790 $ O18
"""
matNum = matInsert('BoricAcid', BoricAcidStr, -1.50)

BoronStr = """\
c      Boron
c      AKA: None
c      rho: 2.370000 g/cc
m{}       5010  -0.184267 $ B10
       5011  -0.815504 $ B11
"""
matNum = matInsert('Boron', BoronStr, -2.37)

BoronCarbideStr = """\
c      Boron Carbide
c      AKA: None
c      rho: 2.520000 g/cc
m{}       5010  -0.144221 $ B10
       5011  -0.638271 $ B11
       6012  -0.214814 $ C12
       6013  -0.002518 $ C13
"""
matNum = matInsert('BoronCarbide', BoronCarbideStr, -2.52)

BoronFluorideB2F4Str = """\
c      Boron Fluoride (B2F4)
c      AKA: None
c      rho: 0.004058 g/cc
m{}       5010  -0.040823 $ B10
       5011  -0.180668 $ B11
       9019  -0.778459 $ F19
"""
matNum = matInsert('BoronFluorideB2F4', BoronFluorideB2F4Str, -0.00)

BoronFluorideBF3Str = """\
c      Boron Fluoride (BF3)
c      AKA: ['Boron Trifluoride']
c      rho: 0.002831 g/cc
m{}       5010  -0.029385 $ B10
       5011  -0.130049 $ B11
       9019  -0.840529 $ F19
"""
matNum = matInsert('BoronFluorideBF3', BoronFluorideBF3Str, -0.00)

BoronOxideStr = """\
c      Boron Oxide
c      AKA: ['Boron Trioxide']
c      rho: 1.812000 g/cc
m{}       5010  -0.057237 $ B10
       5011  -0.253312 $ B11
       8016  -0.687512 $ O16
       8017  -0.000278 $ O17
       8018  -0.001590 $ O18
"""
matNum = matInsert('BoronOxide', BoronOxideStr, -1.81)

BrainICRPStr = """\
c      Brain (ICRP)
c      AKA: None
c      rho: 1.030000 g/cc
m{}       1001  -0.110638 $ H1
       1002  -0.000025 $ H2
       6012  -0.123969 $ C12
       6013  -0.001453 $ C13
       7014  -0.013228 $ N14
       7015  -0.000052 $ N15
       8016  -0.735724 $ O16
       8017  -0.000298 $ O17
       8018  -0.001701 $ O18
       11023  -0.001840 $ Na23
       12024  -0.000117 $ Mg24
       12025  -0.000015 $ Mg25
       12026  -0.000018 $ Mg26
       15031  -0.003540 $ P31
       16032  -0.001676 $ S32
       16033  -0.000014 $ S33
       16034  -0.000080 $ S34
       17035  -0.001764 $ Cl35
       17037  -0.000597 $ Cl37
       19039  -0.002881 $ K39
       19041  -0.000219 $ K41
       20040  -0.000087 $ Ca40
       20042  -0.000001 $ Ca42
       20044  -0.000002 $ Ca44
       26054  -0.000003 $ Fe54
       26056  -0.000046 $ Fe56
       26057  -0.000001 $ Fe57
       30064  -0.000005 $ Zn64
       30066  -0.000003 $ Zn66
       30068  -0.000002 $ Zn68
"""
matNum = matInsert('BrainICRP', BrainICRPStr, -1.03)

BrasstypicalcompositionStr = """\
c      Brass (typical composition)
c      AKA: None
c      rho: 8.070000 g/cc
m{}       26054  -0.000049 $ Fe54
       26056  -0.000798 $ Fe56
       26057  -0.000019 $ Fe57
       26058  -0.000003 $ Fe58
       29063  -0.455650 $ Cu63
       29065  -0.209735 $ Cu65
       30064  -0.156592 $ Zn64
       30066  -0.091071 $ Zn66
       30067  -0.013470 $ Zn67
       30068  -0.062430 $ Zn68
       30070  -0.002125 $ Zn70
       50112  -0.000024 $ Sn112
       50114  -0.000017 $ Sn114
       50115  -0.000009 $ Sn115
       50116  -0.000379 $ Sn116
       50117  -0.000202 $ Sn117
       50118  -0.000643 $ Sn118
       50119  -0.000230 $ Sn119
       50120  -0.000879 $ Sn120
       50122  -0.000127 $ Sn122
       50124  -0.000161 $ Sn124
       15031  -0.005377 $ P31
"""
matNum = matInsert('Brasstypicalcomposition', BrasstypicalcompositionStr, -8.07)

BrickCommonSilicaStr = """\
c      Brick, Common Silica
c      AKA: None
c      rho: 1.800000 g/cc
m{}       8016  -0.523577 $ O16
       8017  -0.000212 $ O17
       8018  -0.001211 $ O18
       13027  -0.005000 $ Al27
       14028  -0.412488 $ Si28
       14029  -0.021703 $ Si29
       14030  -0.014817 $ Si30
       20040  -0.013533 $ Ca40
       20042  -0.000095 $ Ca42
       20043  -0.000020 $ Ca43
       20044  -0.000320 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000031 $ Ca48
       26054  -0.000395 $ Fe54
       26056  -0.006433 $ Fe56
       26057  -0.000151 $ Fe57
       26058  -0.000020 $ Fe58
"""
matNum = matInsert('BrickCommonSilica', BrickCommonSilicaStr, -1.80)

BrickFireStr = """\
c      Brick, Fire
c      AKA: None
c      rho: 2.100000 g/cc
m{}       8016  -0.495653 $ O16
       8017  -0.000201 $ O17
       8018  -0.001146 $ O18
       12024  -0.004677 $ Mg24
       12025  -0.000617 $ Mg25
       12026  -0.000706 $ Mg26
       13027  -0.212000 $ Al27
       14028  -0.231508 $ Si28
       14029  -0.012181 $ Si29
       14030  -0.008316 $ Si30
       20040  -0.006766 $ Ca40
       20042  -0.000047 $ Ca42
       20043  -0.000010 $ Ca43
       20044  -0.000160 $ Ca44
       20048  -0.000016 $ Ca48
       22046  -0.000950 $ Ti46
       22047  -0.000876 $ Ti47
       22048  -0.008861 $ Ti48
       22049  -0.000664 $ Ti49
       22050  -0.000649 $ Ti50
       26054  -0.000790 $ Fe54
       26056  -0.012866 $ Fe56
       26057  -0.000302 $ Fe57
       26058  -0.000041 $ Fe58
"""
matNum = matInsert('BrickFire', BrickFireStr, -2.10)

BrickKaolinwhiteStr = """\
c      Brick, Kaolin (white)
c      AKA: None
c      rho: 2.100000 g/cc
m{}       8016  -0.498963 $ O16
       8017  -0.000202 $ O17
       8018  -0.001154 $ O18
       12024  -0.000939 $ Mg24
       12025  -0.000124 $ Mg25
       12026  -0.000142 $ Mg26
       13027  -0.240568 $ Al27
       14028  -0.223077 $ Si28
       14029  -0.011737 $ Si29
       14030  -0.008013 $ Si30
       20040  -0.000690 $ Ca40
       20042  -0.000005 $ Ca42
       20043  -0.000001 $ Ca43
       20044  -0.000016 $ Ca44
       20048  -0.000002 $ Ca48
       22046  -0.000806 $ Ti46
       22047  -0.000743 $ Ti47
       22048  -0.007517 $ Ti48
       22049  -0.000563 $ Ti49
       22050  -0.000550 $ Ti50
       26054  -0.000237 $ Fe54
       26056  -0.003853 $ Fe56
       26057  -0.000091 $ Fe57
       26058  -0.000012 $ Fe58
"""
matNum = matInsert('BrickKaolinwhite', BrickKaolinwhiteStr, -2.10)

BronzetypicalcompositionStr = """\
c      Bronze (typical composition)
c      AKA: None
c      rho: 8.400000 g/cc
m{}       13027  -0.028528 $ Al27
       14028  -0.003067 $ Si28
       14029  -0.000161 $ Si29
       14030  -0.000110 $ Si30
       25055  -0.003555 $ Mn55
       26054  -0.000576 $ Fe54
       26056  -0.009381 $ Fe56
       26057  -0.000221 $ Fe57
       26058  -0.000030 $ Fe58
       28058  -0.004514 $ Ni58
       28060  -0.001799 $ Ni60
       28061  -0.000079 $ Ni61
       28062  -0.000258 $ Ni62
       28064  -0.000068 $ Ni64
       29063  -0.598615 $ Cu63
       29065  -0.275541 $ Cu65
       30064  -0.017326 $ Zn64
       30066  -0.010076 $ Zn66
       30067  -0.001490 $ Zn67
       30068  -0.006908 $ Zn68
       30070  -0.000235 $ Zn70
       50112  -0.000224 $ Sn112
       50114  -0.000155 $ Sn114
       50115  -0.000081 $ Sn115
       50116  -0.003478 $ Sn116
       50117  -0.001853 $ Sn117
       50118  -0.005894 $ Sn118
       50119  -0.002108 $ Sn119
       50120  -0.008063 $ Sn120
       50122  -0.001165 $ Sn122
       50124  -0.001481 $ Sn124
       82204  -0.000179 $ Pb204
       82206  -0.003104 $ Pb206
       82207  -0.002860 $ Pb207
       82208  -0.006815 $ Pb208
"""
matNum = matInsert('Bronzetypicalcomposition', BronzetypicalcompositionStr, -8.40)

C552AirEquivalentPlasticStr = """\
c      C-552 Air-Equivalent Plastic
c      AKA: ['Air-Equivalent Plastic']
c      rho: 1.760000 g/cc
m{}       1001  -0.024674 $ H1
       1002  -0.000006 $ H2
       6012  -0.495805 $ C12
       6013  -0.005811 $ C13
       8016  -0.004515 $ O16
       8017  -0.000002 $ O17
       8018  -0.000010 $ O18
       9019  -0.465209 $ F19
       14028  -0.003650 $ Si28
       14029  -0.000192 $ Si29
       14030  -0.000131 $ Si30
"""
matNum = matInsert('C552AirEquivalentPlastic', C552AirEquivalentPlasticStr, -1.76)

CELOTEXLignocellulosicFiberboardStr = """\
c      CELOTEX (Lignocellulosic Fiberboard)
c      AKA: ['Cellulose', 'Fiberboard']
c      rho: 0.250000 g/cc
m{}       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('CELOTEXLignocellulosicFiberboard', CELOTEXLignocellulosicFiberboardStr, -0.25)

CLLBCeCesiumLithiumLanthanumBromide03wtCeriumdopedStr = """\
c      CLLB(Ce) - Cesium Lithium Lanthanum Bromide - 0.3 wt% Cerium doped
c      AKA: None
c      rho: 4.200000 g/cc
m{}       55133  -0.298151 $ Cs133
       3006  -0.000512 $ Li6
       3007  -0.007272 $ Li7
       57138  -0.000137 $ La138
       57139  -0.155668 $ La139
       35079  -0.269225 $ Br79
       35081  -0.268526 $ Br81
       58136  -0.000001 $ Ce136
       58138  -0.000001 $ Ce138
       58140  -0.000418 $ Ce140
       58142  -0.000053 $ Ce142
"""
matNum = matInsert('CLLBCeCesiumLithiumLanthanumBromide03wtCeriumdoped', CLLBCeCesiumLithiumLanthanumBromide03wtCeriumdopedStr, -4.20)

CadmiumStr = """\
c      Cadmium
c      AKA: None
c      rho: 8.650000 g/cc
m{}       48106  -0.011776 $ Cd106
       48108  -0.008543 $ Cd108
       48110  -0.122110 $ Cd110
       48111  -0.126281 $ Cd111
       48112  -0.240203 $ Cd112
       48113  -0.122733 $ Cd113
       48114  -0.291106 $ Cd114
       48116  -0.077226 $ Cd116
"""
matNum = matInsert('Cadmium', CadmiumStr, -8.65)

CadmiumNitrateTetrahydrateStr = """\
c      Cadmium Nitrate Tetrahydrate
c      AKA: None
c      rho: 2.450000 g/cc
m{}       1001  -0.026133 $ H1
       1002  -0.000006 $ H2
       7014  -0.090455 $ N14
       7015  -0.000354 $ N15
       8016  -0.517238 $ O16
       8017  -0.000209 $ O17
       8018  -0.001196 $ O18
       48106  -0.004291 $ Cd106
       48108  -0.003113 $ Cd108
       48110  -0.044498 $ Cd110
       48111  -0.046018 $ Cd111
       48112  -0.087531 $ Cd112
       48113  -0.044725 $ Cd113
       48114  -0.106081 $ Cd114
       48116  -0.028142 $ Cd116
"""
matNum = matInsert('CadmiumNitrateTetrahydrate', CadmiumNitrateTetrahydrateStr, -2.45)

CadmiumTellurideStr = """\
c      Cadmium Telluride
c      AKA: None
c      rho: 6.200000 g/cc
m{}       48106  -0.005516 $ Cd106
       48108  -0.004001 $ Cd108
       48110  -0.057192 $ Cd110
       48111  -0.059145 $ Cd111
       48112  -0.112502 $ Cd112
       48113  -0.057484 $ Cd113
       48114  -0.136344 $ Cd114
       48116  -0.036170 $ Cd116
       52120  -0.000450 $ Te120
       52122  -0.012951 $ Te122
       52123  -0.004557 $ Te123
       52124  -0.024469 $ Te124
       52125  -0.036793 $ Te125
       52126  -0.098828 $ Te126
       52128  -0.169144 $ Te128
       52130  -0.184456 $ Te130
"""
matNum = matInsert('CadmiumTelluride', CadmiumTellurideStr, -6.20)

CadmiumTungstateCWOStr = """\
c      Cadmium Tungstate (CWO)
c      AKA: ['Cadmium Tungstanate', 'CWO']
c      rho: 7.900000 g/cc
m{}       8016  -0.177166 $ O16
       8017  -0.000072 $ O17
       8018  -0.000410 $ O18
       48106  -0.003675 $ Cd106
       48108  -0.002666 $ Cd108
       48110  -0.038104 $ Cd110
       48111  -0.039405 $ Cd111
       48112  -0.074954 $ Cd112
       48113  -0.038298 $ Cd113
       48114  -0.090838 $ Cd114
       48116  -0.024098 $ Cd116
       74180  -0.000599 $ W180
       74182  -0.133841 $ W182
       74183  -0.072672 $ W183
       74184  -0.156453 $ W184
       74186  -0.146750 $ W186
"""
matNum = matInsert('CadmiumTungstateCWO', CadmiumTungstateCWOStr, -7.90)

CadmiumZincTellurideCZTStr = """\
c      Cadmium Zinc Telluride (CZT)
c      AKA: None
c      rho: 5.780000 g/cc
m{}       48106  -0.004335 $ Cd106
       48108  -0.003145 $ Cd108
       48110  -0.044948 $ Cd110
       48111  -0.046483 $ Cd111
       48112  -0.088417 $ Cd112
       48113  -0.045177 $ Cd113
       48114  -0.107155 $ Cd114
       48116  -0.028426 $ Cd116
       30064  -0.102929 $ Zn64
       30066  -0.059861 $ Zn66
       30067  -0.008854 $ Zn67
       30068  -0.041036 $ Zn68
       30070  -0.001397 $ Zn70
       52120  -0.000353 $ Te120
       52122  -0.010179 $ Te122
       52123  -0.003582 $ Te123
       52124  -0.019231 $ Te124
       52125  -0.028916 $ Te125
       52126  -0.077671 $ Te126
       52128  -0.132933 $ Te128
       52130  -0.144967 $ Te130
"""
matNum = matInsert('CadmiumZincTellurideCZT', CadmiumZincTellurideCZTStr, -5.78)

CalciumCarbonateStr = """\
c      Calcium Carbonate
c      AKA: ['Calcite', 'Limestone', 'Marble']
c      rho: 2.800000 g/cc
m{}       6012  -0.118613 $ C12
       6013  -0.001390 $ C13
       8016  -0.478266 $ O16
       8017  -0.000194 $ O17
       8018  -0.001106 $ O18
       20040  -0.387065 $ Ca40
       20042  -0.002712 $ Ca42
       20043  -0.000579 $ Ca43
       20044  -0.009161 $ Ca44
       20046  -0.000018 $ Ca46
       20048  -0.000896 $ Ca48
"""
matNum = matInsert('CalciumCarbonate', CalciumCarbonateStr, -2.80)

CalciumFluorideStr = """\
c      Calcium Fluoride
c      AKA: None
c      rho: 3.180000 g/cc
m{}       9019  -0.486672 $ F19
       20040  -0.496193 $ Ca40
       20042  -0.003477 $ Ca42
       20043  -0.000743 $ Ca43
       20044  -0.011744 $ Ca44
       20046  -0.000024 $ Ca46
       20048  -0.001149 $ Ca48
"""
matNum = matInsert('CalciumFluoride', CalciumFluorideStr, -3.18)

CalciumOxideStr = """\
c      Calcium Oxide
c      AKA: None
c      rho: 3.300000 g/cc
m{}       8016  -0.284536 $ O16
       8017  -0.000115 $ O17
       8018  -0.000658 $ O18
       20040  -0.690833 $ Ca40
       20042  -0.004841 $ Ca42
       20043  -0.001034 $ Ca43
       20044  -0.016351 $ Ca44
       20046  -0.000033 $ Ca46
       20048  -0.001599 $ Ca48
"""
matNum = matInsert('CalciumOxide', CalciumOxideStr, -3.30)

CalciumSulfateStr = """\
c      Calcium Sulfate
c      AKA: None
c      rho: 2.960000 g/cc
m{}       8016  -0.468802 $ O16
       8017  -0.000190 $ O17
       8018  -0.001084 $ O18
       16032  -0.223076 $ S32
       16033  -0.001816 $ S33
       16034  -0.010604 $ S34
       16036  -0.000026 $ S36
       20040  -0.284555 $ Ca40
       20042  -0.001994 $ Ca42
       20043  -0.000426 $ Ca43
       20044  -0.006735 $ Ca44
       20046  -0.000014 $ Ca46
       20048  -0.000659 $ Ca48
"""
matNum = matInsert('CalciumSulfate', CalciumSulfateStr, -2.96)

CalciumTungstateStr = """\
c      Calcium Tungstate
c      AKA: None
c      rho: 7.900000 g/cc
m{}       20040  -0.134554 $ Ca40
       20042  -0.000943 $ Ca42
       20043  -0.000201 $ Ca43
       20044  -0.003185 $ Ca44
       20046  -0.000006 $ Ca46
       20048  -0.000311 $ Ca48
       74180  -0.000750 $ W180
       74182  -0.167467 $ W182
       74183  -0.090930 $ W183
       74184  -0.195761 $ W184
       74186  -0.183619 $ W186
       8016  -0.221677 $ O16
       8017  -0.000090 $ O17
       8018  -0.000513 $ O18
"""
matNum = matInsert('CalciumTungstate', CalciumTungstateStr, -7.90)

CarbonDioxideStr = """\
c      Carbon Dioxide
c      AKA: None
c      rho: 0.001842 g/cc
m{}       6012  -0.269751 $ C12
       6013  -0.003162 $ C13
       8016  -0.725120 $ O16
       8017  -0.000294 $ O17
       8018  -0.001677 $ O18
"""
matNum = matInsert('CarbonDioxide', CarbonDioxideStr, -0.00)

CarbonTetrachlorideStr = """\
c      Carbon Tetrachloride
c      AKA: None
c      rho: 1.594000 g/cc
m{}       6012  -0.077180 $ C12
       6013  -0.000905 $ C13
       17035  -0.688935 $ Cl35
       17037  -0.233019 $ Cl37
"""
matNum = matInsert('CarbonTetrachloride', CarbonTetrachlorideStr, -1.59)

CarbonActivatedStr = """\
c      Carbon, Activated
c      AKA: None
c      rho: 0.450000 g/cc
m{}       5011  -0.000001 $ B11
       6012  -0.988426 $ C12
       6013  -0.011584 $ C13
"""
matNum = matInsert('CarbonActivated', CarbonActivatedStr, -0.45)

CarbonAmorphousStr = """\
c      Carbon, Amorphous
c      AKA: None
c      rho: 2.000000 g/cc
m{}       5011  -0.000001 $ B11
       6012  -0.988426 $ C12
       6013  -0.011584 $ C13
"""
matNum = matInsert('CarbonAmorphous', CarbonAmorphousStr, -2.00)

CarbonGraphitereactorgradeStr = """\
c      Carbon, Graphite (reactor grade)
c      AKA: Graphite
c      rho: 1.700000 g/cc
m{}       5011  -0.000001 $ B11
       6012  -0.988426 $ C12
       6013  -0.011584 $ C13
"""
matNum = matInsert('CarbonGraphitereactorgrade', CarbonGraphitereactorgradeStr, -1.70)

CatlitterclumpingStr = """\
c      Cat litter (clumping)
c      AKA: Kitty Litter
c      rho: 1.100000 g/cc
m{}       1001  -0.040385 $ H1
       1002  -0.000009 $ H2
       8016  -0.639299 $ O16
       8017  -0.000259 $ O17
       8018  -0.001478 $ O18
       11023  -0.008399 $ Na23
       13027  -0.098290 $ Al27
       14028  -0.187943 $ Si28
       14029  -0.009889 $ Si29
       14030  -0.006751 $ Si30
       20040  -0.007056 $ Ca40
       20042  -0.000049 $ Ca42
       20043  -0.000011 $ Ca43
       20044  -0.000167 $ Ca44
       20048  -0.000016 $ Ca48
"""
matNum = matInsert('Catlitterclumping', CatlitterclumpingStr, -1.10)

CatlitternonclumpingStr = """\
c      Cat litter (non-clumping)
c      AKA: Kitty Litter
c      rho: 0.800000 g/cc
m{}       1001  -0.013726 $ H1
       1002  -0.000003 $ H2
       8016  -0.538452 $ O16
       8017  -0.000218 $ O17
       8018  -0.001245 $ O18
       11023  -0.043270 $ Na23
       12024  -0.039340 $ Mg24
       12025  -0.005188 $ Mg25
       12026  -0.005940 $ Mg26
       13027  -0.052129 $ Al27
       14028  -0.269345 $ Si28
       14029  -0.014172 $ Si29
       14030  -0.009675 $ Si30
       19039  -0.003504 $ K39
       19041  -0.000266 $ K41
       20040  -0.001295 $ Ca40
       20042  -0.000009 $ Ca42
       20043  -0.000002 $ Ca43
       20044  -0.000031 $ Ca44
       20048  -0.000003 $ Ca48
       26054  -0.000124 $ Fe54
       26056  -0.002013 $ Fe56
       26057  -0.000047 $ Fe57
       26058  -0.000006 $ Fe58
"""
matNum = matInsert('Catlitternonclumping', CatlitternonclumpingStr, -0.80)

CelluloseStr = """\
c      Cellulose
c      AKA: None
c      rho: 1.500000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('Cellulose', CelluloseStr, -1.50)

CelluloseAcetateStr = """\
c      Cellulose Acetate
c      AKA: ['Cellophane']
c      rho: 1.420000 g/cc
m{}       1001  -0.062148 $ H1
       1002  -0.000014 $ H2
       6012  -0.439316 $ C12
       6013  -0.005149 $ C13
       8016  -0.492039 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('CelluloseAcetate', CelluloseAcetateStr, -1.42)

CericSulfateDosimeterSolutionStr = """\
c      Ceric Sulfate Dosimeter Solution
c      AKA: ['Dosimeter Solution']
c      rho: 1.030000 g/cc
m{}       1001  -0.107568 $ H1
       1002  -0.000025 $ H2
       7014  -0.000797 $ N14
       7015  -0.000003 $ N15
       8016  -0.872605 $ O16
       8017  -0.000353 $ O17
       8018  -0.002018 $ O18
       16032  -0.013853 $ S32
       16033  -0.000113 $ S33
       16034  -0.000658 $ S34
       16036  -0.000002 $ S36
       58136  -0.000004 $ Ce136
       58138  -0.000005 $ Ce138
       58140  -0.001767 $ Ce140
       58142  -0.000225 $ Ce142
"""
matNum = matInsert('CericSulfateDosimeterSolution', CericSulfateDosimeterSolutionStr, -1.03)

CeriumBromideStr = """\
c      Cerium Bromide
c      AKA: None
c      rho: 5.200000 g/cc
m{}       58136  -0.000662 $ Ce136
       58138  -0.000911 $ Ce138
       58140  -0.325796 $ Ce140
       58142  -0.041524 $ Ce142
       35079  -0.315962 $ Br79
       35081  -0.315141 $ Br81
"""
matNum = matInsert('CeriumBromide', CeriumBromideStr, -5.20)

CeriumFluorideStr = """\
c      Cerium Fluoride
c      AKA: None
c      rho: 6.160000 g/cc
m{}       9019  -0.289153 $ F19
       58136  -0.001276 $ Ce136
       58138  -0.001756 $ Ce138
       58140  -0.627800 $ Ce140
       58142  -0.080015 $ Ce142
"""
matNum = matInsert('CeriumFluoride', CeriumFluorideStr, -6.16)

CesiumIodide1wtSodiumdopedStr = """\
c      Cesium Iodide - 1 wt% Sodium doped
c      AKA: None
c      rho: 4.510000 g/cc
m{}       55133  -0.511097 $ Cs133
       53127  -0.488019 $ I127
       11023  -0.000884 $ Na23
"""
matNum = matInsert('CesiumIodide1wtSodiumdoped', CesiumIodide1wtSodiumdopedStr, -4.51)

CesiumIodide1wtThaliumdopedStr = """\
c      Cesium Iodide - 1 wt% Thalium doped
c      AKA: None
c      rho: 4.510000 g/cc
m{}       55133  -0.507556 $ Cs133
       53127  -0.484639 $ I127
       81203  -0.002288 $ Tl203
       81205  -0.005517 $ Tl205
"""
matNum = matInsert('CesiumIodide1wtThaliumdoped', CesiumIodide1wtThaliumdopedStr, -4.51)

CesiumLithiumYttriumChlorideCLYCStr = """\
c      Cesium Lithium Yttrium Chloride (CLYC)
c      AKA: None
c      rho: 3.310000 g/cc
m{}       55133  -0.462768 $ Cs133
       3006  -0.000795 $ Li6
       3007  -0.011288 $ Li7
       39089  -0.154782 $ Y89
       17035  -0.276734 $ Cl35
       17037  -0.093600 $ Cl37
"""
matNum = matInsert('CesiumLithiumYttriumChlorideCLYC', CesiumLithiumYttriumChlorideCLYCStr, -3.31)

CesiumLithiumYttriumChlorideCLYCwith95Li6EnrichmentStr = """\
c      Cesium Lithium Yttrium Chloride (CLYC) with 95% Li6 Enrichment
c      AKA: None
c      rho: 3.310000 g/cc
m{}       55133  -0.463502 $ Cs133
       3006  -0.010036 $ Li6
       3007  -0.000528 $ Li7
       39089  -0.155028 $ Y89
       17035  -0.277173 $ Cl35
       17037  -0.093748 $ Cl37
"""
matNum = matInsert('CesiumLithiumYttriumChlorideCLYCwith95Li6Enrichment', CesiumLithiumYttriumChlorideCLYCwith95Li6EnrichmentStr, -3.31)

ChromiumStr = """\
c      Chromium
c      AKA: None
c      rho: 7.180000 g/cc
m{}       24050  -0.041737 $ Cr50
       24052  -0.836994 $ Cr52
       24053  -0.096736 $ Cr53
       24054  -0.024534 $ Cr54
"""
matNum = matInsert('Chromium', ChromiumStr, -7.18)

ClayStr = """\
c      Clay
c      AKA: None
c      rho: 2.200000 g/cc
m{}       8016  -0.483035 $ O16
       8017  -0.000196 $ O17
       8018  -0.001117 $ O18
       11023  -0.007608 $ Na23
       12024  -0.008334 $ Mg24
       12025  -0.001099 $ Mg25
       12026  -0.001258 $ Mg26
       13027  -0.122125 $ Al27
       14028  -0.270272 $ Si28
       14029  -0.014221 $ Si29
       14030  -0.009708 $ Si30
       15031  -0.000113 $ P31
       19039  -0.018984 $ K39
       19040  -0.000002 $ K40
       19041  -0.001440 $ K41
       20040  -0.018324 $ Ca40
       20042  -0.000128 $ Ca42
       20043  -0.000027 $ Ca43
       20044  -0.000434 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000042 $ Ca48
       22046  -0.000370 $ Ti46
       22047  -0.000341 $ Ti47
       22048  -0.003447 $ Ti48
       22049  -0.000258 $ Ti49
       22050  -0.000252 $ Ti50
       25055  -0.000064 $ Mn55
       26054  -0.002078 $ Fe54
       26056  -0.033824 $ Fe56
       26057  -0.000795 $ Fe57
       26058  -0.000108 $ Fe58
"""
matNum = matInsert('Clay', ClayStr, -2.20)

CoalAnthraciteStr = """\
c      Coal, Anthracite
c      AKA: None
c      rho: 0.840000 g/cc
m{}       1001  -0.023994 $ H1
       1002  -0.000006 $ H2
       6012  -0.926156 $ C12
       6013  -0.010855 $ C13
       7014  -0.008965 $ N14
       7015  -0.000035 $ N15
       8016  -0.023935 $ O16
       8017  -0.000010 $ O17
       8018  -0.000055 $ O18
       16032  -0.005682 $ S32
       16033  -0.000046 $ S33
       16034  -0.000270 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('CoalAnthracite', CoalAnthraciteStr, -0.84)

CoalBituminousStr = """\
c      Coal, Bituminous
c      AKA: None
c      rho: 0.750000 g/cc
m{}       1001  -0.055985 $ H1
       1002  -0.000013 $ H2
       6012  -0.835221 $ C12
       6013  -0.009789 $ C13
       7014  -0.015937 $ N14
       7015  -0.000062 $ N15
       8016  -0.069810 $ O16
       8017  -0.000028 $ O17
       8018  -0.000161 $ O18
       16032  -0.012312 $ S32
       16033  -0.000100 $ S33
       16034  -0.000585 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('CoalBituminous', CoalBituminousStr, -0.75)

CoalLigniteStr = """\
c      Coal, Lignite
c      AKA: None
c      rho: 0.750000 g/cc
m{}       1001  -0.041989 $ H1
       1002  -0.000010 $ H2
       6012  -0.718586 $ C12
       6013  -0.008422 $ C13
       7014  -0.011953 $ N14
       7015  -0.000047 $ N15
       8016  -0.212423 $ O16
       8017  -0.000086 $ O17
       8018  -0.000491 $ O18
       16032  -0.005682 $ S32
       16033  -0.000046 $ S33
       16034  -0.000270 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('CoalLignite', CoalLigniteStr, -0.75)

ConcreteLosAlamosMCNPMixStr = """\
c      Concrete [Los Alamos (MCNP) Mix]
c      AKA: None
c      rho: 2.250000 g/cc
m{}       1001  -0.004529 $ H1
       1002  -0.000001 $ H2
       8016  -0.511211 $ O16
       8017  -0.000207 $ O17
       8018  -0.001182 $ O18
       14028  -0.331056 $ Si28
       14029  -0.017419 $ Si29
       14030  -0.011892 $ Si30
       13027  -0.035550 $ Al27
       11023  -0.015270 $ Na23
       20040  -0.055977 $ Ca40
       20042  -0.000392 $ Ca42
       20043  -0.000084 $ Ca43
       20044  -0.001325 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000130 $ Ca48
       26054  -0.000778 $ Fe54
       26056  -0.012664 $ Fe56
       26057  -0.000298 $ Fe57
       26058  -0.000040 $ Fe58
"""
matNum = matInsert('ConcreteLosAlamosMCNPMix', ConcreteLosAlamosMCNPMixStr, -2.25)

ConcreteBariteTypeBAStr = """\
c      Concrete, Barite (Type BA)
c      AKA: None
c      rho: 3.350000 g/cc
m{}       1001  -0.003584 $ H1
       1002  -0.000001 $ H2
       8016  -0.310778 $ O16
       8017  -0.000126 $ O17
       8018  -0.000719 $ O18
       12024  -0.000931 $ Mg24
       12025  -0.000123 $ Mg25
       12026  -0.000141 $ Mg26
       13027  -0.004183 $ Al27
       14028  -0.009607 $ Si28
       14029  -0.000505 $ Si29
       14030  -0.000345 $ Si30
       16032  -0.102150 $ S32
       16033  -0.000832 $ S33
       16034  -0.004856 $ S34
       16036  -0.000012 $ S36
       20040  -0.048518 $ Ca40
       20042  -0.000340 $ Ca42
       20043  -0.000073 $ Ca43
       20044  -0.001148 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000112 $ Ca48
       26054  -0.002682 $ Fe54
       26056  -0.043658 $ Fe56
       26057  -0.001026 $ Fe57
       26058  -0.000139 $ Fe58
       56130  -0.000465 $ Ba130
       56132  -0.000450 $ Ba132
       56134  -0.010921 $ Ba134
       56135  -0.030009 $ Ba135
       56136  -0.036018 $ Ba136
       56137  -0.051890 $ Ba137
       56138  -0.333648 $ Ba138
"""
matNum = matInsert('ConcreteBariteTypeBA', ConcreteBariteTypeBAStr, -3.35)

ConcreteBarytesLimoniteStr = """\
c      Concrete, Barytes-Limonite
c      AKA: None
c      rho: 3.360000 g/cc
m{}       1001  -0.010237 $ H1
       1002  -0.000002 $ H2
       8016  -0.377450 $ O16
       8017  -0.000153 $ O17
       8018  -0.000873 $ O18
       11023  -0.000904 $ Na23
       12024  -0.001800 $ Mg24
       12025  -0.000237 $ Mg25
       12026  -0.000272 $ Mg26
       13027  -0.005020 $ Al27
       14028  -0.012451 $ Si28
       14029  -0.000655 $ Si29
       14030  -0.000447 $ Si30
       16032  -0.072069 $ S32
       16033  -0.000587 $ S33
       16034  -0.003426 $ S34
       16036  -0.000009 $ S36
       20040  -0.052110 $ Ca40
       20042  -0.000365 $ Ca42
       20043  -0.000078 $ Ca43
       20044  -0.001233 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000121 $ Ca48
       25055  -0.001405 $ Mn55
       26054  -0.007742 $ Fe54
       26056  -0.126029 $ Fe56
       26057  -0.002963 $ Fe57
       26058  -0.000401 $ Fe58
       56130  -0.000322 $ Ba130
       56132  -0.000311 $ Ba132
       56134  -0.007564 $ Ba134
       56135  -0.020784 $ Ba135
       56136  -0.024946 $ Ba136
       56137  -0.035939 $ Ba137
       56138  -0.231085 $ Ba138
"""
matNum = matInsert('ConcreteBarytesLimonite', ConcreteBarytesLimoniteStr, -3.36)

ConcreteBoronFritsbaryteStr = """\
c      Concrete, Boron Frits-baryte
c      AKA: None
c      rho: 3.100000 g/cc
m{}       1001  -0.005625 $ H1
       1002  -0.000001 $ H2
       5010  -0.001925 $ B10
       5011  -0.008521 $ B11
       8016  -0.338676 $ O16
       8017  -0.000137 $ O17
       8018  -0.000783 $ O18
       9019  -0.002311 $ F19
       11023  -0.012157 $ Na23
       12024  -0.001801 $ Mg24
       12025  -0.000238 $ Mg25
       12026  -0.000272 $ Mg26
       13027  -0.006430 $ Al27
       14028  -0.030552 $ Si28
       14029  -0.001608 $ Si29
       14030  -0.001097 $ Si30
       16032  -0.087066 $ S32
       16033  -0.000709 $ S33
       16034  -0.004139 $ S34
       16036  -0.000010 $ S36
       19039  -0.000934 $ K39
       19041  -0.000071 $ K41
       20040  -0.060796 $ Ca40
       20042  -0.000426 $ Ca42
       20043  -0.000091 $ Ca43
       20044  -0.001439 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000141 $ Ca48
       25055  -0.000201 $ Mn55
       26054  -0.001242 $ Fe54
       26056  -0.020221 $ Fe56
       26057  -0.000475 $ Fe57
       26058  -0.000064 $ Fe58
       30064  -0.003188 $ Zn64
       30066  -0.001854 $ Zn66
       30067  -0.000274 $ Zn67
       30068  -0.001271 $ Zn68
       30070  -0.000043 $ Zn70
       56130  -0.000404 $ Ba130
       56132  -0.000391 $ Ba132
       56134  -0.009502 $ Ba134
       56135  -0.026110 $ Ba135
       56136  -0.031339 $ Ba136
       56137  -0.045148 $ Ba137
       56138  -0.290300 $ Ba138
"""
matNum = matInsert('ConcreteBoronFritsbaryte', ConcreteBoronFritsbaryteStr, -3.10)

ConcreteColemanitebaryteStr = """\
c      Concrete, Colemanite-baryte
c      AKA: None
c      rho: 3.200000 g/cc
m{}       1001  -0.008562 $ H1
       1002  -0.000002 $ H2
       5010  -0.001819 $ B10
       5011  -0.008052 $ B11
       8016  -0.350584 $ O16
       8017  -0.000142 $ O17
       8018  -0.000811 $ O18
       11023  -0.001108 $ Na23
       12024  -0.001728 $ Mg24
       12025  -0.000228 $ Mg25
       12026  -0.000261 $ Mg26
       13027  -0.006146 $ Al27
       14028  -0.016291 $ Si28
       14029  -0.000857 $ Si29
       14030  -0.000585 $ Si30
       16032  -0.091893 $ S32
       16033  -0.000748 $ S33
       16034  -0.004368 $ S34
       16036  -0.000011 $ S36
       20040  -0.082394 $ Ca40
       20042  -0.000577 $ Ca42
       20043  -0.000123 $ Ca43
       20044  -0.001950 $ Ca44
       20046  -0.000004 $ Ca46
       20048  -0.000191 $ Ca48
       25055  -0.000101 $ Mn55
       26054  -0.000586 $ Fe54
       26056  -0.009538 $ Fe56
       26057  -0.000224 $ Fe57
       26058  -0.000030 $ Fe58
       56130  -0.000411 $ Ba130
       56132  -0.000398 $ Ba132
       56134  -0.009665 $ Ba134
       56135  -0.026556 $ Ba135
       56136  -0.031874 $ Ba136
       56137  -0.045918 $ Ba137
       56138  -0.295254 $ Ba138
"""
matNum = matInsert('ConcreteColemanitebaryte', ConcreteColemanitebaryteStr, -3.20)

ConcreteFerrophosphorusStr = """\
c      Concrete, Ferro-phosphorus
c      AKA: None
c      rho: 4.800000 g/cc
m{}       1001  -0.004999 $ H1
       1002  -0.000001 $ H2
       8016  -0.103718 $ O16
       8017  -0.000042 $ O17
       8018  -0.000240 $ O18
       12024  -0.001559 $ Mg24
       12025  -0.000206 $ Mg25
       12026  -0.000235 $ Mg26
       13027  -0.004000 $ Al27
       14028  -0.031235 $ Si28
       14029  -0.001643 $ Si29
       14030  -0.001122 $ Si30
       15031  -0.197000 $ P31
       20040  -0.040598 $ Ca40
       20042  -0.000284 $ Ca42
       20043  -0.000061 $ Ca43
       20044  -0.000961 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000094 $ Ca48
       26054  -0.034551 $ Fe54
       26056  -0.562439 $ Fe56
       26057  -0.013221 $ Fe57
       26058  -0.001790 $ Fe58
"""
matNum = matInsert('ConcreteFerrophosphorus', ConcreteFerrophosphorusStr, -4.80)

ConcreteHanfordDryStr = """\
c      Concrete, Hanford Dry
c      AKA: None
c      rho: 2.180000 g/cc
m{}       1001  -0.003999 $ H1
       1002  -0.000001 $ H2
       8016  -0.480796 $ O16
       8017  -0.000195 $ O17
       8018  -0.001112 $ O18
       11023  -0.002168 $ Na23
       12024  -0.010986 $ Mg24
       12025  -0.001449 $ Mg25
       12026  -0.001659 $ Mg26
       13027  -0.069387 $ Al27
       14028  -0.254979 $ Si28
       14029  -0.013416 $ Si29
       14030  -0.009159 $ Si30
       19039  -0.012091 $ K39
       19040  -0.000002 $ K40
       19041  -0.000917 $ K41
       20040  -0.077551 $ Ca40
       20042  -0.000543 $ Ca42
       20043  -0.000116 $ Ca43
       20044  -0.001835 $ Ca44
       20046  -0.000004 $ Ca46
       20048  -0.000180 $ Ca48
       26054  -0.003244 $ Fe54
       26056  -0.052808 $ Fe56
       26057  -0.001241 $ Fe57
       26058  -0.000168 $ Fe58
"""
matNum = matInsert('ConcreteHanfordDry', ConcreteHanfordDryStr, -2.18)

ConcreteHanfordWetStr = """\
c      Concrete, Hanford Wet
c      AKA: None
c      rho: 2.350000 g/cc
m{}       1001  -0.012306 $ H1
       1002  -0.000003 $ H2
       8016  -0.511968 $ O16
       8017  -0.000207 $ O17
       8018  -0.001184 $ O18
       11023  -0.002001 $ Na23
       12024  -0.010140 $ Mg24
       12025  -0.001337 $ Mg25
       12026  -0.001531 $ Mg26
       13027  -0.064045 $ Al27
       14028  -0.235347 $ Si28
       14029  -0.012383 $ Si29
       14030  -0.008454 $ Si30
       19039  -0.011160 $ K39
       19040  -0.000001 $ K40
       19041  -0.000847 $ K41
       20040  -0.071580 $ Ca40
       20042  -0.000502 $ Ca42
       20043  -0.000107 $ Ca43
       20044  -0.001694 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000166 $ Ca48
       26054  -0.002994 $ Fe54
       26056  -0.048742 $ Fe56
       26057  -0.001146 $ Fe57
       26058  -0.000155 $ Fe58
"""
matNum = matInsert('ConcreteHanfordWet', ConcreteHanfordWetStr, -2.35)

ConcreteIronPortlandStr = """\
c      Concrete, Iron-Portland
c      AKA: None
c      rho: 5.900000 g/cc
m{}       1001  -0.003320 $ H1
       1002  -0.000001 $ H2
       8016  -0.058404 $ O16
       8017  -0.000024 $ O17
       8018  -0.000135 $ O18
       12024  -0.001020 $ Mg24
       12025  -0.000134 $ Mg25
       12026  -0.000154 $ Mg26
       13027  -0.003321 $ Al27
       14028  -0.008412 $ Si28
       14029  -0.000443 $ Si29
       14030  -0.000302 $ Si30
       16032  -0.000476 $ S32
       16033  -0.000004 $ S33
       16034  -0.000023 $ S34
       20040  -0.038517 $ Ca40
       20042  -0.000270 $ Ca42
       20043  -0.000058 $ Ca43
       20044  -0.000912 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000089 $ Ca48
       25055  -0.003522 $ Mn55
       26054  -0.049707 $ Fe54
       26056  -0.809157 $ Fe56
       26057  -0.019021 $ Fe57
       26058  -0.002576 $ Fe58
"""
matNum = matInsert('ConcreteIronPortland', ConcreteIronPortlandStr, -5.90)

ConcreteIronlimoniteStr = """\
c      Concrete, Iron-limonite
c      AKA: None
c      rho: 4.400000 g/cc
m{}       1001  -0.000500 $ H1
       8016  -0.179422 $ O16
       8017  -0.000073 $ O17
       8018  -0.000415 $ O18
       12024  -0.001558 $ Mg24
       12025  -0.000205 $ Mg25
       12026  -0.000235 $ Mg26
       13027  -0.004998 $ Al27
       14028  -0.012855 $ Si28
       14029  -0.000676 $ Si29
       14030  -0.000462 $ Si30
       16032  -0.000947 $ S32
       16033  -0.000008 $ S33
       16034  -0.000045 $ S34
       20040  -0.058935 $ Ca40
       20042  -0.000413 $ Ca42
       20043  -0.000088 $ Ca43
       20044  -0.001395 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000136 $ Ca48
       25055  -0.015992 $ Mn55
       26054  -0.040684 $ Fe54
       26056  -0.662280 $ Fe56
       26057  -0.015568 $ Fe57
       26058  -0.002108 $ Fe58
"""
matNum = matInsert('ConcreteIronlimonite', ConcreteIronlimoniteStr, -4.40)

ConcreteLimoniteandsteelStr = """\
c      Concrete, Limonite and steel
c      AKA: None
c      rho: 4.540000 g/cc
m{}       1001  -0.006838 $ H1
       1002  -0.000002 $ H2
       8016  -0.155799 $ O16
       8017  -0.000063 $ O17
       8018  -0.000360 $ O18
       12024  -0.001204 $ Mg24
       12025  -0.000159 $ Mg25
       12026  -0.000182 $ Mg26
       13027  -0.006399 $ Al27
       14028  -0.013582 $ Si28
       14029  -0.000715 $ Si29
       14030  -0.000488 $ Si30
       19039  -0.000821 $ K39
       19041  -0.000062 $ K41
       20040  -0.055668 $ Ca40
       20042  -0.000390 $ Ca42
       20043  -0.000083 $ Ca43
       20044  -0.001318 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000129 $ Ca48
       23050  -0.000002 $ V50
       23051  -0.000881 $ V51
       26054  -0.042616 $ Fe54
       26056  -0.693724 $ Fe56
       26057  -0.016308 $ Fe57
       26058  -0.002208 $ Fe58
"""
matNum = matInsert('ConcreteLimoniteandsteel', ConcreteLimoniteandsteelStr, -4.54)

ConcreteLuminitePortlandcolemanitebaryteStr = """\
c      Concrete, Luminite-Portland-colemanite-baryte
c      AKA: None
c      rho: 3.100000 g/cc
m{}       1001  -0.011123 $ H1
       1002  -0.000003 $ H2
       5010  -0.001901 $ B10
       5011  -0.008413 $ B11
       8016  -0.373009 $ O16
       8017  -0.000151 $ O17
       8018  -0.000863 $ O18
       11023  -0.001113 $ Na23
       12024  -0.001577 $ Mg24
       12025  -0.000208 $ Mg25
       12026  -0.000238 $ Mg26
       13027  -0.013351 $ Al27
       14028  -0.013844 $ Si28
       14029  -0.000728 $ Si29
       14030  -0.000497 $ Si30
       16032  -0.085922 $ S32
       16033  -0.000700 $ S33
       16034  -0.004084 $ S34
       16036  -0.000010 $ S36
       20040  -0.074986 $ Ca40
       20042  -0.000525 $ Ca42
       20043  -0.000112 $ Ca43
       20044  -0.001775 $ Ca44
       20046  -0.000004 $ Ca46
       20048  -0.000174 $ Ca48
       22046  -0.000057 $ Ti46
       22047  -0.000052 $ Ti47
       22048  -0.000530 $ Ti48
       22049  -0.000040 $ Ti49
       22050  -0.000039 $ Ti50
       25055  -0.000405 $ Mn55
       26054  -0.001068 $ Fe54
       26056  -0.017382 $ Fe56
       26057  -0.000409 $ Fe57
       26058  -0.000055 $ Fe58
       56130  -0.000386 $ Ba130
       56132  -0.000373 $ Ba132
       56134  -0.009065 $ Ba134
       56135  -0.024909 $ Ba135
       56136  -0.029897 $ Ba136
       56137  -0.043071 $ Ba137
       56138  -0.276942 $ Ba138
"""
matNum = matInsert('ConcreteLuminitePortlandcolemanitebaryte', ConcreteLuminitePortlandcolemanitebaryteStr, -3.10)

ConcreteLuminitecolemanitebaryteStr = """\
c      Concrete, Luminite-colemanite-baryte
c      AKA: None
c      rho: 3.100000 g/cc
m{}       1001  -0.010954 $ H1
       1002  -0.000003 $ H2
       5010  -0.001630 $ B10
       5011  -0.007214 $ B11
       8016  -0.370425 $ O16
       8017  -0.000150 $ O17
       8018  -0.000857 $ O18
       11023  -0.001106 $ Na23
       12024  -0.001097 $ Mg24
       12025  -0.000145 $ Mg25
       12026  -0.000166 $ Mg26
       13027  -0.017692 $ Al27
       14028  -0.008865 $ Si28
       14029  -0.000466 $ Si29
       14030  -0.000318 $ Si30
       16032  -0.086254 $ S32
       16033  -0.000702 $ S33
       16034  -0.004100 $ S34
       16036  -0.000010 $ S36
       20040  -0.053247 $ Ca40
       20042  -0.000373 $ Ca42
       20043  -0.000080 $ Ca43
       20044  -0.001260 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000123 $ Ca48
       22046  -0.001011 $ Ti46
       22047  -0.000932 $ Ti47
       22048  -0.009427 $ Ti48
       22049  -0.000706 $ Ti49
       22050  -0.000690 $ Ti50
       25055  -0.001206 $ Mn55
       26054  -0.001742 $ Fe54
       26056  -0.028361 $ Fe56
       26057  -0.000667 $ Fe57
       26058  -0.000090 $ Fe58
       56130  -0.000389 $ Ba130
       56132  -0.000376 $ Ba132
       56134  -0.009142 $ Ba134
       56135  -0.025121 $ Ba135
       56136  -0.030151 $ Ba136
       56137  -0.043437 $ Ba137
       56138  -0.279300 $ Ba138
"""
matNum = matInsert('ConcreteLuminitecolemanitebaryte', ConcreteLuminitecolemanitebaryteStr, -3.10)

ConcreteM1Str = """\
c      Concrete, M-1
c      AKA: None
c      rho: 4.500000 g/cc
m{}       1001  -0.007998 $ H1
       1002  -0.000002 $ H2
       5010  -0.001658 $ B10
       5011  -0.007340 $ B11
       8016  -0.106710 $ O16
       8017  -0.000043 $ O17
       8018  -0.000247 $ O18
       12024  -0.033518 $ Mg24
       12025  -0.004420 $ Mg25
       12026  -0.005061 $ Mg26
       17035  -0.015693 $ Cl35
       17037  -0.005308 $ Cl37
       25055  -0.003000 $ Mn55
       20040  -0.010633 $ Ca40
       20042  -0.000075 $ Ca42
       20043  -0.000016 $ Ca43
       20044  -0.000252 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000025 $ Ca48
       26054  -0.045052 $ Fe54
       26056  -0.733376 $ Fe56
       26057  -0.017240 $ Fe57
       26058  -0.002335 $ Fe58
"""
matNum = matInsert('ConcreteM1', ConcreteM1Str, -4.50)

ConcreteMOStr = """\
c      Concrete, MO
c      AKA: None
c      rho: 5.500000 g/cc
m{}       1001  -0.004999 $ H1
       1002  -0.000001 $ H2
       8016  -0.059837 $ O16
       8017  -0.000024 $ O17
       8018  -0.000138 $ O18
       12024  -0.028841 $ Mg24
       12025  -0.003804 $ Mg25
       12026  -0.004355 $ Mg26
       25055  -0.004000 $ Mn55
       17035  -0.009715 $ Cl35
       17037  -0.003286 $ Cl37
       26054  -0.049737 $ Fe54
       26056  -0.809655 $ Fe56
       26057  -0.019033 $ Fe57
       26058  -0.002577 $ Fe58
"""
matNum = matInsert('ConcreteMO', ConcreteMOStr, -5.50)

ConcreteMagnetiteStr = """\
c      Concrete, Magnetite
c      AKA: None
c      rho: 3.530000 g/cc
m{}       1001  -0.003112 $ H1
       1002  -0.000001 $ H2
       8016  -0.329608 $ O16
       8017  -0.000133 $ O17
       8018  -0.000762 $ O18
       12024  -0.007279 $ Mg24
       12025  -0.000960 $ Mg25
       12026  -0.001099 $ Mg26
       13027  -0.023486 $ Al27
       14028  -0.023656 $ Si28
       14029  -0.001245 $ Si29
       14030  -0.000850 $ Si30
       16032  -0.001340 $ S32
       16033  -0.000011 $ S33
       16034  -0.000064 $ S34
       20040  -0.068653 $ Ca40
       20042  -0.000481 $ Ca42
       20043  -0.000103 $ Ca43
       20044  -0.001625 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000159 $ Ca48
       22046  -0.004303 $ Ti46
       22047  -0.003965 $ Ti47
       22048  -0.040119 $ Ti48
       22049  -0.003006 $ Ti49
       22050  -0.002936 $ Ti50
       23050  -0.000008 $ V50
       23051  -0.003105 $ V51
       24050  -0.000071 $ Cr50
       24052  -0.001421 $ Cr52
       24053  -0.000164 $ Cr53
       24054  -0.000042 $ Cr54
       25055  -0.001981 $ Mn55
       26054  -0.026774 $ Fe54
       26056  -0.435844 $ Fe56
       26057  -0.010246 $ Fe57
       26058  -0.001387 $ Fe58
"""
matNum = matInsert('ConcreteMagnetite', ConcreteMagnetiteStr, -3.53)

ConcreteMagnetiteandsteelStr = """\
c      Concrete, Magnetite and steel
c      AKA: None
c      rho: 4.640000 g/cc
m{}       1001  -0.002373 $ H1
       1002  -0.000001 $ H2
       8016  -0.137305 $ O16
       8017  -0.000056 $ O17
       8018  -0.000318 $ O18
       12024  -0.002860 $ Mg24
       12025  -0.000377 $ Mg25
       12026  -0.000432 $ Mg26
       13027  -0.010358 $ Al27
       14028  -0.014472 $ Si28
       14029  -0.000761 $ Si29
       14030  -0.000520 $ Si30
       20040  -0.053816 $ Ca40
       20042  -0.000377 $ Ca42
       20043  -0.000081 $ Ca43
       20044  -0.001274 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000125 $ Ca48
       22046  -0.001265 $ Ti46
       22047  -0.001165 $ Ti47
       22048  -0.011792 $ Ti48
       22049  -0.000883 $ Ti49
       22050  -0.000863 $ Ti50
       23050  -0.000002 $ V50
       23051  -0.000645 $ V51
       26054  -0.042786 $ Fe54
       26056  -0.696502 $ Fe56
       26057  -0.016373 $ Fe57
       26058  -0.002217 $ Fe58
"""
matNum = matInsert('ConcreteMagnetiteandsteel', ConcreteMagnetiteandsteelStr, -4.64)

ConcreteMagnusonsStr = """\
c      Concrete, Magnuson's
c      AKA: None
c      rho: 2.147000 g/cc
m{}       1001  -0.003318 $ H1
       1002  -0.000001 $ H2
       6012  -0.104102 $ C12
       6013  -0.001220 $ C13
       8016  -0.498074 $ O16
       8017  -0.000202 $ O17
       8018  -0.001152 $ O18
       11023  -0.001411 $ Na23
       12024  -0.073427 $ Mg24
       12025  -0.009684 $ Mg25
       12026  -0.011087 $ Mg26
       13027  -0.007859 $ Al27
       14028  -0.038677 $ Si28
       14029  -0.002035 $ Si29
       14030  -0.001389 $ Si30
       16032  -0.002352 $ S32
       16033  -0.000019 $ S33
       16034  -0.000112 $ S34
       17035  -0.000391 $ Cl35
       17037  -0.000132 $ Cl37
       19039  -0.008778 $ K39
       19040  -0.000001 $ K40
       19041  -0.000666 $ K41
       20040  -0.218762 $ Ca40
       20042  -0.001533 $ Ca42
       20043  -0.000327 $ Ca43
       20044  -0.005178 $ Ca44
       20046  -0.000010 $ Ca46
       20048  -0.000506 $ Ca48
       22046  -0.000118 $ Ti46
       22047  -0.000109 $ Ti47
       22048  -0.001099 $ Ti48
       22049  -0.000082 $ Ti49
       22050  -0.000080 $ Ti50
       25055  -0.000512 $ Mn55
       26054  -0.000316 $ Fe54
       26056  -0.005142 $ Fe56
       26057  -0.000121 $ Fe57
       26058  -0.000016 $ Fe58
"""
matNum = matInsert('ConcreteMagnusons', ConcreteMagnusonsStr, -2.15)

ConcreteOakRidgeORNLStr = """\
c      Concrete, Oak Ridge (ORNL)
c      AKA: None
c      rho: 2.299400 g/cc
m{}       1001  -0.006185 $ H1
       1002  -0.000001 $ H2
       6012  -0.173165 $ C12
       6013  -0.002030 $ C13
       8016  -0.409072 $ O16
       8017  -0.000166 $ O17
       8018  -0.000946 $ O18
       11023  -0.000271 $ Na23
       12024  -0.025449 $ Mg24
       12025  -0.003356 $ Mg25
       12026  -0.003843 $ Mg26
       13027  -0.010830 $ Al27
       14028  -0.031675 $ Si28
       14029  -0.001667 $ Si29
       14030  -0.001138 $ Si30
       19039  -0.001058 $ K39
       19041  -0.000080 $ K41
       20040  -0.310562 $ Ca40
       20042  -0.002176 $ Ca42
       20043  -0.000465 $ Ca43
       20044  -0.007350 $ Ca44
       20046  -0.000015 $ Ca46
       20048  -0.000719 $ Ca48
       26054  -0.000439 $ Fe54
       26056  -0.007153 $ Fe56
       26057  -0.000168 $ Fe57
       26058  -0.000023 $ Fe58
"""
matNum = matInsert('ConcreteOakRidgeORNL', ConcreteOakRidgeORNLStr, -2.30)

ConcreteOrdinaryNBS03Str = """\
c      Concrete, Ordinary (NBS 03)
c      AKA: None
c      rho: 2.350000 g/cc
m{}       1001  -0.008483 $ H1
       1002  -0.000002 $ H2
       6012  -0.049485 $ C12
       6013  -0.000580 $ C13
       8016  -0.472200 $ O16
       8017  -0.000191 $ O17
       8018  -0.001092 $ O18
       12024  -0.018850 $ Mg24
       12025  -0.002486 $ Mg25
       12026  -0.002846 $ Mg26
       13027  -0.036063 $ Al27
       14028  -0.133301 $ Si28
       14029  -0.007014 $ Si29
       14030  -0.004788 $ Si30
       16032  -0.002813 $ S32
       16033  -0.000023 $ S33
       16034  -0.000134 $ S34
       19039  -0.001577 $ K39
       19041  -0.000120 $ K41
       20040  -0.238681 $ Ca40
       20042  -0.001673 $ Ca42
       20043  -0.000357 $ Ca43
       20044  -0.005649 $ Ca44
       20046  -0.000011 $ Ca46
       20048  -0.000552 $ Ca48
       26054  -0.000623 $ Fe54
       26056  -0.010138 $ Fe56
       26057  -0.000238 $ Fe57
       26058  -0.000032 $ Fe58
"""
matNum = matInsert('ConcreteOrdinaryNBS03', ConcreteOrdinaryNBS03Str, -2.35)

ConcreteOrdinaryNBS04Str = """\
c      Concrete, Ordinary (NBS 04)
c      AKA: None
c      rho: 2.350000 g/cc
m{}       1001  -0.005557 $ H1
       1002  -0.000001 $ H2
       8016  -0.496727 $ O16
       8017  -0.000201 $ O17
       8018  -0.001149 $ O18
       11023  -0.017101 $ Na23
       12024  -0.001999 $ Mg24
       12025  -0.000264 $ Mg25
       12026  -0.000302 $ Mg26
       13027  -0.045746 $ Al27
       14028  -0.289469 $ Si28
       14029  -0.015231 $ Si29
       14030  -0.010398 $ Si30
       16032  -0.001215 $ S32
       16033  -0.000010 $ S33
       16034  -0.000058 $ S34
       19039  -0.017880 $ K39
       19040  -0.000002 $ K40
       19041  -0.001357 $ K41
       20040  -0.080172 $ Ca40
       20042  -0.000562 $ Ca42
       20043  -0.000120 $ Ca43
       20044  -0.001898 $ Ca44
       20046  -0.000004 $ Ca46
       20048  -0.000186 $ Ca48
       26054  -0.000700 $ Fe54
       26056  -0.011394 $ Fe56
       26057  -0.000268 $ Fe57
       26058  -0.000036 $ Fe58
"""
matNum = matInsert('ConcreteOrdinaryNBS04', ConcreteOrdinaryNBS04Str, -2.35)

ConcreteOrdinaryNISTStr = """\
c      Concrete, Ordinary (NIST)
c      AKA: None
c      rho: 2.300000 g/cc
m{}       1001  -0.022094 $ H1
       1002  -0.000005 $ H2
       6012  -0.002455 $ C12
       6013  -0.000029 $ C13
       8016  -0.573373 $ O16
       8017  -0.000232 $ O17
       8018  -0.001326 $ O18
       11023  -0.015208 $ Na23
       12024  -0.000987 $ Mg24
       12025  -0.000130 $ Mg25
       12026  -0.000149 $ Mg26
       13027  -0.019953 $ Al27
       14028  -0.279855 $ Si28
       14029  -0.014725 $ Si29
       14030  -0.010053 $ Si30
       19039  -0.009336 $ K39
       19040  -0.000001 $ K40
       19041  -0.000708 $ K41
       20040  -0.041517 $ Ca40
       20042  -0.000291 $ Ca42
       20043  -0.000062 $ Ca43
       20044  -0.000983 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000096 $ Ca48
       26054  -0.000363 $ Fe54
       26056  -0.005914 $ Fe56
       26057  -0.000139 $ Fe57
       26058  -0.000019 $ Fe58
"""
matNum = matInsert('ConcreteOrdinaryNIST', ConcreteOrdinaryNISTStr, -2.30)

ConcretePortlandStr = """\
c      Concrete, Portland
c      AKA: None
c      rho: 2.300000 g/cc
m{}       1001  -0.009997 $ H1
       1002  -0.000002 $ H2
       6012  -0.000988 $ C12
       6013  -0.000012 $ C13
       8016  -0.527673 $ O16
       8017  -0.000214 $ O17
       8018  -0.001220 $ O18
       11023  -0.016000 $ Na23
       12024  -0.001559 $ Mg24
       12025  -0.000206 $ Mg25
       12026  -0.000235 $ Mg26
       13027  -0.033872 $ Al27
       14028  -0.309615 $ Si28
       14029  -0.016291 $ Si29
       14030  -0.011122 $ Si30
       19039  -0.012082 $ K39
       19040  -0.000002 $ K40
       19041  -0.000917 $ K41
       20040  -0.042531 $ Ca40
       20042  -0.000298 $ Ca42
       20043  -0.000064 $ Ca43
       20044  -0.001007 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000098 $ Ca48
       26054  -0.000790 $ Fe54
       26056  -0.012866 $ Fe56
       26057  -0.000302 $ Fe57
       26058  -0.000041 $ Fe58
"""
matNum = matInsert('ConcretePortland', ConcretePortlandStr, -2.30)

ConcreteRegulatoryConcretedevelopedforUSNRCStr = """\
c      Concrete, Regulatory Concrete (developed for U.S. NRC)
c      AKA: None
c      rho: 2.300000 g/cc
m{}       1001  -0.009997 $ H1
       1002  -0.000002 $ H2
       8016  -0.530558 $ O16
       8017  -0.000215 $ O17
       8018  -0.001227 $ O18
       11023  -0.029000 $ Na23
       13027  -0.034000 $ Al27
       14028  -0.309596 $ Si28
       14029  -0.016290 $ Si29
       14030  -0.011121 $ Si30
       20040  -0.042531 $ Ca40
       20042  -0.000298 $ Ca42
       20043  -0.000064 $ Ca43
       20044  -0.001007 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000098 $ Ca48
       26054  -0.000790 $ Fe54
       26056  -0.012866 $ Fe56
       26057  -0.000302 $ Fe57
       26058  -0.000041 $ Fe58
"""
matNum = matInsert('ConcreteRegulatoryConcretedevelopedforUSNRC', ConcreteRegulatoryConcretedevelopedforUSNRCStr, -2.30)

ConcreteRockyFlatsStr = """\
c      Concrete, Rocky Flats
c      AKA: None
c      rho: 2.321000 g/cc
m{}       1001  -0.007498 $ H1
       1002  -0.000002 $ H2
       6012  -0.054561 $ C12
       6013  -0.000639 $ C13
       7014  -0.000199 $ N14
       7015  -0.000001 $ N15
       8016  -0.483586 $ O16
       8017  -0.000196 $ O17
       8018  -0.001118 $ O18
       11023  -0.006300 $ Na23
       12024  -0.009744 $ Mg24
       12025  -0.001285 $ Mg25
       12026  -0.001471 $ Mg26
       13027  -0.021700 $ Al27
       14028  -0.142396 $ Si28
       14029  -0.007492 $ Si29
       14030  -0.005115 $ Si30
       16032  -0.001799 $ S32
       16033  -0.000015 $ S33
       16034  -0.000086 $ S34
       19039  -0.012732 $ K39
       19040  -0.000002 $ K40
       19041  -0.000966 $ K41
       20040  -0.222322 $ Ca40
       20042  -0.001558 $ Ca42
       20043  -0.000333 $ Ca43
       20044  -0.005262 $ Ca44
       20046  -0.000011 $ Ca46
       20048  -0.000515 $ Ca48
       22046  -0.000079 $ Ti46
       22047  -0.000073 $ Ti47
       22048  -0.000738 $ Ti48
       22049  -0.000055 $ Ti49
       22050  -0.000054 $ Ti50
       26054  -0.000570 $ Fe54
       26056  -0.009282 $ Fe56
       26057  -0.000218 $ Fe57
       26058  -0.000030 $ Fe58
"""
matNum = matInsert('ConcreteRockyFlats', ConcreteRockyFlatsStr, -2.32)

ConcreteSerpentineStr = """\
c      Concrete, Serpentine
c      AKA: None
c      rho: 2.100000 g/cc
m{}       1001  -0.015905 $ H1
       1002  -0.000004 $ H2
       6012  -0.000899 $ C12
       6013  -0.000011 $ C13
       8016  -0.510431 $ O16
       8017  -0.000207 $ O17
       8018  -0.001180 $ O18
       11023  -0.004092 $ Na23
       12024  -0.105233 $ Mg24
       12025  -0.013878 $ Mg25
       12026  -0.015889 $ Mg26
       13027  -0.019090 $ Al27
       14028  -0.192084 $ Si28
       14029  -0.010107 $ Si29
       14030  -0.006900 $ Si30
       19039  -0.003802 $ K39
       19041  -0.000288 $ K41
       20040  -0.065906 $ Ca40
       20042  -0.000462 $ Ca42
       20043  -0.000099 $ Ca43
       20044  -0.001560 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000153 $ Ca48
       24050  -0.000038 $ Cr50
       24052  -0.000762 $ Cr52
       24053  -0.000088 $ Cr53
       24054  -0.000022 $ Cr54
       26054  -0.001745 $ Fe54
       26056  -0.028405 $ Fe56
       26057  -0.000668 $ Fe57
       26058  -0.000090 $ Fe58
"""
matNum = matInsert('ConcreteSerpentine', ConcreteSerpentineStr, -2.10)

CopperStr = """\
c      Copper
c      AKA: None
c      rho: 8.960000 g/cc
m{}       29063  -0.684792 $ Cu63
       29065  -0.315208 $ Cu65
"""
matNum = matInsert('Copper', CopperStr, -8.96)

DiatomaceousEarthStr = """\
c      Diatomaceous Earth
c      AKA: ['DE', 'Diatomite']
c      rho: 0.256300 g/cc
m{}       1001  -0.008954 $ H1
       1002  -0.000002 $ H2
       8016  -0.545098 $ O16
       8017  -0.000221 $ O17
       8018  -0.001261 $ O18
       11023  -0.009896 $ Na23
       12024  -0.002162 $ Mg24
       12025  -0.000285 $ Mg25
       12026  -0.000326 $ Mg26
       13027  -0.015581 $ Al27
       14028  -0.362660 $ Si28
       14029  -0.019082 $ Si29
       14030  -0.013027 $ Si30
       19039  -0.010292 $ K39
       19040  -0.000001 $ K40
       19041  -0.000781 $ K41
       20040  -0.003813 $ Ca40
       20042  -0.000027 $ Ca42
       20043  -0.000006 $ Ca43
       20044  -0.000090 $ Ca44
       20048  -0.000009 $ Ca48
       26054  -0.000363 $ Fe54
       26056  -0.005913 $ Fe56
       26057  -0.000139 $ Fe57
       26058  -0.000019 $ Fe58
"""
matNum = matInsert('DiatomaceousEarth', DiatomaceousEarthStr, -0.26)

DieselFuelStr = """\
c      Diesel Fuel
c      AKA: None
c      rho: 0.849000 g/cc
m{}       1001  -0.138529 $ H1
       1002  -0.000032 $ H2
       6012  -0.851465 $ C12
       6013  -0.009979 $ C13
"""
matNum = matInsert('DieselFuel', DieselFuelStr, -0.85)

EarthTypicalWesternUSStr = """\
c      Earth, Typical Western U.S.
c      AKA: ['Dirt', 'Soil']
c      rho: 1.520000 g/cc
m{}       1001  -0.023828 $ H1
       1002  -0.000005 $ H2
       8016  -0.597276 $ O16
       8017  -0.000242 $ O17
       8018  -0.001381 $ O18
       13027  -0.080446 $ Al27
       14028  -0.272684 $ Si28
       14029  -0.014347 $ Si29
       14030  -0.009795 $ Si30
"""
matNum = matInsert('EarthTypicalWesternUS', EarthTypicalWesternUSStr, -1.52)

EarthUSAverageStr = """\
c      Earth, U.S. Average
c      AKA: ['Dirt', 'Soil']
c      rho: 1.520000 g/cc
m{}       8016  -0.512323 $ O16
       8017  -0.000207 $ O17
       8018  -0.001185 $ O18
       11023  -0.006140 $ Na23
       12024  -0.010370 $ Mg24
       12025  -0.001368 $ Mg25
       12026  -0.001566 $ Mg26
       13027  -0.068564 $ Al27
       14028  -0.249128 $ Si28
       14029  -0.013108 $ Si29
       14030  -0.008949 $ Si30
       19039  -0.013315 $ K39
       19040  -0.000002 $ K40
       19041  -0.001010 $ K41
       20040  -0.049458 $ Ca40
       20042  -0.000347 $ Ca42
       20043  -0.000074 $ Ca43
       20044  -0.001171 $ Ca44
       20046  -0.000002 $ Ca46
       20048  -0.000114 $ Ca48
       22046  -0.000365 $ Ti46
       22047  -0.000336 $ Ti47
       22048  -0.003400 $ Ti48
       22049  -0.000255 $ Ti49
       22050  -0.000249 $ Ti50
       25055  -0.000715 $ Mn55
       26054  -0.003178 $ Fe54
       26056  -0.051726 $ Fe56
       26057  -0.001216 $ Fe57
       26058  -0.000165 $ Fe58
"""
matNum = matInsert('EarthUSAverage', EarthUSAverageStr, -1.52)

EthaneStr = """\
c      Ethane
c      AKA: None
c      rho: 0.001253 g/cc
m{}       1001  -0.201079 $ H1
       1002  -0.000046 $ H2
       6012  -0.789623 $ C12
       6013  -0.009254 $ C13
"""
matNum = matInsert('Ethane', EthaneStr, -0.00)

EthylAcetateStr = """\
c      Ethyl Acetate
c      AKA: None
c      rho: 0.901000 g/cc
m{}       1001  -0.091501 $ H1
       1002  -0.000021 $ H2
       6012  -0.538975 $ C12
       6013  -0.006317 $ C13
       8016  -0.362205 $ O16
       8017  -0.000147 $ O17
       8018  -0.000838 $ O18
"""
matNum = matInsert('EthylAcetate', EthylAcetateStr, -0.90)

EthylAlcoholStr = """\
c      Ethyl Alcohol
c      AKA: ['Ethanol']
c      rho: 0.789300 g/cc
m{}       1001  -0.131245 $ H1
       1002  -0.000030 $ H2
       6012  -0.515390 $ C12
       6013  -0.006040 $ C13
       8016  -0.346355 $ O16
       8017  -0.000140 $ O17
       8018  -0.000801 $ O18
"""
matNum = matInsert('EthylAlcohol', EthylAlcoholStr, -0.79)

EthyleneStr = """\
c      Ethylene
c      AKA: None
c      rho: 0.001175 g/cc
m{}       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
"""
matNum = matInsert('Ethylene', EthyleneStr, -0.00)

EthyleneGlycolStr = """\
c      Ethylene Glycol
c      AKA: None
c      rho: 1.114000 g/cc
m{}       1001  -0.097414 $ H1
       1002  -0.000022 $ H2
       6012  -0.382536 $ C12
       6013  -0.004483 $ C13
       8016  -0.514149 $ O16
       8017  -0.000208 $ O17
       8018  -0.001189 $ O18
"""
matNum = matInsert('EthyleneGlycol', EthyleneGlycolStr, -1.11)

ExplosivecompoundANStr = """\
c      Explosive compound, AN
c      AKA: ['Ammonium Nitrate', 'AN']
c      rho: 1.720000 g/cc
m{}       1001  -0.050358 $ H1
       1002  -0.000012 $ H2
       7014  -0.348612 $ N14
       7015  -0.001364 $ N15
       8016  -0.598024 $ O16
       8017  -0.000242 $ O17
       8018  -0.001383 $ O18
"""
matNum = matInsert('ExplosivecompoundAN', ExplosivecompoundANStr, -1.72)

ExplosivecompoundEGDNStr = """\
c      Explosive compound, EGDN
c      AKA: ['EGDN', 'Ethylene Glycol Dinitrate']
c      rho: 1.490000 g/cc
m{}       1001  -0.026508 $ H1
       1002  -0.000006 $ H2
       6012  -0.156140 $ C12
       6013  -0.001830 $ C13
       7014  -0.183504 $ N14
       7015  -0.000718 $ N15
       8016  -0.629582 $ O16
       8017  -0.000255 $ O17
       8018  -0.001456 $ O18
"""
matNum = matInsert('ExplosivecompoundEGDN', ExplosivecompoundEGDNStr, -1.49)

ExplosivecompoundHMXStr = """\
c      Explosive compound, HMX
c      AKA: ['HMX', 'Cyclotetramethylenetetranitramine', '1,3,5,7-Tetranitro-1,3,5,7-tetrazacyclooctane', 'Octogen']
c      rho: 1.910000 g/cc
m{}       1001  -0.027221 $ H1
       1002  -0.000006 $ H2
       6012  -0.160342 $ C12
       6013  -0.001879 $ C13
       7014  -0.376885 $ N14
       7015  -0.001475 $ N15
       8016  -0.431017 $ O16
       8017  -0.000174 $ O17
       8018  -0.000997 $ O18
"""
matNum = matInsert('ExplosivecompoundHMX', ExplosivecompoundHMXStr, -1.91)

ExplosivecompoundNCStr = """\
c      Explosive compound, NC
c      AKA: ['Cellulose Nitrate', 'Nitrocellulose', 'NC']
c      rho: 1.490000 g/cc
m{}       1001  -0.029208 $ H1
       1002  -0.000007 $ H2
       6012  -0.268156 $ C12
       6013  -0.003143 $ C13
       7014  -0.120802 $ N14
       7015  -0.000473 $ N15
       8016  -0.576645 $ O16
       8017  -0.000233 $ O17
       8018  -0.001333 $ O18
"""
matNum = matInsert('ExplosivecompoundNC', ExplosivecompoundNCStr, -1.49)

ExplosivecompoundNGStr = """\
c      Explosive compound, NG
c      AKA: ['Nitroglycerin (NG)', 'Trinitroglycerol (TNG)', 'Glycerol Trinitrate (GTN)', '1,2,3-trinitroxypropane']
c      rho: 1.600000 g/cc
m{}       1001  -0.022188 $ H1
       1002  -0.000005 $ H2
       6012  -0.156833 $ C12
       6013  -0.001838 $ C13
       7014  -0.184319 $ N14
       7015  -0.000721 $ N15
       8016  -0.632377 $ O16
       8017  -0.000256 $ O17
       8018  -0.001462 $ O18
"""
matNum = matInsert('ExplosivecompoundNG', ExplosivecompoundNGStr, -1.60)

ExplosivecompoundPETNStr = """\
c      Explosive compound, PETN
c      AKA: ['Pentaerythritol tetranitrate (PETN)', 'Baritrate']
c      rho: 1.770000 g/cc
m{}       1001  -0.025501 $ H1
       1002  -0.000006 $ H2
       6012  -0.187761 $ C12
       6013  -0.002201 $ C13
       7014  -0.176532 $ N14
       7015  -0.000691 $ N15
       8016  -0.605663 $ O16
       8017  -0.000245 $ O17
       8018  -0.001401 $ O18
"""
matNum = matInsert('ExplosivecompoundPETN', ExplosivecompoundPETNStr, -1.77)

ExplosivecompoundRDXStr = """\
c      Explosive compound, RDX
c      AKA: ['Research Department Explosive (RDX)', '1,3,5-Tinitro-1,3,5-triazacyclohexane', 'Cyclotrimethylenetrinitramine', 'Cyclonite', 'Hexogen', 'T4']
c      rho: 1.858000 g/cc
m{}       1001  -0.027221 $ H1
       1002  -0.000006 $ H2
       6012  -0.160342 $ C12
       6013  -0.001879 $ C13
       7014  -0.376885 $ N14
       7015  -0.001475 $ N15
       8016  -0.431017 $ O16
       8017  -0.000174 $ O17
       8018  -0.000997 $ O18
"""
matNum = matInsert('ExplosivecompoundRDX', ExplosivecompoundRDXStr, -1.86)

ExplosivecompoundTNTStr = """\
c      Explosive compound, TNT
c      AKA: ['Trinitrotoluene (TNT)', '2,4,6-trinitrotoluene']
c      rho: 1.654000 g/cc
m{}       1001  -0.022183 $ H1
       1002  -0.000005 $ H2
       6012  -0.365873 $ C12
       6013  -0.004288 $ C13
       7014  -0.184283 $ N14
       7015  -0.000721 $ N15
       8016  -0.421502 $ O16
       8017  -0.000171 $ O17
       8018  -0.000975 $ O18
"""
matNum = matInsert('ExplosivecompoundTNT', ExplosivecompoundTNTStr, -1.65)

EyeLensICRPStr = """\
c      Eye Lens (ICRP)
c      AKA: None
c      rho: 1.100000 g/cc
m{}       1001  -0.099243 $ H1
       1002  -0.000023 $ H2
       6012  -0.191468 $ C12
       6013  -0.002244 $ C13
       7014  -0.053062 $ N14
       7015  -0.000208 $ N15
       8016  -0.651980 $ O16
       8017  -0.000264 $ O17
       8018  -0.001508 $ O18
"""
matNum = matInsert('EyeLensICRP', EyeLensICRPStr, -1.10)

FeltStr = """\
c      Felt
c      AKA: None
c      rho: 0.185000 g/cc
m{}       1001  -0.044188 $ H1
       1002  -0.000010 $ H2
       6012  -0.429570 $ C12
       6013  -0.005035 $ C13
       7014  -0.175810 $ N14
       7015  -0.000688 $ N15
       8016  -0.343766 $ O16
       8017  -0.000139 $ O17
       8018  -0.000795 $ O18
"""
matNum = matInsert('Felt', FeltStr, -0.18)

FerricOxideStr = """\
c      Ferric Oxide
c      AKA: ['Iron Oxide']
c      rho: 5.200000 g/cc
m{}       8016  -0.299760 $ O16
       8017  -0.000121 $ O17
       8018  -0.000693 $ O18
       26054  -0.039487 $ Fe54
       26056  -0.642784 $ Fe56
       26057  -0.015110 $ Fe57
       26058  -0.002046 $ Fe58
"""
matNum = matInsert('FerricOxide', FerricOxideStr, -5.20)

FerrousSulfateDosimeterSolutionStr = """\
c      Ferrous Sulfate Dosimeter Solution
c      AKA: ['Dosimeter Solution', 'Standard Fricke']
c      rho: 1.024000 g/cc
m{}       1001  -0.108230 $ H1
       1002  -0.000025 $ H2
       7014  -0.000027 $ N14
       8016  -0.876255 $ O16
       8017  -0.000355 $ O17
       8018  -0.002026 $ O18
       11023  -0.000022 $ Na23
       16032  -0.012282 $ S32
       16033  -0.000100 $ S33
       16034  -0.000584 $ S34
       16036  -0.000001 $ S36
       17035  -0.000025 $ Cl35
       17037  -0.000009 $ Cl37
       26054  -0.000003 $ Fe54
       26056  -0.000050 $ Fe56
       26057  -0.000001 $ Fe57
"""
matNum = matInsert('FerrousSulfateDosimeterSolution', FerrousSulfateDosimeterSolutionStr, -1.02)

FertilizerMuriateofPotashStr = """\
c      Fertilizer (Muriate of Potash)
c      AKA: ['Muriate of Potash', 'Evergo', 'Agrium']
c      rho: 1.121000 g/cc
m{}       1001  -0.000050 $ H1
       8016  -0.000716 $ O16
       8018  -0.000002 $ O18
       11023  -0.008487 $ Na23
       12024  -0.000161 $ Mg24
       12025  -0.000021 $ Mg25
       12026  -0.000024 $ Mg26
       16032  -0.000151 $ S32
       16033  -0.000001 $ S33
       16034  -0.000007 $ S34
       17035  -0.357144 $ Cl35
       17037  -0.120797 $ Cl37
       19039  -0.475700 $ K39
       19040  -0.000061 $ K40
       19041  -0.036091 $ K41
       20040  -0.000267 $ Ca40
       20042  -0.000002 $ Ca42
       20044  -0.000006 $ Ca44
       20048  -0.000001 $ Ca48
       35079  -0.000165 $ Br79
       35081  -0.000165 $ Br81
"""
matNum = matInsert('FertilizerMuriateofPotash', FertilizerMuriateofPotashStr, -1.12)

FiberglassTypeCStr = """\
c      Fiberglass, Type C
c      AKA: None
c      rho: 2.540000 g/cc
m{}       5010  -0.003424 $ B10
       5011  -0.015151 $ B11
       8016  -0.477334 $ O16
       8017  -0.000193 $ O17
       8018  -0.001104 $ O18
       11023  -0.059171 $ Na23
       12024  -0.014060 $ Mg24
       12025  -0.001854 $ Mg25
       12026  -0.002123 $ Mg26
       13027  -0.021107 $ Al27
       14028  -0.278291 $ Si28
       14029  -0.014642 $ Si29
       14030  -0.009996 $ Si30
       16032  -0.000378 $ S32
       16033  -0.000003 $ S33
       16034  -0.000018 $ S34
       20040  -0.096427 $ Ca40
       20042  -0.000676 $ Ca42
       20043  -0.000144 $ Ca43
       20044  -0.002282 $ Ca44
       20046  -0.000005 $ Ca46
       20048  -0.000223 $ Ca48
       26054  -0.000079 $ Fe54
       26056  -0.001282 $ Fe56
       26057  -0.000030 $ Fe57
       26058  -0.000004 $ Fe58
"""
matNum = matInsert('FiberglassTypeC', FiberglassTypeCStr, -2.54)

FiberglassTypeEStr = """\
c      Fiberglass, Type E
c      AKA: None
c      rho: 2.570000 g/cc
m{}       5010  -0.004202 $ B10
       5011  -0.018596 $ B11
       8016  -0.470671 $ O16
       8017  -0.000191 $ O17
       8018  -0.001088 $ O18
       9019  -0.004895 $ F19
       11023  -0.007262 $ Na23
       12024  -0.011504 $ Mg24
       12025  -0.001517 $ Mg25
       12026  -0.001737 $ Mg26
       13027  -0.072536 $ Al27
       14028  -0.227008 $ Si28
       14029  -0.011944 $ Si29
       14030  -0.008154 $ Si30
       19039  -0.007553 $ K39
       19040  -0.000001 $ K40
       19041  -0.000573 $ K41
       20040  -0.138640 $ Ca40
       20042  -0.000972 $ Ca42
       20043  -0.000208 $ Ca43
       20044  -0.003281 $ Ca44
       20046  -0.000007 $ Ca46
       20048  -0.000321 $ Ca48
       22046  -0.000348 $ Ti46
       22047  -0.000321 $ Ti47
       22048  -0.003249 $ Ti48
       22049  -0.000243 $ Ti49
       22050  -0.000238 $ Ti50
       26054  -0.000155 $ Fe54
       26056  -0.002517 $ Fe56
       26057  -0.000059 $ Fe57
       26058  -0.000008 $ Fe58
"""
matNum = matInsert('FiberglassTypeE', FiberglassTypeEStr, -2.57)

FiberglassTypeRStr = """\
c      Fiberglass, Type R
c      AKA: None
c      rho: 2.520000 g/cc
m{}       8016  -0.485405 $ O16
       8017  -0.000197 $ O17
       8018  -0.001122 $ O18
       12024  -0.028204 $ Mg24
       12025  -0.003720 $ Mg25
       12026  -0.004259 $ Mg26
       13027  -0.132313 $ Al27
       14028  -0.257651 $ Si28
       14029  -0.013557 $ Si29
       14030  -0.009255 $ Si30
       20040  -0.062175 $ Ca40
       20042  -0.000436 $ Ca42
       20043  -0.000093 $ Ca43
       20044  -0.001472 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000144 $ Ca48
"""
matNum = matInsert('FiberglassTypeR', FiberglassTypeRStr, -2.52)

Freon12Str = """\
c      Freon-12
c      AKA: None
c      rho: 1.120000 g/cc
m{}       6012  -0.098185 $ C12
       6013  -0.001151 $ C13
       9019  -0.314256 $ F19
       17035  -0.438215 $ Cl35
       17037  -0.148218 $ Cl37
"""
matNum = matInsert('Freon12', Freon12Str, -1.12)

Freon12B2Str = """\
c      Freon-12B2
c      AKA: None
c      rho: 1.800000 g/cc
m{}       6012  -0.056581 $ C12
       6013  -0.000663 $ C13
       9019  -0.181096 $ F19
       35079  -0.381323 $ Br79
       35081  -0.380333 $ Br81
"""
matNum = matInsert('Freon12B2', Freon12B2Str, -1.80)

Freon13Str = """\
c      Freon-13
c      AKA: None
c      rho: 0.950000 g/cc
m{}       6012  -0.113650 $ C12
       6013  -0.001332 $ C13
       9019  -0.545632 $ F19
       17035  -0.253619 $ Cl35
       17037  -0.085782 $ Cl37
"""
matNum = matInsert('Freon13', Freon13Str, -0.95)

Freon13B1Str = """\
c      Freon-13B1
c      AKA: None
c      rho: 1.500000 g/cc
m{}       6012  -0.079723 $ C12
       6013  -0.000934 $ C13
       9019  -0.382750 $ F19
       35079  -0.268644 $ Br79
       35081  -0.267946 $ Br81
"""
matNum = matInsert('Freon13B1', Freon13B1Str, -1.50)

Freon13I1Str = """\
c      Freon-13I1
c      AKA: None
c      rho: 1.800000 g/cc
m{}       6012  -0.060597 $ C12
       6013  -0.000710 $ C13
       9019  -0.290925 $ F19
       53127  -0.647768 $ I127
"""
matNum = matInsert('Freon13I1', Freon13I1Str, -1.80)

GAGGCEStr = """\
c      GAGG(CE)
c      AKA: None
c      rho: 6.630000 g/cc
m{}       64152  -0.000983 $ Gd152
       64154  -0.010861 $ Gd154
       64155  -0.074212 $ Gd155
       64156  -0.103306 $ Gd156
       64157  -0.079488 $ Gd157
       64158  -0.126970 $ Gd158
       64160  -0.113155 $ Gd160
       13027  -0.058220 $ Al27
       31069  -0.134095 $ Ga69
       31071  -0.091576 $ Ga71
       8016  -0.206579 $ O16
       8017  -0.000084 $ O17
       8018  -0.000478 $ O18
"""
matNum = matInsert('GAGGCE', GAGGCEStr, -6.63)

GadoliniumStr = """\
c      Gadolinium
c      AKA: None
c      rho: 7.900400 g/cc
m{}       64152  -0.001932 $ Gd152
       64154  -0.021338 $ Gd154
       64155  -0.145810 $ Gd155
       64156  -0.202971 $ Gd156
       64157  -0.156176 $ Gd157
       64158  -0.249465 $ Gd158
       64160  -0.222321 $ Gd160
"""
matNum = matInsert('Gadolinium', GadoliniumStr, -7.90)

GadoliniumAluminumGaliumOxide05atomCeriumdopedStr = """\
c      Gadolinium Aluminum Galium Oxide - 0.5 atom% Cerium doped
c      AKA: None
c      rho: 6.600000 g/cc
m{}       64152  -0.000969 $ Gd152
       64154  -0.010698 $ Gd154
       64155  -0.073102 $ Gd155
       64156  -0.101760 $ Gd156
       64157  -0.078299 $ Gd157
       64158  -0.125070 $ Gd158
       64160  -0.111461 $ Gd160
       13027  -0.057349 $ Al27
       31069  -0.132088 $ Ga69
       31071  -0.090206 $ Ga71
       8016  -0.203487 $ O16
       8017  -0.000082 $ O17
       8018  -0.000471 $ O18
       58136  -0.000027 $ Ce136
       58138  -0.000037 $ Ce138
       58140  -0.013217 $ Ce140
       58142  -0.001685 $ Ce142
"""
matNum = matInsert('GadoliniumAluminumGaliumOxide05atomCeriumdoped', GadoliniumAluminumGaliumOxide05atomCeriumdopedStr, -6.60)

GadoliniumOxysulfideStr = """\
c      Gadolinium Oxysulfide
c      AKA: ['Gadolinium Sulfoxylate', 'GOS', 'Gadox']
c      rho: 7.440000 g/cc
m{}       8016  -0.084297 $ O16
       8017  -0.000034 $ O17
       8018  -0.000195 $ O18
       16032  -0.080224 $ S32
       16033  -0.000653 $ S33
       16034  -0.003813 $ S34
       16036  -0.000010 $ S36
       64152  -0.001605 $ Gd152
       64154  -0.017727 $ Gd154
       64155  -0.121134 $ Gd155
       64156  -0.168622 $ Gd156
       64157  -0.129745 $ Gd157
       64158  -0.207247 $ Gd158
       64160  -0.184697 $ Gd160
"""
matNum = matInsert('GadoliniumOxysulfide', GadoliniumOxysulfideStr, -7.44)

GadoliniumSilicateGSOStr = """\
c      Gadolinium Silicate (GSO)
c      AKA: GSO
c      rho: 6.710000 g/cc
m{}       8016  -0.188792 $ O16
       8017  -0.000076 $ O17
       8018  -0.000437 $ O18
       14028  -0.061056 $ Si28
       14029  -0.003213 $ Si29
       14030  -0.002193 $ Si30
       64152  -0.001438 $ Gd152
       64154  -0.015881 $ Gd154
       64155  -0.108516 $ Gd155
       64156  -0.151058 $ Gd156
       64157  -0.116231 $ Gd157
       64158  -0.185660 $ Gd158
       64160  -0.165459 $ Gd160
"""
matNum = matInsert('GadoliniumSilicateGSO', GadoliniumSilicateGSOStr, -6.71)

GafchromicSensorGSStr = """\
c      Gafchromic Sensor (GS)
c      AKA: GS
c      rho: 1.300000 g/cc
m{}       1001  -0.089676 $ H1
       1002  -0.000021 $ H2
       6012  -0.598789 $ C12
       6013  -0.007018 $ C13
       7014  -0.111761 $ N14
       7015  -0.000437 $ N15
       8016  -0.191779 $ O16
       8017  -0.000078 $ O17
       8018  -0.000443 $ O18
"""
matNum = matInsert('GafchromicSensorGS', GafchromicSensorGSStr, -1.30)

GalliumArsenideStr = """\
c      Gallium Arsenide
c      AKA: None
c      rho: 5.310000 g/cc
m{}       31069  -0.286425 $ Ga69
       31071  -0.195606 $ Ga71
       33075  -0.517970 $ As75
"""
matNum = matInsert('GalliumArsenide', GalliumArsenideStr, -5.31)

GasolineStr = """\
c      Gasoline
c      AKA: ['Petrol']
c      rho: 0.721000 g/cc
m{}       1001  -0.158794 $ H1
       1002  -0.000036 $ H2
       6012  -0.831429 $ C12
       6013  -0.009744 $ C13
"""
matNum = matInsert('Gasoline', GasolineStr, -0.72)

GermaniumHighPurityStr = """\
c      Germanium, High Purity
c      AKA: None
c      rho: 5.323000 g/cc
m{}       32070  -0.198037 $ Ge70
       32072  -0.271824 $ Ge72
       32073  -0.077813 $ Ge73
       32074  -0.371489 $ Ge74
       32076  -0.080803 $ Ge76
"""
matNum = matInsert('GermaniumHighPurity', GermaniumHighPurityStr, -5.32)

GlassScintillatorLiDopedGS1GS2GS3Str = """\
c      Glass Scintillator, Li Doped  (GS1, GS2, GS3)
c      AKA: Li Doped Glass Scintillator
c      rho: 2.660000 g/cc
m{}       3006  -0.001826 $ Li6
       3007  -0.025938 $ Li7
       8016  -0.476645 $ O16
       8017  -0.000193 $ O17
       8018  -0.001102 $ O18
       12024  -0.112814 $ Mg24
       12025  -0.014878 $ Mg25
       12026  -0.017034 $ Mg26
       13027  -0.058217 $ Al27
       14028  -0.236183 $ Si28
       14029  -0.012427 $ Si29
       14030  -0.008484 $ Si30
       58136  -0.000061 $ Ce136
       58138  -0.000084 $ Ce138
       58140  -0.030161 $ Ce140
       58142  -0.003844 $ Ce142
"""
matNum = matInsert('GlassScintillatorLiDopedGS1GS2GS3', GlassScintillatorLiDopedGS1GS2GS3Str, -2.66)

GlassScintillatorLiDopedGS10GS20GS30Str = """\
c      Glass Scintillator, Li Doped  (GS10, GS20, GS30)
c      AKA: Li Doped Glass Scintillator
c      rho: 2.500000 g/cc
m{}       3006  -0.005479 $ Li6
       3007  -0.077814 $ Li7
       8016  -0.499719 $ O16
       8017  -0.000202 $ O17
       8018  -0.001156 $ O18
       12024  -0.018802 $ Mg24
       12025  -0.002480 $ Mg25
       12026  -0.002839 $ Mg26
       13027  -0.095264 $ Al27
       14028  -0.240478 $ Si28
       14029  -0.012653 $ Si29
       14030  -0.008638 $ Si30
       58136  -0.000061 $ Ce136
       58138  -0.000084 $ Ce138
       58140  -0.030161 $ Ce140
       58142  -0.003844 $ Ce142
"""
matNum = matInsert('GlassScintillatorLiDopedGS10GS20GS30', GlassScintillatorLiDopedGS10GS20GS30Str, -2.50)

GlassScintillatorLiDopedGSF1GSF2andGSF3Str = """\
c      Glass Scintillator, Li Doped  (GSF1, GSF2, and GSF3)
c      AKA: Li Doped Glass Scintillator
c      rho: 2.420000 g/cc
m{}       3006  -0.003050 $ Li6
       3007  -0.043316 $ Li7
       8016  -0.504444 $ O16
       8017  -0.000204 $ O17
       8018  -0.001167 $ O18
       11023  -0.017840 $ Na23
       13027  -0.095455 $ Al27
       14028  -0.288290 $ Si28
       14029  -0.015169 $ Si29
       14030  -0.010356 $ Si30
       58136  -0.000037 $ Ce136
       58138  -0.000051 $ Ce138
       58140  -0.018132 $ Ce140
       58142  -0.002311 $ Ce142
"""
matNum = matInsert('GlassScintillatorLiDopedGSF1GSF2andGSF3', GlassScintillatorLiDopedGSF1GSF2andGSF3Str, -2.42)

GlassScintillatorLiDopedKG1KG2KG3Str = """\
c      Glass Scintillator, Li Doped  (KG1, KG2, KG3)
c      AKA: Li Doped Glass Scintillator
c      rho: 2.420000 g/cc
m{}       3006  -0.006393 $ Li6
       3007  -0.090783 $ Li7
       8016  -0.512458 $ O16
       8017  -0.000207 $ O17
       8018  -0.001185 $ O18
       14028  -0.317774 $ Si28
       14029  -0.016720 $ Si29
       14030  -0.011415 $ Si30
       58136  -0.000077 $ Ce136
       58138  -0.000105 $ Ce138
       58140  -0.037701 $ Ce140
       58142  -0.004805 $ Ce142
"""
matNum = matInsert('GlassScintillatorLiDopedKG1KG2KG3', GlassScintillatorLiDopedKG1KG2KG3Str, -2.42)

GlassBorosilicatePyrexGlassStr = """\
c      Glass, Borosilicate (Pyrex Glass)
c      AKA: Pyrex
c      rho: 2.230000 g/cc
m{}       5010  -0.007382 $ B10
       5011  -0.032672 $ B11
       8016  -0.538099 $ O16
       8017  -0.000218 $ O17
       8018  -0.001244 $ O18
       11023  -0.028191 $ Na23
       13027  -0.011644 $ Al27
       14028  -0.346544 $ Si28
       14029  -0.018234 $ Si29
       14030  -0.012448 $ Si30
       19039  -0.003086 $ K39
       19041  -0.000234 $ K41
"""
matNum = matInsert('GlassBorosilicatePyrexGlass', GlassBorosilicatePyrexGlassStr, -2.23)

GlassFoamStr = """\
c      Glass, Foam
c      AKA: None
c      rho: 0.128000 g/cc
m{}       1001  -0.001000 $ H1
       5010  -0.002764 $ B10
       5011  -0.012233 $ B11
       8016  -0.532553 $ O16
       8017  -0.000216 $ O17
       8018  -0.001232 $ O18
       11023  -0.161000 $ Na23
       14028  -0.256312 $ Si28
       14029  -0.013486 $ Si29
       14030  -0.009207 $ Si30
       16032  -0.009471 $ S32
       16033  -0.000077 $ S33
       16034  -0.000450 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('GlassFoam', GlassFoamStr, -0.13)

GlassLeadStr = """\
c      Glass, Lead
c      AKA: None
c      rho: 6.220000 g/cc
m{}       8016  -0.156029 $ O16
       8017  -0.000063 $ O17
       8018  -0.000361 $ O18
       14028  -0.074290 $ Si28
       14029  -0.003909 $ Si29
       14030  -0.002669 $ Si30
       22046  -0.000641 $ Ti46
       22047  -0.000591 $ Ti47
       22048  -0.005976 $ Ti48
       22049  -0.000448 $ Ti49
       22050  -0.000437 $ Ti50
       33075  -0.002651 $ As75
       82204  -0.010363 $ Pb204
       82206  -0.180145 $ Pb206
       82207  -0.165999 $ Pb207
       82208  -0.395492 $ Pb208
"""
matNum = matInsert('GlassLead', GlassLeadStr, -6.22)

GlassPlateStr = """\
c      Glass, Plate
c      AKA: None
c      rho: 2.400000 g/cc
m{}       8016  -0.458555 $ O16
       8017  -0.000186 $ O17
       8018  -0.001060 $ O18
       11023  -0.096441 $ Na23
       14028  -0.309185 $ Si28
       14029  -0.016268 $ Si29
       14030  -0.011106 $ Si30
       20040  -0.103626 $ Ca40
       20042  -0.000726 $ Ca42
       20043  -0.000155 $ Ca43
       20044  -0.002453 $ Ca44
       20046  -0.000005 $ Ca46
       20048  -0.000240 $ Ca48
"""
matNum = matInsert('GlassPlate', GlassPlateStr, -2.40)

GlycerolStr = """\
c      Glycerol
c      AKA: ['Glycerin']
c      rho: 1.261300 g/cc
m{}       1001  -0.087538 $ H1
       1002  -0.000020 $ H2
       6012  -0.386723 $ C12
       6013  -0.004532 $ C13
       8016  -0.519776 $ O16
       8017  -0.000210 $ O17
       8018  -0.001202 $ O18
"""
matNum = matInsert('Glycerol', GlycerolStr, -1.26)

GoldStr = """\
c      Gold
c      AKA: None
c      rho: 19.320000 g/cc
m{}       79197  -1.000000 $ Au197
"""
matNum = matInsert('Gold', GoldStr, -19.32)

GypsumPlasterofParisStr = """\
c      Gypsum (Plaster of Paris)
c      AKA: ['Drywall', 'Plaster of Paris', 'Wallboard']
c      rho: 2.320000 g/cc
m{}       1001  -0.023411 $ H1
       1002  -0.000005 $ H2
       8016  -0.556044 $ O16
       8017  -0.000225 $ O17
       8018  -0.001286 $ O18
       16032  -0.176393 $ S32
       16033  -0.001436 $ S33
       16034  -0.008385 $ S34
       16036  -0.000021 $ S36
       20040  -0.225006 $ Ca40
       20042  -0.001577 $ Ca42
       20043  -0.000337 $ Ca43
       20044  -0.005325 $ Ca44
       20046  -0.000011 $ Ca46
       20048  -0.000521 $ Ca48
"""
matNum = matInsert('GypsumPlasterofParis', GypsumPlasterofParisStr, -2.32)

He3proportionalgasStr = """\
c      He-3 proportional gas
c      AKA: None
c      rho: 0.000125 g/cc
m{}       2003  -1.000000 $ He3
"""
matNum = matInsert('He3proportionalgas', He3proportionalgasStr, -0.00)

He4gasdetectorStr = """\
c      He-4 gas detector
c      AKA: None
c      rho: 0.030000 g/cc
m{}       2004  -1.000000 $ He4
"""
matNum = matInsert('He4gasdetector', He4gasdetectorStr, -0.03)

HeliumNaturalStr = """\
c      Helium, Natural
c      AKA: None
c      rho: 0.000166 g/cc
m{}       2003  -0.000001 $ He3
       2004  -0.999999 $ He4
"""
matNum = matInsert('HeliumNatural', HeliumNaturalStr, -0.00)

HydrogenStr = """\
c      Hydrogen
c      AKA: None
c      rho: 0.000084 g/cc
m{}       1001  -0.999736 $ H1
       1002  -0.000230 $ H2
"""
matNum = matInsert('Hydrogen', HydrogenStr, -0.00)

IncoloyAlloy800Str = """\
c      Incoloy Alloy 800
c      AKA: None
c      rho: 7.940000 g/cc
m{}       6012  -0.000642 $ C12
       6013  -0.000008 $ C13
       13027  -0.003750 $ Al27
       14028  -0.005971 $ Si28
       14029  -0.000314 $ Si29
       14030  -0.000214 $ Si30
       16032  -0.000092 $ S32
       16033  -0.000001 $ S33
       16034  -0.000004 $ S34
       22046  -0.000297 $ Ti46
       22047  -0.000274 $ Ti47
       22048  -0.002769 $ Ti48
       22049  -0.000207 $ Ti49
       22050  -0.000203 $ Ti50
       24050  -0.008765 $ Cr50
       24052  -0.175769 $ Cr52
       24053  -0.020315 $ Cr53
       24054  -0.005152 $ Cr54
       25055  -0.009750 $ Mn55
       26054  -0.024594 $ Fe54
       26056  -0.400350 $ Fe56
       26057  -0.009411 $ Fe57
       26058  -0.001274 $ Fe58
       28058  -0.218393 $ Ni58
       28060  -0.087021 $ Ni60
       28061  -0.003846 $ Ni61
       28062  -0.012464 $ Ni62
       28064  -0.003276 $ Ni64
       29063  -0.003338 $ Cu63
       29065  -0.001537 $ Cu65
"""
matNum = matInsert('IncoloyAlloy800', IncoloyAlloy800Str, -7.94)

InconelAlloy600Str = """\
c      Inconel Alloy 600
c      AKA: None
c      rho: 8.470000 g/cc
m{}       6012  -0.000964 $ C12
       6013  -0.000011 $ C13
       14028  -0.002986 $ Si28
       14029  -0.000157 $ Si29
       14030  -0.000107 $ Si30
       16032  -0.000092 $ S32
       16033  -0.000001 $ S33
       16034  -0.000004 $ S34
       24050  -0.006469 $ Cr50
       24052  -0.129734 $ Cr52
       24053  -0.014994 $ Cr53
       24054  -0.003803 $ Cr54
       25055  -0.006500 $ Mn55
       26054  -0.004516 $ Fe54
       26056  -0.073521 $ Fe56
       26057  -0.001728 $ Fe57
       26058  -0.000234 $ Fe58
       28058  -0.504607 $ Ni58
       28060  -0.201067 $ Ni60
       28061  -0.008886 $ Ni61
       28062  -0.028798 $ Ni62
       28064  -0.007570 $ Ni64
       29063  -0.002226 $ Cu63
       29065  -0.001024 $ Cu65
"""
matNum = matInsert('InconelAlloy600', InconelAlloy600Str, -8.47)

InconelAlloy625Str = """\
c      Inconel Alloy 625
c      AKA: None
c      rho: 8.440000 g/cc
m{}       6012  -0.000979 $ C12
       6013  -0.000011 $ C13
       13027  -0.003960 $ Al27
       14028  -0.004547 $ Si28
       14029  -0.000239 $ Si29
       14030  -0.000163 $ Si30
       15031  -0.000148 $ P31
       16032  -0.000140 $ S32
       16033  -0.000001 $ S33
       16034  -0.000007 $ S34
       22046  -0.000314 $ Ti46
       22047  -0.000289 $ Ti47
       22048  -0.002924 $ Ti48
       22049  -0.000219 $ Ti49
       22050  -0.000214 $ Ti50
       24050  -0.008973 $ Cr50
       24052  -0.179954 $ Cr52
       24053  -0.020798 $ Cr53
       24054  -0.005275 $ Cr54
       25055  -0.004950 $ Mn55
       26054  -0.002794 $ Fe54
       26056  -0.045487 $ Fe56
       26057  -0.001069 $ Fe57
       26058  -0.000145 $ Fe58
       27059  -0.009899 $ Co59
       28058  -0.389747 $ Ni58
       28060  -0.155300 $ Ni60
       28061  -0.006863 $ Ni61
       28062  -0.022243 $ Ni62
       28064  -0.005847 $ Ni64
       41093  -0.036500 $ Nb93
       42092  -0.012526 $ Mo92
       42094  -0.008059 $ Mo94
       42095  -0.014101 $ Mo95
       42096  -0.014996 $ Mo96
       42097  -0.008726 $ Mo97
       42098  -0.022398 $ Mo98
       42100  -0.009203 $ Mo100
"""
matNum = matInsert('InconelAlloy625', InconelAlloy625Str, -8.44)

InconelAlloy718Str = """\
c      Inconel Alloy 718
c      AKA: None
c      rho: 8.190000 g/cc
m{}       5010  -0.000010 $ B10
       5011  -0.000045 $ B11
       6012  -0.000720 $ C12
       6013  -0.000008 $ C13
       13027  -0.005000 $ Al27
       14028  -0.002925 $ Si28
       14029  -0.000154 $ Si29
       14030  -0.000105 $ Si30
       15031  -0.000136 $ P31
       16032  -0.000129 $ S32
       16033  -0.000001 $ S33
       16034  -0.000006 $ S34
       22046  -0.000713 $ Ti46
       22047  -0.000657 $ Ti47
       22048  -0.006646 $ Ti48
       22049  -0.000498 $ Ti49
       22050  -0.000486 $ Ti50
       24050  -0.007930 $ Cr50
       24052  -0.159029 $ Cr52
       24053  -0.018380 $ Cr53
       24054  -0.004661 $ Cr54
       25055  -0.003184 $ Mn55
       26054  -0.009597 $ Fe54
       26056  -0.156233 $ Fe56
       26057  -0.003673 $ Fe57
       26058  -0.000497 $ Fe58
       28058  -0.352788 $ Ni58
       28060  -0.140573 $ Ni60
       28061  -0.006213 $ Ni61
       28062  -0.020133 $ Ni62
       28064  -0.005292 $ Ni64
       27059  -0.009098 $ Co59
       29063  -0.001869 $ Cu63
       29065  -0.000860 $ Cu65
       41093  -0.051250 $ Nb93
       42092  -0.004245 $ Mo92
       42094  -0.002731 $ Mo94
       42095  -0.004779 $ Mo95
       42096  -0.005082 $ Mo96
       42097  -0.002957 $ Mo97
       42098  -0.007591 $ Mo98
       42100  -0.003119 $ Mo100
"""
matNum = matInsert('InconelAlloy718', InconelAlloy718Str, -8.19)

IndiumStr = """\
c      Indium
c      AKA: None
c      rho: 7.310000 g/cc
m{}       49113  -0.042185 $ In113
       49115  -0.957816 $ In115
"""
matNum = matInsert('Indium', IndiumStr, -7.31)

IronStr = """\
c      Iron
c      AKA: None
c      rho: 7.874000 g/cc
m{}       26054  -0.056456 $ Fe54
       26056  -0.919018 $ Fe56
       26057  -0.021604 $ Fe57
       26058  -0.002925 $ Fe58
"""
matNum = matInsert('Iron', IronStr, -7.87)

IronBorideFe2BStr = """\
c      Iron Boride (Fe2B)
c      AKA: ['Ferro Boron', 'Ferroboride']
c      rho: 7.300000 g/cc
m{}       5010  -0.016265 $ B10
       5011  -0.071985 $ B11
       26054  -0.051472 $ Fe54
       26056  -0.837895 $ Fe56
       26057  -0.019697 $ Fe57
       26058  -0.002667 $ Fe58
"""
matNum = matInsert('IronBorideFe2B', IronBorideFe2BStr, -7.30)

IronBorideFeBStr = """\
c      Iron Boride (FeB)
c      AKA: None
c      rho: 7.150000 g/cc
m{}       5010  -0.029892 $ B10
       5011  -0.132293 $ B11
       26054  -0.047297 $ Fe54
       26056  -0.769932 $ Fe56
       26057  -0.018099 $ Fe57
       26058  -0.002451 $ Fe58
"""
matNum = matInsert('IronBorideFeB', IronBorideFeBStr, -7.15)

IronArmcoIngotStr = """\
c      Iron, Armco Ingot
c      AKA: None
c      rho: 7.866000 g/cc
m{}       6012  -0.000119 $ C12
       6013  -0.000001 $ C13
       8016  -0.001097 $ O16
       8018  -0.000003 $ O18
       15031  -0.000050 $ P31
       16032  -0.000237 $ S32
       16033  -0.000002 $ S33
       16034  -0.000011 $ S34
       25055  -0.000170 $ Mn55
       26054  -0.056360 $ Fe54
       26056  -0.917465 $ Fe56
       26057  -0.021567 $ Fe57
       26058  -0.002921 $ Fe58
"""
matNum = matInsert('IronArmcoIngot', IronArmcoIngotStr, -7.87)

IronCastgrayStr = """\
c      Iron, Cast (gray)
c      AKA: None
c      rho: 7.150000 g/cc
m{}       6012  -0.033607 $ C12
       6013  -0.000394 $ C13
       14028  -0.023886 $ Si28
       14029  -0.001257 $ Si29
       14030  -0.000858 $ Si30
       15031  -0.003000 $ P31
       16032  -0.000947 $ S32
       16033  -0.000008 $ S33
       16034  -0.000045 $ S34
       25055  -0.006500 $ Mn55
       26054  -0.052476 $ Fe54
       26056  -0.854227 $ Fe56
       26057  -0.020081 $ Fe57
       26058  -0.002719 $ Fe58
"""
matNum = matInsert('IronCastgray', IronCastgrayStr, -7.15)

IronWroughtByersNo1Str = """\
c      Iron, Wrought (Byers No.1)
c      AKA: None
c      rho: 7.700000 g/cc
m{}       6012  -0.000801 $ C12
       6013  -0.000009 $ C13
       14028  -0.001469 $ Si28
       14029  -0.000077 $ Si29
       14030  -0.000053 $ Si30
       15031  -0.000628 $ P31
       16032  -0.000096 $ S32
       16033  -0.000001 $ S33
       16034  -0.000005 $ S34
       25055  -0.000152 $ Mn55
       26054  -0.056270 $ Fe54
       26056  -0.915994 $ Fe56
       26057  -0.021533 $ Fe57
       26058  -0.002916 $ Fe58
"""
matNum = matInsert('IronWroughtByersNo1', IronWroughtByersNo1Str, -7.70)

KaowoolStr = """\
c      Kaowool
c      AKA: Kaolinite
c      rho: 0.096000 g/cc
m{}       5010  -0.000046 $ B10
       5011  -0.000202 $ B11
       8016  -0.498709 $ O16
       8017  -0.000202 $ O17
       8018  -0.001153 $ O18
       13027  -0.238163 $ Al27
       14028  -0.223816 $ Si28
       14029  -0.011776 $ Si29
       14030  -0.008040 $ Si30
       20040  -0.000691 $ Ca40
       20042  -0.000005 $ Ca42
       20043  -0.000001 $ Ca43
       20044  -0.000016 $ Ca44
       20048  -0.000002 $ Ca48
       22046  -0.000807 $ Ti46
       22047  -0.000744 $ Ti47
       22048  -0.007524 $ Ti48
       22049  -0.000564 $ Ti49
       22050  -0.000551 $ Ti50
       26054  -0.000395 $ Fe54
       26056  -0.006428 $ Fe56
       26057  -0.000151 $ Fe57
       26058  -0.000020 $ Fe58
"""
matNum = matInsert('Kaowool', KaowoolStr, -0.10)

KaptonPolyimideFilmStr = """\
c      Kapton Polyimide Film
c      AKA: Polyimide Film
c      rho: 1.420000 g/cc
m{}       1001  -0.026355 $ H1
       1002  -0.000006 $ H2
       6012  -0.683134 $ C12
       6013  -0.008006 $ C13
       7014  -0.072984 $ N14
       7015  -0.000286 $ N15
       8016  -0.208668 $ O16
       8017  -0.000084 $ O17
       8018  -0.000483 $ O18
"""
matNum = matInsert('KaptonPolyimideFilm', KaptonPolyimideFilmStr, -1.42)

KennertiumStr = """\
c      Kennertium
c      AKA: None
c      rho: 16.800000 g/cc
m{}       28058  -0.060478 $ Ni58
       28060  -0.024098 $ Ni60
       28061  -0.001065 $ Ni61
       28062  -0.003451 $ Ni62
       28064  -0.000907 $ Ni64
       29063  -0.102719 $ Cu63
       29065  -0.047281 $ Cu65
       74180  -0.000893 $ W180
       74182  -0.199328 $ W182
       74183  -0.108230 $ W183
       74184  -0.233005 $ W184
       74186  -0.218553 $ W186
"""
matNum = matInsert('Kennertium', KennertiumStr, -16.80)

KerniteStr = """\
c      Kernite
c      AKA: None
c      rho: 1.950000 g/cc
m{}       1001  -0.029499 $ H1
       1002  -0.000007 $ H2
       5010  -0.029164 $ B10
       5011  -0.129071 $ B11
       8016  -0.642234 $ O16
       8017  -0.000260 $ O17
       8018  -0.001485 $ O18
       11023  -0.168244 $ Na23
"""
matNum = matInsert('Kernite', KerniteStr, -1.95)

KeroseneStr = """\
c      Kerosene
c      AKA: ['Kerosine', 'Paraffin', 'Paraffin Oil']
c      rho: 0.819000 g/cc
m{}       1001  -0.152385 $ H1
       1002  -0.000035 $ H2
       6012  -0.837766 $ C12
       6013  -0.009819 $ C13
"""
matNum = matInsert('Kerosene', KeroseneStr, -0.82)

KryptonStr = """\
c      Krypton
c      AKA: None
c      rho: 0.003478 g/cc
m{}       36078  -0.003301 $ Kr78
       36080  -0.021801 $ Kr80
       36082  -0.113323 $ Kr82
       36083  -0.113787 $ Kr83
       36084  -0.570642 $ Kr84
       36086  -0.177146 $ Kr86
"""
matNum = matInsert('Krypton', KryptonStr, -0.00)

KynarStr = """\
c      Kynar
c      AKA: Polyvinylidene Fluoride
c      rho: 1.790000 g/cc
m{}       1001  -0.031474 $ H1
       1002  -0.000007 $ H2
       6012  -0.370791 $ C12
       6013  -0.004346 $ C13
       9019  -0.593385 $ F19
"""
matNum = matInsert('Kynar', KynarStr, -1.79)

LanthanumBromide05wtCeriumdopedStr = """\
c      Lanthanum Bromide - 0.5 wt% Cerium doped
c      AKA: None
c      rho: 5.080000 g/cc
m{}       35079  -0.320699 $ Br79
       35081  -0.319866 $ Br81
       58136  -0.000003 $ Ce136
       58138  -0.000005 $ Ce138
       58140  -0.001639 $ Ce140
       58142  -0.000209 $ Ce142
       57138  -0.000315 $ La138
       57139  -0.357260 $ La139
"""
matNum = matInsert('LanthanumBromide05wtCeriumdoped', LanthanumBromide05wtCeriumdopedStr, -5.08)

LanthanumBromide10wtCeriumand010wtStrontiumdopedStr = """\
c      Lanthanum Bromide - 10 wt% Cerium and 0.10 wt% Strontium doped
c      AKA: None
c      rho: 5.080000 g/cc
m{}       35079  -0.316914 $ Br79
       35081  -0.316091 $ Br81
       58136  -0.000066 $ Ce136
       58138  -0.000091 $ Ce138
       58140  -0.032677 $ Ce140
       58142  -0.004165 $ Ce142
       57138  -0.000291 $ La138
       57139  -0.329470 $ La139
       38084  -0.000001 $ Sr84
       38086  -0.000022 $ Sr86
       38087  -0.000016 $ Sr87
       38088  -0.000191 $ Sr88
"""
matNum = matInsert('LanthanumBromide10wtCeriumand010wtStrontiumdoped', LanthanumBromide10wtCeriumand010wtStrontiumdopedStr, -5.08)

LanthanumBromide10wtCeriumdopedStr = """\
c      Lanthanum Bromide - 10 wt% Cerium doped
c      AKA: None
c      rho: 5.080000 g/cc
m{}       35079  -0.316063 $ Br79
       35081  -0.315242 $ Br81
       58136  -0.000066 $ Ce136
       58138  -0.000090 $ Ce138
       58140  -0.032308 $ Ce140
       58142  -0.004118 $ Ce142
       57138  -0.000293 $ La138
       57139  -0.331817 $ La139
"""
matNum = matInsert('LanthanumBromide10wtCeriumdoped', LanthanumBromide10wtCeriumdopedStr, -5.08)

LanthanumBromide5wtCeriumdopedStr = """\
c      Lanthanum Bromide - 5 wt% Cerium doped
c      AKA: None
c      rho: 5.080000 g/cc
m{}       35079  -0.316012 $ Br79
       35081  -0.315192 $ Br81
       58136  -0.000033 $ Ce136
       58138  -0.000045 $ Ce138
       58140  -0.016151 $ Ce140
       58142  -0.002059 $ Ce142
       57138  -0.000309 $ La138
       57139  -0.350195 $ La139
"""
matNum = matInsert('LanthanumBromide5wtCeriumdoped', LanthanumBromide5wtCeriumdopedStr, -5.08)

LeadStr = """\
c      Lead
c      AKA: None
c      rho: 11.350000 g/cc
m{}       82204  -0.013782 $ Pb204
       82206  -0.239575 $ Pb206
       82207  -0.220761 $ Pb207
       82208  -0.525964 $ Pb208
"""
matNum = matInsert('Lead', LeadStr, -11.35)

LeadIodideStr = """\
c      Lead Iodide
c      AKA: None
c      rho: 6.160000 g/cc
m{}       82204  -0.006194 $ Pb204
       82206  -0.107677 $ Pb206
       82207  -0.099221 $ Pb207
       82208  -0.236394 $ Pb208
       53127  -0.550551 $ I127
"""
matNum = matInsert('LeadIodide', LeadIodideStr, -6.16)

LeadTungstatePWOStr = """\
c      Lead Tungstate (PWO)
c      AKA: PWO
c      rho: 8.240000 g/cc
m{}       8016  -0.140261 $ O16
       8017  -0.000057 $ O17
       8018  -0.000324 $ O18
       74180  -0.000475 $ W180
       74182  -0.105961 $ W182
       74183  -0.057534 $ W183
       74184  -0.123864 $ W184
       74186  -0.116181 $ W186
       82204  -0.006276 $ Pb204
       82206  -0.109090 $ Pb206
       82207  -0.100523 $ Pb207
       82208  -0.239496 $ Pb208
"""
matNum = matInsert('LeadTungstatePWO', LeadTungstatePWOStr, -8.24)

LithiumStr = """\
c      Lithium
c      AKA: None
c      rho: 0.534000 g/cc
m{}       3006  -0.065525 $ Li6
       3007  -0.930533 $ Li7
"""
matNum = matInsert('Lithium', LithiumStr, -0.53)

LithiumAmideStr = """\
c      Lithium Amide
c      AKA: None
c      rho: 1.178000 g/cc
m{}       1001  -0.087664 $ H1
       1002  -0.000020 $ H2
       3006  -0.019858 $ Li6
       3007  -0.282010 $ Li7
       7014  -0.606869 $ N14
       7015  -0.002375 $ N15
"""
matNum = matInsert('LithiumAmide', LithiumAmideStr, -1.18)

LithiumFluorideStr = """\
c      Lithium Fluoride
c      AKA: None
c      rho: 2.635000 g/cc
m{}       3006  -0.017583 $ Li6
       3007  -0.249692 $ Li7
       9019  -0.731667 $ F19
"""
matNum = matInsert('LithiumFluoride', LithiumFluorideStr, -2.63)

LithiumGadoliniumBorateLGBStr = """\
c      Lithium Gadolinium Borate (LGB)
c      AKA: LGB
c      rho: 3.500000 g/cc
m{}       3006  -0.098240 $ Li6
       5010  -0.081766 $ B10
       8016  -0.390894 $ O16
       8017  -0.000158 $ O17
       8018  -0.000904 $ O18
       64152  -0.000827 $ Gd152
       64154  -0.009134 $ Gd154
       64155  -0.062412 $ Gd155
       64156  -0.086879 $ Gd156
       64157  -0.066849 $ Gd157
       64158  -0.106780 $ Gd158
       64160  -0.095162 $ Gd160
"""
matNum = matInsert('LithiumGadoliniumBorateLGB', LithiumGadoliniumBorateLGBStr, -3.50)

LithiumHydrideStr = """\
c      Lithium Hydride
c      AKA: None
c      rho: 0.820000 g/cc
m{}       1001  -0.126351 $ H1
       1002  -0.000029 $ H2
       3006  -0.057244 $ Li6
       3007  -0.812928 $ Li7
"""
matNum = matInsert('LithiumHydride', LithiumHydrideStr, -0.82)

LithiumIodidehighdensityStr = """\
c      Lithium Iodide (high density)
c      AKA: None
c      rho: 4.080000 g/cc
m{}       3006  -0.003410 $ Li6
       3007  -0.048431 $ Li7
       53127  -0.947954 $ I127
"""
matNum = matInsert('LithiumIodidehighdensity', LithiumIodidehighdensityStr, -4.08)

LithiumIodidelowdensityStr = """\
c      Lithium Iodide (low density)
c      AKA: None
c      rho: 3.494000 g/cc
m{}       3006  -0.003410 $ Li6
       3007  -0.048431 $ Li7
       53127  -0.947954 $ I127
"""
matNum = matInsert('LithiumIodidelowdensity', LithiumIodidelowdensityStr, -3.49)

LithiumOxideStr = """\
c      Lithium Oxide
c      AKA: None
c      rho: 2.013000 g/cc
m{}       3006  -0.030503 $ Li6
       3007  -0.433180 $ Li7
       8016  -0.533034 $ O16
       8017  -0.000216 $ O17
       8018  -0.001233 $ O18
"""
matNum = matInsert('LithiumOxide', LithiumOxideStr, -2.01)

LithiumTetraborateStr = """\
c      Lithium Tetraborate
c      AKA: None
c      rho: 2.440000 g/cc
m{}       3006  -0.005397 $ Li6
       3007  -0.076644 $ Li7
       5010  -0.047110 $ B10
       5011  -0.208493 $ B11
       8016  -0.660179 $ O16
       8017  -0.000267 $ O17
       8018  -0.001527 $ O18
"""
matNum = matInsert('LithiumTetraborate', LithiumTetraborateStr, -2.44)

LuciteStr = """\
c      Lucite
c      AKA: ['Acrylic', 'Acrylic Glass', 'Acrylite', 'polymethyl methacrylate (PMMA)', 'plexiglas', 'perspex']
c      rho: 1.190000 g/cc
m{}       1001  -0.080524 $ H1
       1002  -0.000019 $ H2
       6012  -0.592895 $ C12
       6013  -0.006949 $ C13
       8016  -0.318752 $ O16
       8017  -0.000129 $ O17
       8018  -0.000737 $ O18
"""
matNum = matInsert('Lucite', LuciteStr, -1.19)

LutetiumAluminumGarnetLuAGStr = """\
c      Lutetium Aluminum Garnet (LuAG)
c      AKA: LuAG
c      rho: 6.730000 g/cc
m{}       8016  -0.224786 $ O16
       8017  -0.000091 $ O17
       8018  -0.000520 $ O18
       13027  -0.158379 $ Al27
       71175  -0.600119 $ Lu175
       71176  -0.016105 $ Lu176
"""
matNum = matInsert('LutetiumAluminumGarnetLuAG', LutetiumAluminumGarnetLuAGStr, -6.73)

LutetiumIodideCeriumStr = """\
c      Lutetium Iodide(Cerium)
c      AKA: None
c      rho: 5.600000 g/cc
m{}       71175  -0.306641 $ Lu175
       71176  -0.008229 $ Lu176
       53127  -0.685130 $ I127
"""
matNum = matInsert('LutetiumIodideCerium', LutetiumIodideCeriumStr, -5.60)

LutetiumOrthoaluminateLuAPStr = """\
c      Lutetium Orthoaluminate (LuAP)
c      AKA: LuAP
c      rho: 8.400000 g/cc
m{}       8016  -0.191514 $ O16
       8017  -0.000078 $ O17
       8018  -0.000443 $ O18
       13027  -0.107949 $ Al27
       71175  -0.681722 $ Lu175
       71176  -0.018295 $ Lu176
"""
matNum = matInsert('LutetiumOrthoaluminateLuAP', LutetiumOrthoaluminateLuAPStr, -8.40)

LutetiumOxyorthosilicateLSOStr = """\
c      Lutetium Oxyorthosilicate (LSO)
c      AKA: LSO
c      rho: 7.400000 g/cc
m{}       8016  -0.174187 $ O16
       8017  -0.000071 $ O17
       8018  -0.000403 $ O18
       14028  -0.056332 $ Si28
       14029  -0.002964 $ Si29
       14030  -0.002023 $ Si30
       71175  -0.744054 $ Lu175
       71176  -0.019968 $ Lu176
"""
matNum = matInsert('LutetiumOxyorthosilicateLSO', LutetiumOxyorthosilicateLSOStr, -7.40)

LutetiumYttriumOxyorthoSilicateLYSOStr = """\
c      Lutetium Yttrium OxyorthoSilicate (LYSO)
c      AKA: LYSO
c      rho: 7.300000 g/cc
m{}       8016  -0.125475 $ O16
       8017  -0.000051 $ O17
       8018  -0.000290 $ O18
       14028  -0.040579 $ Si28
       14029  -0.002135 $ Si29
       14030  -0.001458 $ Si30
       39089  -0.279654 $ Y89
       71175  -0.535976 $ Lu175
       71176  -0.014384 $ Lu176
"""
matNum = matInsert('LutetiumYttriumOxyorthoSilicateLYSO', LutetiumYttriumOxyorthoSilicateLYSOStr, -7.30)

MagnesiumStr = """\
c      Magnesium
c      AKA: None
c      rho: 1.740000 g/cc
m{}       12024  -0.779485 $ Mg24
       12025  -0.102799 $ Mg25
       12026  -0.117697 $ Mg26
"""
matNum = matInsert('Magnesium', MagnesiumStr, -1.74)

MagnesiumOxideStr = """\
c      Magnesium Oxide
c      AKA: None
c      rho: 3.580000 g/cc
m{}       8016  -0.395884 $ O16
       8017  -0.000160 $ O17
       8018  -0.000915 $ O18
       12024  -0.470062 $ Mg24
       12025  -0.061992 $ Mg25
       12026  -0.070976 $ Mg26
"""
matNum = matInsert('MagnesiumOxide', MagnesiumOxideStr, -3.58)

MagnesiumTetraborateStr = """\
c      Magnesium Tetraborate
c      AKA: Magnesium Borate
c      rho: 2.530000 g/cc
m{}       5010  -0.044389 $ B10
       5011  -0.196451 $ B11
       8016  -0.622050 $ O16
       8017  -0.000252 $ O17
       8018  -0.001438 $ O18
       12024  -0.105515 $ Mg24
       12025  -0.013915 $ Mg25
       12026  -0.015932 $ Mg26
"""
matNum = matInsert('MagnesiumTetraborate', MagnesiumTetraborateStr, -2.53)

MasoniteStr = """\
c      Masonite
c      AKA: ['Cellulose', 'Hardboard']
c      rho: 1.300000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('Masonite', MasoniteStr, -1.30)

MelamineStr = """\
c      Melamine
c      AKA: ['Cyanuramide', 'Cyanurotriamide', '1,3,5-Triazine-2,4,6-triamine']
c      rho: 1.573000 g/cc
m{}       1001  -0.047940 $ H1
       1002  -0.000011 $ H2
       6012  -0.282386 $ C12
       6013  -0.003310 $ C13
       7014  -0.663750 $ N14
       7015  -0.002598 $ N15
"""
matNum = matInsert('Melamine', MelamineStr, -1.57)

MelamineFormaldehydeStr = """\
c      Melamine Formaldehyde
c      AKA: ['Formica', 'Melamine Resin']
c      rho: 1.350000 g/cc
m{}       1001  -0.046669 $ H1
       1002  -0.000011 $ H2
       6012  -0.392709 $ C12
       6013  -0.004603 $ C13
       7014  -0.553838 $ N14
       7015  -0.002167 $ N15
"""
matNum = matInsert('MelamineFormaldehyde', MelamineFormaldehydeStr, -1.35)

MercuricIodideStr = """\
c      Mercuric Iodide
c      AKA: None
c      rho: 6.360000 g/cc
m{}       53127  -0.558557 $ I127
       80196  -0.000647 $ Hg196
       80198  -0.043436 $ Hg198
       80199  -0.073869 $ Hg199
       80200  -0.101656 $ Hg200
       80201  -0.058292 $ Hg201
       80202  -0.132721 $ Hg202
       80204  -0.030838 $ Hg204
"""
matNum = matInsert('MercuricIodide', MercuricIodideStr, -6.36)

MercuryStr = """\
c      Mercury
c      AKA: None
c      rho: 13.546000 g/cc
m{}       80196  -0.001465 $ Hg196
       80198  -0.098395 $ Hg198
       80199  -0.167334 $ Hg199
       80200  -0.230282 $ Hg200
       80201  -0.132049 $ Hg201
       80202  -0.300652 $ Hg202
       80204  -0.069858 $ Hg204
"""
matNum = matInsert('Mercury', MercuryStr, -13.55)

MethaneStr = """\
c      Methane
c      AKA: None
c      rho: 0.000667 g/cc
m{}       1001  -0.251260 $ H1
       1002  -0.000058 $ H2
       6012  -0.740009 $ C12
       6013  -0.008673 $ C13
"""
matNum = matInsert('Methane', MethaneStr, -0.00)

MethanolStr = """\
c      Methanol
c      AKA: Methyl Alcohol
c      rho: 0.791400 g/cc
m{}       1001  -0.125799 $ H1
       1002  -0.000029 $ H2
       6012  -0.370502 $ C12
       6013  -0.004342 $ C13
       8016  -0.497974 $ O16
       8017  -0.000202 $ O17
       8018  -0.001152 $ O18
"""
matNum = matInsert('Methanol', MethanolStr, -0.79)

MethyleneChlorideStr = """\
c      Methylene Chloride
c      AKA: ['Dichloromethane']
c      rho: 1.326600 g/cc
m{}       1001  -0.023730 $ H1
       1002  -0.000005 $ H2
       6012  -0.139782 $ C12
       6013  -0.001638 $ C13
       17035  -0.623868 $ Cl35
       17037  -0.211011 $ Cl37
"""
matNum = matInsert('MethyleneChloride', MethyleneChlorideStr, -1.33)

MolybdenumStr = """\
c      Molybdenum
c      AKA: None
c      rho: 10.220000 g/cc
m{}       42092  -0.139177 $ Mo92
       42094  -0.089550 $ Mo94
       42095  -0.156676 $ Mo95
       42096  -0.166621 $ Mo96
       42097  -0.096957 $ Mo97
       42098  -0.248871 $ Mo98
       42100  -0.102250 $ Mo100
"""
matNum = matInsert('Molybdenum', MolybdenumStr, -10.22)

MonosodiumTitanateMSTStr = """\
c      Monosodium Titanate, MST
c      AKA: MST
c      rho: 1.000000 g/cc
m{}       1001  -0.005045 $ H1
       1002  -0.000001 $ H2
       8016  -0.399443 $ O16
       8017  -0.000162 $ O17
       8018  -0.000924 $ O18
       11023  -0.115105 $ Na23
       22046  -0.037962 $ Ti46
       22047  -0.034980 $ Ti47
       22048  -0.353952 $ Ti48
       22049  -0.026517 $ Ti49
       22050  -0.025907 $ Ti50
"""
matNum = matInsert('MonosodiumTitanateMST', MonosodiumTitanateMSTStr, -1.00)

MortarStr = """\
c      Mortar
c      AKA: None
c      rho: 1.970000 g/cc
m{}       13027  -0.232525 $ Al27
       20040  -0.002113 $ Ca40
       20042  -0.000015 $ Ca42
       20043  -0.000003 $ Ca43
       20044  -0.000050 $ Ca44
       20048  -0.000005 $ Ca48
       8016  -0.486782 $ O16
       8017  -0.000197 $ O17
       8018  -0.001126 $ O18
       26054  -0.000644 $ Fe54
       26056  -0.010484 $ Fe56
       26057  -0.000246 $ Fe57
       26058  -0.000033 $ Fe58
       19039  -0.007078 $ K39
       19040  -0.000001 $ K40
       19041  -0.000537 $ K41
       11023  -0.020418 $ Na23
       14028  -0.210552 $ Si28
       14029  -0.011078 $ Si29
       14030  -0.007563 $ Si30
       22046  -0.000677 $ Ti46
       22047  -0.000624 $ Ti47
       22048  -0.006316 $ Ti48
       22049  -0.000473 $ Ti49
       22050  -0.000462 $ Ti50
"""
matNum = matInsert('Mortar', MortarStr, -1.97)

MuscleEquivalentLiquidwithsucroseStr = """\
c      Muscle Equivalent-Liquid, with sucrose
c      AKA: None
c      rho: 1.110000 g/cc
m{}       1001  -0.098208 $ H1
       1002  -0.000023 $ H2
       6012  -0.154406 $ C12
       6013  -0.001810 $ C13
       7014  -0.035312 $ N14
       7015  -0.000138 $ N15
       8016  -0.708177 $ O16
       8017  -0.000287 $ O17
       8018  -0.001638 $ O18
"""
matNum = matInsert('MuscleEquivalentLiquidwithsucrose', MuscleEquivalentLiquidwithsucroseStr, -1.11)

MuscleEquivalentLiquidwithoutsucroseStr = """\
c      Muscle Equivalent-Liquid, without sucrose
c      AKA: None
c      rho: 1.070000 g/cc
m{}       1001  -0.101942 $ H1
       1002  -0.000023 $ H2
       6012  -0.118669 $ C12
       6013  -0.001391 $ C13
       7014  -0.035312 $ N14
       7015  -0.000138 $ N15
       8016  -0.740510 $ O16
       8017  -0.000300 $ O17
       8018  -0.001712 $ O18
"""
matNum = matInsert('MuscleEquivalentLiquidwithoutsucrose', MuscleEquivalentLiquidwithoutsucroseStr, -1.07)

MuscleSkeletalStr = """\
c      Muscle, Skeletal
c      AKA: None
c      rho: 1.040000 g/cc
m{}       1001  -0.100610 $ H1
       1002  -0.000023 $ H2
       6012  -0.106582 $ C12
       6013  -0.001249 $ C13
       7014  -0.027572 $ N14
       7015  -0.000108 $ N15
       8016  -0.752728 $ O16
       8017  -0.000305 $ O17
       8018  -0.001741 $ O18
       11023  -0.000750 $ Na23
       12024  -0.000148 $ Mg24
       12025  -0.000020 $ Mg25
       12026  -0.000022 $ Mg26
       15031  -0.001800 $ P31
       16032  -0.002282 $ S32
       16033  -0.000019 $ S33
       16034  -0.000108 $ S34
       17035  -0.000590 $ Cl35
       17037  -0.000200 $ Cl37
       19039  -0.002807 $ K39
       19041  -0.000213 $ K41
       20040  -0.000029 $ Ca40
       20044  -0.000001 $ Ca44
       26054  -0.000002 $ Fe54
       26056  -0.000037 $ Fe56
       26057  -0.000001 $ Fe57
       30064  -0.000024 $ Zn64
       30066  -0.000014 $ Zn66
       30067  -0.000002 $ Zn67
       30068  -0.000010 $ Zn68
"""
matNum = matInsert('MuscleSkeletal', MuscleSkeletalStr, -1.04)

MuscleStriatedStr = """\
c      Muscle, Striated
c      AKA: None
c      rho: 1.040000 g/cc
m{}       1001  -0.101970 $ H1
       1002  -0.000023 $ H2
       6012  -0.121577 $ C12
       6013  -0.001425 $ C13
       7014  -0.034863 $ N14
       7015  -0.000136 $ N15
       8016  -0.727028 $ O16
       8017  -0.000294 $ O17
       8018  -0.001681 $ O18
       11023  -0.000800 $ Na23
       12024  -0.000156 $ Mg24
       12025  -0.000021 $ Mg25
       12026  -0.000024 $ Mg26
       15031  -0.002000 $ P31
       16032  -0.004735 $ S32
       16033  -0.000039 $ S33
       16034  -0.000225 $ S34
       16036  -0.000001 $ S36
       19039  -0.002788 $ K39
       19041  -0.000212 $ K41
"""
matNum = matInsert('MuscleStriated', MuscleStriatedStr, -1.04)

NE213EquivalentStr = """\
c      NE-213 Equivalent
c      AKA: None
c      rho: 0.874000 g/cc
m{}       6012  -0.894581 $ C12
       6013  -0.010485 $ C13
       1001  -0.094920 $ H1
       1002  -0.000022 $ H2
"""
matNum = matInsert('NE213Equivalent', NE213EquivalentStr, -0.87)

NeonStr = """\
c      Neon
c      AKA: None
c      rho: 0.000839 g/cc
m{}       10020  -0.896404 $ Ne20
       10021  -0.002809 $ Ne21
       10022  -0.100804 $ Ne22
"""
matNum = matInsert('Neon', NeonStr, -0.00)

NickelStr = """\
c      Nickel
c      AKA: None
c      rho: 8.902000 g/cc
m{}       28058  -0.671977 $ Ni58
       28060  -0.267758 $ Ni60
       28061  -0.011834 $ Ni61
       28062  -0.038349 $ Ni62
       28064  -0.010080 $ Ni64
"""
matNum = matInsert('Nickel', NickelStr, -8.90)

NiobiumStr = """\
c      Niobium
c      AKA: None
c      rho: 8.570000 g/cc
m{}       41093  -1.000000 $ Nb93
"""
matNum = matInsert('Niobium', NiobiumStr, -8.57)

NitrogenStr = """\
c      Nitrogen
c      AKA: None
c      rho: 0.001165 g/cc
m{}       7014  -0.996091 $ N14
       7015  -0.003898 $ N15
"""
matNum = matInsert('Nitrogen', NitrogenStr, -0.00)

NylonDupontELVAmide8062Str = """\
c      Nylon, Dupont ELVAmide 8062
c      AKA: None
c      rho: 1.080000 g/cc
m{}       1001  -0.103482 $ H1
       1002  -0.000024 $ H2
       6012  -0.640912 $ C12
       6013  -0.007512 $ C13
       7014  -0.099147 $ N14
       7015  -0.000388 $ N15
       8016  -0.148137 $ O16
       8017  -0.000060 $ O17
       8018  -0.000343 $ O18
"""
matNum = matInsert('NylonDupontELVAmide8062', NylonDupontELVAmide8062Str, -1.08)

NylonType11RilsanStr = """\
c      Nylon, Type 11 (Rilsan)
c      AKA: None
c      rho: 1.425000 g/cc
m{}       1001  -0.115456 $ H1
       1002  -0.000027 $ H2
       6012  -0.712463 $ C12
       6013  -0.008350 $ C13
       7014  -0.076120 $ N14
       7015  -0.000298 $ N15
       8016  -0.087053 $ O16
       8017  -0.000035 $ O17
       8018  -0.000201 $ O18
"""
matNum = matInsert('NylonType11Rilsan', NylonType11RilsanStr, -1.43)

NylonType6andType66Str = """\
c      Nylon, Type 6 and Type 6/6
c      AKA: Polyamide
c      rho: 1.140000 g/cc
m{}       1001  -0.097959 $ H1
       1002  -0.000023 $ H2
       6012  -0.629473 $ C12
       6013  -0.007377 $ C13
       7014  -0.123298 $ N14
       7015  -0.000483 $ N15
       8016  -0.141007 $ O16
       8017  -0.000057 $ O17
       8018  -0.000326 $ O18
"""
matNum = matInsert('NylonType6andType66', NylonType6andType66Str, -1.14)

NylonType610Str = """\
c      Nylon, Type 6/10
c      AKA: None
c      rho: 1.140000 g/cc
m{}       1001  -0.107043 $ H1
       1002  -0.000025 $ H2
       6012  -0.672561 $ C12
       6013  -0.007882 $ C13
       7014  -0.098803 $ N14
       7015  -0.000387 $ N15
       8016  -0.112995 $ O16
       8017  -0.000046 $ O17
       8018  -0.000261 $ O18
"""
matNum = matInsert('NylonType610', NylonType610Str, -1.14)

OilCrudeHeavyColdLakeCanadaStr = """\
c      Oil, Crude (Heavy, Cold Lake, Canada)
c      AKA: ['Heavy Oil', 'Petroleum']
c      rho: 0.970000 g/cc
m{}       1001  -0.103973 $ H1
       1002  -0.000024 $ H2
       6012  -0.827313 $ C12
       6013  -0.009696 $ C13
       7014  -0.003984 $ N14
       7015  -0.000016 $ N15
       8016  -0.010970 $ O16
       8017  -0.000004 $ O17
       8018  -0.000025 $ O18
       16032  -0.041671 $ S32
       16033  -0.000339 $ S33
       16034  -0.001981 $ S34
       16036  -0.000005 $ S36
"""
matNum = matInsert('OilCrudeHeavyColdLakeCanada', OilCrudeHeavyColdLakeCanadaStr, -0.97)

OilCrudeHeavyMexicanStr = """\
c      Oil, Crude (Heavy, Mexican)
c      AKA: ['Heavy Oil', 'Petroleum']
c      rho: 0.975000 g/cc
m{}       1001  -0.104012 $ H1
       1002  -0.000024 $ H2
       6012  -0.843853 $ C12
       6013  -0.009890 $ C13
       16032  -0.039993 $ S32
       16033  -0.000326 $ S33
       16034  -0.001901 $ S34
       16036  -0.000005 $ S36
"""
matNum = matInsert('OilCrudeHeavyMexican', OilCrudeHeavyMexicanStr, -0.97)

OilCrudeHeavyQayarahIraqStr = """\
c      Oil, Crude (Heavy, Qayarah, Iraq)
c      AKA: ['Heavy Oil', 'Petroleum']
c      rho: 0.970000 g/cc
m{}       1001  -0.101973 $ H1
       1002  -0.000023 $ H2
       6012  -0.797660 $ C12
       6013  -0.009349 $ C13
       7014  -0.006973 $ N14
       7015  -0.000027 $ N15
       16032  -0.079554 $ S32
       16033  -0.000648 $ S33
       16034  -0.003782 $ S34
       16036  -0.000009 $ S36
"""
matNum = matInsert('OilCrudeHeavyQayarahIraq', OilCrudeHeavyQayarahIraqStr, -0.97)

OilCrudeLightTexasStr = """\
c      Oil, Crude (Light, Texas)
c      AKA: Petroleum
c      rho: 0.875000 g/cc
m{}       1001  -0.123214 $ H1
       1002  -0.000028 $ H2
       6012  -0.842342 $ C12
       6013  -0.009872 $ C13
       7014  -0.006987 $ N14
       7015  -0.000027 $ N15
       16032  -0.016607 $ S32
       16033  -0.000135 $ S33
       16034  -0.000789 $ S34
       16036  -0.000002 $ S36
"""
matNum = matInsert('OilCrudeLightTexas', OilCrudeLightTexasStr, -0.88)

OilFuelCalifStr = """\
c      Oil, Fuel (Calif.)
c      AKA: None
c      rho: 0.955000 g/cc
m{}       1001  -0.125845 $ H1
       1002  -0.000029 $ H2
       6012  -0.852328 $ C12
       6013  -0.009989 $ C13
       16032  -0.011189 $ S32
       16033  -0.000091 $ S33
       16034  -0.000532 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('OilFuelCalif', OilFuelCalifStr, -0.95)

OilHydraulicStr = """\
c      Oil, Hydraulic
c      AKA: None
c      rho: 0.871000 g/cc
m{}       1001  -0.040487 $ H1
       1002  -0.000009 $ H2
       6012  -0.578138 $ C12
       6013  -0.006776 $ C13
       8016  -0.077705 $ O16
       8017  -0.000031 $ O17
       8018  -0.000180 $ O18
       15031  -0.037710 $ P31
       17035  -0.193524 $ Cl35
       17037  -0.065456 $ Cl37
"""
matNum = matInsert('OilHydraulic', OilHydraulicStr, -0.87)

OilLardStr = """\
c      Oil, Lard
c      AKA: Lard
c      rho: 0.915000 g/cc
m{}       1001  -0.117594 $ H1
       1002  -0.000027 $ H2
       6012  -0.769639 $ C12
       6013  -0.009020 $ C13
       8016  -0.103443 $ O16
       8017  -0.000042 $ O17
       8018  -0.000239 $ O18
"""
matNum = matInsert('OilLard', OilLardStr, -0.92)

OxygenStr = """\
c      Oxygen
c      AKA: None
c      rho: 0.001332 g/cc
m{}       8016  -0.997290 $ O16
       8017  -0.000404 $ O17
       8018  -0.002306 $ O18
"""
matNum = matInsert('Oxygen', OxygenStr, -0.00)

P10gasStr = """\
c      P-10 gas
c      AKA: None
c      rho: 0.001561 g/cc
m{}       1001  -0.010732 $ H1
       1002  -0.000002 $ H2
       6012  -0.031609 $ C12
       6013  -0.000370 $ C13
       18036  -0.002875 $ Ar36
       18038  -0.000572 $ Ar38
       18040  -0.953833 $ Ar40
"""
matNum = matInsert('P10gas', P10gasStr, -0.00)

P5gasStr = """\
c      P-5 gas
c      AKA: None
c      rho: 0.001611 g/cc
m{}       1001  -0.005201 $ H1
       1002  -0.000001 $ H2
       6012  -0.015317 $ C12
       6013  -0.000180 $ C13
       18036  -0.002941 $ Ar36
       18038  -0.000585 $ Ar38
       18040  -0.975770 $ Ar40
"""
matNum = matInsert('P5gas', P5gasStr, -0.00)

PterphenylStr = """\
c      P-terphenyl
c      AKA: None
c      rho: 1.280000 g/cc
m{}       1001  -0.061258 $ H1
       1002  -0.000014 $ H2
       6012  -0.927862 $ C12
       6013  -0.010875 $ C13
"""
matNum = matInsert('Pterphenyl', PterphenylStr, -1.28)

PalladiumStr = """\
c      Palladium
c      AKA: None
c      rho: 12.020000 g/cc
m{}       46102  -0.009767 $ Pd102
       46104  -0.108766 $ Pd104
       46105  -0.220121 $ Pd105
       46106  -0.271974 $ Pd106
       46108  -0.268290 $ Pd108
       46110  -0.121038 $ Pd110
"""
matNum = matInsert('Palladium', PalladiumStr, -12.02)

PaperNewsprintStr = """\
c      Paper, News print
c      AKA: None
c      rho: 0.650000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('PaperNewsprint', PaperNewsprintStr, -0.65)

PaperglossyStr = """\
c      Paper, glossy
c      AKA: None
c      rho: 1.135000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('Paperglossy', PaperglossyStr, -1.14)

PaperprinterStr = """\
c      Paper, printer
c      AKA: None
c      rho: 0.690000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('Paperprinter', PaperprinterStr, -0.69)

PhotographicEmulsionGelinStr = """\
c      Photographic Emulsion, Gel in
c      AKA: None
c      rho: 1.291400 g/cc
m{}       1001  -0.081159 $ H1
       1002  -0.000019 $ H2
       6012  -0.411245 $ C12
       6013  -0.004820 $ C13
       7014  -0.110805 $ N14
       7015  -0.000434 $ N15
       8016  -0.379609 $ O16
       8017  -0.000154 $ O17
       8018  -0.000878 $ O18
       16032  -0.010304 $ S32
       16033  -0.000084 $ S33
       16034  -0.000490 $ S34
       16036  -0.000001 $ S36
"""
matNum = matInsert('PhotographicEmulsionGelin', PhotographicEmulsionGelinStr, -1.29)

PhotographicEmulsionKodakTypeAAStr = """\
c      Photographic Emulsion, Kodak Type AA
c      AKA: None
c      rho: 2.200000 g/cc
m{}       1001  -0.030492 $ H1
       1002  -0.000007 $ H2
       6012  -0.208262 $ C12
       6013  -0.002441 $ C13
       7014  -0.071818 $ N14
       7015  -0.000281 $ N15
       8016  -0.162758 $ O16
       8017  -0.000066 $ O17
       8018  -0.000376 $ O18
       35079  -0.111544 $ Br79
       35081  -0.111255 $ Br81
       47107  -0.154488 $ Ag107
       47109  -0.146212 $ Ag109
"""
matNum = matInsert('PhotographicEmulsionKodakTypeAA', PhotographicEmulsionKodakTypeAAStr, -2.20)

PhotographicEmulsionStandardNuclearStr = """\
c      Photographic Emulsion, Standard Nuclear
c      AKA: None
c      rho: 3.815000 g/cc
m{}       1001  -0.014096 $ H1
       1002  -0.000003 $ H2
       6012  -0.071425 $ C12
       6013  -0.000837 $ C13
       7014  -0.019244 $ N14
       7015  -0.000075 $ N15
       8016  -0.065922 $ O16
       8017  -0.000027 $ O17
       8018  -0.000152 $ O18
       16032  -0.001790 $ S32
       16033  -0.000015 $ S33
       16034  -0.000085 $ S34
       35079  -0.174778 $ Br79
       35081  -0.174324 $ Br81
       47107  -0.243577 $ Ag107
       47109  -0.230528 $ Ag109
       53127  -0.003120 $ I127
"""
matNum = matInsert('PhotographicEmulsionStandardNuclear', PhotographicEmulsionStandardNuclearStr, -3.81)

PlatinumStr = """\
c      Platinum
c      AKA: None
c      rho: 21.450000 g/cc
m{}       78190  -0.000117 $ Pt190
       78192  -0.007695 $ Pt192
       78194  -0.326711 $ Pt194
       78195  -0.337594 $ Pt195
       78196  -0.253238 $ Pt196
       78198  -0.074647 $ Pt198
"""
matNum = matInsert('Platinum', PlatinumStr, -21.45)

PlutoniumBromideStr = """\
c      Plutonium Bromide
c      AKA: None
c      rho: 6.750000 g/cc
m{}       35079  -0.250633 $ Br79
       35081  -0.249982 $ Br81
       94238  -0.000250 $ Pu238
       94239  -0.466923 $ Pu239
       94240  -0.029963 $ Pu240
       94241  -0.001998 $ Pu241
       94242  -0.000250 $ Pu242
"""
matNum = matInsert('PlutoniumBromide', PlutoniumBromideStr, -6.75)

PlutoniumCarbideStr = """\
c      Plutonium Carbide
c      AKA: None
c      rho: 13.600000 g/cc
m{}       6012  -0.047272 $ C12
       6013  -0.000554 $ C13
       94238  -0.000476 $ Pu238
       94239  -0.890283 $ Pu239
       94240  -0.057130 $ Pu240
       94241  -0.003809 $ Pu241
       94242  -0.000476 $ Pu242
"""
matNum = matInsert('PlutoniumCarbide', PlutoniumCarbideStr, -13.60)

PlutoniumChlorideStr = """\
c      Plutonium Chloride
c      AKA: None
c      rho: 5.710000 g/cc
m{}       17035  -0.230052 $ Cl35
       17037  -0.077810 $ Cl37
       94238  -0.000346 $ Pu238
       94239  -0.647161 $ Pu239
       94240  -0.041529 $ Pu240
       94241  -0.002769 $ Pu241
       94242  -0.000346 $ Pu242
"""
matNum = matInsert('PlutoniumChloride', PlutoniumChlorideStr, -5.71)

PlutoniumDioxideStr = """\
c      Plutonium Dioxide
c      AKA: None
c      rho: 11.460000 g/cc
m{}       8016  -0.117705 $ O16
       8017  -0.000048 $ O17
       8018  -0.000272 $ O18
       94238  -0.000441 $ Pu238
       94239  -0.824647 $ Pu239
       94240  -0.052919 $ Pu240
       94241  -0.003528 $ Pu241
       94242  -0.000441 $ Pu242
"""
matNum = matInsert('PlutoniumDioxide', PlutoniumDioxideStr, -11.46)

PlutoniumFluoridePuF3Str = """\
c      Plutonium Fluoride (PuF3)
c      AKA: None
c      rho: 9.330000 g/cc
m{}       9019  -0.192476 $ F19
       94238  -0.000404 $ Pu238
       94239  -0.755035 $ Pu239
       94240  -0.048451 $ Pu240
       94241  -0.003230 $ Pu241
       94242  -0.000404 $ Pu242
"""
matNum = matInsert('PlutoniumFluoridePuF3', PlutoniumFluoridePuF3Str, -9.33)

PlutoniumFluoridePuF4Str = """\
c      Plutonium Fluoride (PuF4)
c      AKA: None
c      rho: 7.100000 g/cc
m{}       9019  -0.241162 $ F19
       94238  -0.000379 $ Pu238
       94239  -0.709514 $ Pu239
       94240  -0.045530 $ Pu240
       94241  -0.003035 $ Pu241
       94242  -0.000379 $ Pu242
"""
matNum = matInsert('PlutoniumFluoridePuF4', PlutoniumFluoridePuF4Str, -7.10)

PlutoniumFluoridePuF6Str = """\
c      Plutonium Fluoride (PuF6)
c      AKA: None
c      rho: 5.080000 g/cc
m{}       9019  -0.322817 $ F19
       94238  -0.000339 $ Pu238
       94239  -0.633166 $ Pu239
       94240  -0.040631 $ Pu240
       94241  -0.002709 $ Pu241
       94242  -0.000339 $ Pu242
"""
matNum = matInsert('PlutoniumFluoridePuF6', PlutoniumFluoridePuF6Str, -5.08)

PlutoniumIodideStr = """\
c      Plutonium Iodide
c      AKA: None
c      rho: 6.920000 g/cc
m{}       53127  -0.614218 $ I127
       94238  -0.000193 $ Pu238
       94239  -0.360706 $ Pu239
       94240  -0.023147 $ Pu240
       94241  -0.001543 $ Pu241
       94242  -0.000193 $ Pu242
"""
matNum = matInsert('PlutoniumIodide', PlutoniumIodideStr, -6.92)

PlutoniumNitrateStr = """\
c      Plutonium Nitrate
c      AKA: None
c      rho: 2.447000 g/cc
m{}       7014  -0.114563 $ N14
       7015  -0.000448 $ N15
       8016  -0.393054 $ O16
       8017  -0.000159 $ O17
       8018  -0.000909 $ O18
       94238  -0.000245 $ Pu238
       94239  -0.458960 $ Pu239
       94240  -0.029452 $ Pu240
       94241  -0.001963 $ Pu241
       94242  -0.000245 $ Pu242
"""
matNum = matInsert('PlutoniumNitrate', PlutoniumNitrateStr, -2.45)

PlutoniumNitrideStr = """\
c      Plutonium Nitride
c      AKA: None
c      rho: 14.250000 g/cc
m{}       7014  -0.055119 $ N14
       7015  -0.000216 $ N15
       94238  -0.000472 $ Pu238
       94239  -0.883262 $ Pu239
       94240  -0.056680 $ Pu240
       94241  -0.003779 $ Pu241
       94242  -0.000472 $ Pu242
"""
matNum = matInsert('PlutoniumNitride', PlutoniumNitrideStr, -14.25)

PlutoniumOxidePu2O3Str = """\
c      Plutonium Oxide (Pu2O3)
c      AKA: None
c      rho: 10.500000 g/cc
m{}       8016  -0.090963 $ O16
       8017  -0.000037 $ O17
       8018  -0.000210 $ O18
       94238  -0.000454 $ Pu238
       94239  -0.849719 $ Pu239
       94240  -0.054527 $ Pu240
       94241  -0.003635 $ Pu241
       94242  -0.000454 $ Pu242
"""
matNum = matInsert('PlutoniumOxidePu2O3', PlutoniumOxidePu2O3Str, -10.50)

PlutoniumOxidePuOStr = """\
c      Plutonium Oxide (PuO)
c      AKA: None
c      rho: 14.000000 g/cc
m{}       8016  -0.062543 $ O16
       8017  -0.000025 $ O17
       8018  -0.000145 $ O18
       94238  -0.000469 $ Pu238
       94239  -0.876363 $ Pu239
       94240  -0.056237 $ Pu240
       94241  -0.003749 $ Pu241
       94242  -0.000469 $ Pu242
"""
matNum = matInsert('PlutoniumOxidePuO', PlutoniumOxidePuOStr, -14.00)

PlutoniumAgedWGPuA47Pu240Str = """\
c      Plutonium, Aged WGPu (A: 4-7% Pu240)
c      AKA: Weapons Grade Plutonium (WGPu)
c      rho: 19.840000 g/cc
m{}       94238  -0.000100 $ Pu238
       94239  -0.936294 $ Pu239
       94240  -0.059910 $ Pu240
       94241  -0.001997 $ Pu241
       94242  -0.000300 $ Pu242
       95241  -0.001400 $ Am241
"""
matNum = matInsert('PlutoniumAgedWGPuA47Pu240', PlutoniumAgedWGPuA47Pu240Str, -19.84)

PlutoniumAgedWGPuB1013Pu240Str = """\
c      Plutonium, Aged WGPu (B: 10-13% Pu240)
c      AKA: Weapons Grade Plutonium (WGPu)
c      rho: 19.840000 g/cc
m{}       94238  -0.000892 $ Pu238
       94239  -0.861837 $ Pu239
       94240  -0.117073 $ Pu240
       94241  -0.009913 $ Pu241
       94242  -0.001685 $ Pu242
       95241  -0.008600 $ Am241
"""
matNum = matInsert('PlutoniumAgedWGPuB1013Pu240', PlutoniumAgedWGPuB1013Pu240Str, -19.84)

PlutoniumAgedWGPuC1619Pu240Str = """\
c      Plutonium, Aged WGPu (C: 16-19% Pu240)
c      AKA: Weapons Grade Plutonium (WGPu)
c      rho: 19.840000 g/cc
m{}       94238  -0.002333 $ Pu238
       94239  -0.783937 $ Pu239
       94240  -0.165029 $ Pu240
       94241  -0.013995 $ Pu241
       94242  -0.006706 $ Pu242
       95241  -0.028000 $ Am241
"""
matNum = matInsert('PlutoniumAgedWGPuC1619Pu240', PlutoniumAgedWGPuC1619Pu240Str, -19.84)

PlutoniumDOE3013WGPuStr = """\
c      Plutonium, DOE 3013 WGPu
c      AKA: Weapons Grade Plutonium (WGPu)
c      rho: 19.840000 g/cc
m{}       94238  -0.000500 $ Pu238
       94239  -0.935000 $ Pu239
       94240  -0.060000 $ Pu240
       94241  -0.004000 $ Pu241
       94242  -0.000500 $ Pu242
"""
matNum = matInsert('PlutoniumDOE3013WGPu', PlutoniumDOE3013WGPuStr, -19.84)

PlutoniumFuelGradeStr = """\
c      Plutonium, Fuel Grade
c      AKA: None
c      rho: 19.840000 g/cc
m{}       94238  -0.001000 $ Pu238
       94239  -0.861000 $ Pu239
       94240  -0.120000 $ Pu240
       94241  -0.016000 $ Pu241
       94242  -0.002000 $ Pu242
"""
matNum = matInsert('PlutoniumFuelGrade', PlutoniumFuelGradeStr, -19.84)

PlutoniumPowerGradeStr = """\
c      Plutonium, Power Grade
c      AKA: None
c      rho: 19.840000 g/cc
m{}       94238  -0.009900 $ Pu238
       94239  -0.623800 $ Pu239
       94240  -0.217800 $ Pu240
       94241  -0.118800 $ Pu241
       94242  -0.029700 $ Pu242
"""
matNum = matInsert('PlutoniumPowerGrade', PlutoniumPowerGradeStr, -19.84)

PlutoniumShefelbineWGPuStr = """\
c      Plutonium, Shefelbine WGPu
c      AKA: Weapons Grade Plutonium (WGPu)
c      rho: 19.840000 g/cc
m{}       94238  -0.000300 $ Pu238
       94239  -0.939200 $ Pu239
       94240  -0.057000 $ Pu240
       94241  -0.003000 $ Pu241
       94242  -0.000300 $ Pu242
       95241  -0.000200 $ Am241
"""
matNum = matInsert('PlutoniumShefelbineWGPu', PlutoniumShefelbineWGPuStr, -19.84)

PolycarbonateStr = """\
c      Polycarbonate
c      AKA: ['Makrolon', 'Lexan']
c      rho: 1.200000 g/cc
m{}       1001  -0.055482 $ H1
       1002  -0.000013 $ H2
       6012  -0.746995 $ C12
       6013  -0.008755 $ C13
       8016  -0.188250 $ O16
       8017  -0.000076 $ O17
       8018  -0.000435 $ O18
"""
matNum = matInsert('Polycarbonate', PolycarbonateStr, -1.20)

PolyethyleneTerephthalatePETStr = """\
c      Polyethylene Terephthalate (PET)
c      AKA: ['Dacron', 'PET', 'PETE', 'Mylar', 'Polyester']
c      rho: 1.380000 g/cc
m{}       1001  -0.041951 $ H1
       1002  -0.000010 $ H2
       6012  -0.617774 $ C12
       6013  -0.007240 $ C13
       8016  -0.332128 $ O16
       8017  -0.000134 $ O17
       8018  -0.000768 $ O18
"""
matNum = matInsert('PolyethyleneTerephthalatePET', PolyethyleneTerephthalatePETStr, -1.38)

PolyethyleneBoratedStr = """\
c      Polyethylene, Borated
c      AKA: None
c      rho: 1.000000 g/cc
m{}       1001  -0.125322 $ H1
       1002  -0.000029 $ H2
       5010  -0.018427 $ B10
       5011  -0.081550 $ B11
       6012  -0.765680 $ C12
       6013  -0.008974 $ C13
"""
matNum = matInsert('PolyethyleneBorated', PolyethyleneBoratedStr, -1.00)

PolyethyleneNonboratedStr = """\
c      Polyethylene, Non-borated
c      AKA: None
c      rho: 0.930000 g/cc
m{}       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
"""
matNum = matInsert('PolyethyleneNonborated', PolyethyleneNonboratedStr, -0.93)

PolyisocyanuratePIRStr = """\
c      Polyisocyanurate (PIR)
c      AKA: ['PIR', 'Polyiso', 'Iso', 'Isocyanurate']
c      rho: 0.048200 g/cc
m{}       1001  -0.040268 $ H1
       1002  -0.000009 $ H2
       6012  -0.711581 $ C12
       6013  -0.008340 $ C13
       7014  -0.111505 $ N14
       7015  -0.000436 $ N15
       8016  -0.127520 $ O16
       8017  -0.000052 $ O17
       8018  -0.000295 $ O18
"""
matNum = matInsert('PolyisocyanuratePIR', PolyisocyanuratePIRStr, -0.05)

PolypropylenePPStr = """\
c      Polypropylene (PP)
c      AKA: PP
c      rho: 0.900000 g/cc
m{}       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
"""
matNum = matInsert('PolypropylenePP', PolypropylenePPStr, -0.90)

PolystyrenePSStr = """\
c      Polystyrene (PS)
c      AKA: ['PS', 'Styrofoam']
c      rho: 1.060000 g/cc
m{}       1001  -0.077405 $ H1
       1002  -0.000018 $ H2
       6012  -0.911897 $ C12
       6013  -0.010687 $ C13
"""
matNum = matInsert('PolystyrenePS', PolystyrenePSStr, -1.06)

PolytetrafluoroethylenePTFEStr = """\
c      Polytetrafluoroethylene (PTFE)
c      AKA: ['PTFE', 'Teflon']
c      rho: 2.250000 g/cc
m{}       6012  -0.237397 $ C12
       6013  -0.002782 $ C13
       9019  -0.759824 $ F19
"""
matNum = matInsert('PolytetrafluoroethylenePTFE', PolytetrafluoroethylenePTFEStr, -2.25)

PolyurethaneFoamPURStr = """\
c      Polyurethane Foam (PUR)
c      AKA: ['PU', 'PUR']
c      rho: 0.021000 g/cc
m{}       1001  -0.040991 $ H1
       1002  -0.000009 $ H2
       6012  -0.537701 $ C12
       6013  -0.006302 $ C13
       7014  -0.120528 $ N14
       7015  -0.000472 $ N15
       8016  -0.293204 $ O16
       8017  -0.000119 $ O17
       8018  -0.000678 $ O18
"""
matNum = matInsert('PolyurethaneFoamPUR', PolyurethaneFoamPURStr, -0.02)

PolyvinylAcetatePVAStr = """\
c      Polyvinyl Acetate (PVA)
c      AKA: ['Wood Glue', 'School Glue', 'PVA']
c      rho: 1.190000 g/cc
m{}       1001  -0.070233 $ H1
       1002  -0.000016 $ H2
       6012  -0.551596 $ C12
       6013  -0.006465 $ C13
       8016  -0.370687 $ O16
       8017  -0.000150 $ O17
       8018  -0.000857 $ O18
"""
matNum = matInsert('PolyvinylAcetatePVA', PolyvinylAcetatePVAStr, -1.19)

PolyvinylChloridePVCStr = """\
c      Polyvinyl Chloride (PVC)
c      AKA: PVC
c      rho: 1.406000 g/cc
m{}       1001  -0.048373 $ H1
       1002  -0.000011 $ H2
       6012  -0.379912 $ C12
       6013  -0.004453 $ C13
       17035  -0.423901 $ Cl35
       17037  -0.143376 $ Cl37
"""
matNum = matInsert('PolyvinylChloridePVC', PolyvinylChloridePVCStr, -1.41)

PolyvinylToluenePVTStr = """\
c      Polyvinyl Toluene (PVT)
c      AKA: ['PVT', 'plastic scintillator', 'Vinyltoluene']
c      rho: 1.032000 g/cc
m{}       1001  -0.085273 $ H1
       1002  -0.000020 $ H2
       6012  -0.904119 $ C12
       6013  -0.010596 $ C13
"""
matNum = matInsert('PolyvinylToluenePVT', PolyvinylToluenePVTStr, -1.03)

PolyvinylideneChloridePVDCStr = """\
c      Polyvinylidene Chloride (PVDC)
c      AKA: ['Saran', 'PVDC']
c      rho: 1.700000 g/cc
m{}       1001  -0.020790 $ H1
       1002  -0.000005 $ H2
       6012  -0.244926 $ C12
       6013  -0.002871 $ C13
       17035  -0.546572 $ Cl35
       17037  -0.184867 $ Cl37
"""
matNum = matInsert('PolyvinylideneChloridePVDC', PolyvinylideneChloridePVDCStr, -1.70)

PotassiumAluminumSilicateStr = """\
c      Potassium Aluminum Silicate
c      AKA: ['Aluminum Potassium Silicate', 'Microcline', 'Naturally Occurring Radioactive Material (NORM)']
c      rho: 1.100000 g/cc
m{}       8016  -0.458622 $ O16
       8017  -0.000186 $ O17
       8018  -0.001061 $ O18
       13027  -0.096941 $ Al27
       14028  -0.278100 $ Si28
       14029  -0.014632 $ Si29
       14030  -0.009989 $ Si30
       19039  -0.130553 $ K39
       19040  -0.000017 $ K40
       19041  -0.009905 $ K41
"""
matNum = matInsert('PotassiumAluminumSilicate', PotassiumAluminumSilicateStr, -1.10)

PotassiumIodideStr = """\
c      Potassium Iodide
c      AKA: None
c      rho: 3.130000 g/cc
m{}       19039  -0.218893 $ K39
       19040  -0.000028 $ K40
       19041  -0.016607 $ K41
       53127  -0.764472 $ I127
"""
matNum = matInsert('PotassiumIodide', PotassiumIodideStr, -3.13)

PotassiumOxideStr = """\
c      Potassium Oxide
c      AKA: None
c      rho: 2.320000 g/cc
m{}       8016  -0.169392 $ O16
       8017  -0.000069 $ O17
       8018  -0.000392 $ O18
       19039  -0.771515 $ K39
       19040  -0.000099 $ K40
       19041  -0.058534 $ K41
"""
matNum = matInsert('PotassiumOxide', PotassiumOxideStr, -2.32)

PropanegasStr = """\
c      Propane (gas)
c      AKA: None
c      rho: 0.001879 g/cc
m{}       1001  -0.182823 $ H1
       1002  -0.000042 $ H2
       6012  -0.807672 $ C12
       6013  -0.009466 $ C13
"""
matNum = matInsert('Propanegas', PropanegasStr, -0.00)

PropaneliquidStr = """\
c      Propane (liquid)
c      AKA: None
c      rho: 0.430000 g/cc
m{}       1001  -0.182823 $ H1
       1002  -0.000042 $ H2
       6012  -0.807672 $ C12
       6013  -0.009466 $ C13
"""
matNum = matInsert('Propaneliquid', PropaneliquidStr, -0.43)

QuartzStr = """\
c      Quartz
c      AKA: None
c      rho: 2.620000 g/cc
m{}       8016  -0.531126 $ O16
       8017  -0.000215 $ O17
       8018  -0.001228 $ O18
       14028  -0.429420 $ Si28
       14029  -0.022594 $ Si29
       14030  -0.015425 $ Si30
"""
matNum = matInsert('Quartz', QuartzStr, -2.62)

QuartzGlassStr = """\
c      Quartz Glass
c      AKA: None
c      rho: 2.200000 g/cc
m{}       8016  -0.531126 $ O16
       8017  -0.000215 $ O17
       8018  -0.001228 $ O18
       14028  -0.429420 $ Si28
       14029  -0.022594 $ Si29
       14030  -0.015425 $ Si30
"""
matNum = matInsert('QuartzGlass', QuartzGlassStr, -2.20)

RadiochromicDyeFilmNylonBaseRDFNBStr = """\
c      Radiochromic Dye Film, Nylon Base  (RDF: NB)
c      AKA: None
c      rho: 1.080000 g/cc
m{}       1001  -0.101969 $ H1
       1002  -0.000023 $ H2
       6012  -0.646823 $ C12
       6013  -0.007581 $ C13
       7014  -0.098528 $ N14
       7015  -0.000386 $ N15
       8016  -0.144301 $ O16
       8017  -0.000058 $ O17
       8018  -0.000334 $ O18
"""
matNum = matInsert('RadiochromicDyeFilmNylonBaseRDFNB', RadiochromicDyeFilmNylonBaseRDFNBStr, -1.08)

RayonStr = """\
c      Rayon
c      AKA: None
c      rho: 1.160000 g/cc
m{}       1001  -0.062150 $ H1
       1002  -0.000014 $ H2
       6012  -0.439308 $ C12
       6013  -0.005149 $ C13
       8016  -0.492044 $ O16
       8017  -0.000199 $ O17
       8018  -0.001138 $ O18
"""
matNum = matInsert('Rayon', RayonStr, -1.16)

RockAverageof5typesStr = """\
c      Rock (Average of 5 types)
c      AKA: ['Aggregate', 'Gravel']
c      rho: 2.662000 g/cc
m{}       1001  -0.001369 $ H1
       6012  -0.058739 $ C12
       6013  -0.000688 $ C13
       8016  -0.449828 $ O16
       8017  -0.000182 $ O17
       8018  -0.001040 $ O18
       11023  -0.013988 $ Na23
       12024  -0.025757 $ Mg24
       12025  -0.003397 $ Mg25
       12026  -0.003889 $ Mg26
       13027  -0.058433 $ Al27
       14028  -0.191389 $ Si28
       14029  -0.010070 $ Si29
       14030  -0.006875 $ Si30
       15031  -0.000477 $ P31
       16032  -0.008566 $ S32
       16033  -0.000070 $ S33
       16034  -0.000407 $ S34
       16036  -0.000001 $ S36
       19039  -0.015820 $ K39
       19040  -0.000002 $ K40
       19041  -0.001200 $ K41
       20040  -0.105171 $ Ca40
       20042  -0.000737 $ Ca42
       20043  -0.000157 $ Ca43
       20044  -0.002489 $ Ca44
       20046  -0.000005 $ Ca46
       20048  -0.000243 $ Ca48
       22046  -0.000288 $ Ti46
       22047  -0.000266 $ Ti47
       22048  -0.002687 $ Ti48
       22049  -0.000201 $ Ti49
       22050  -0.000197 $ Ti50
       25055  -0.000454 $ Mn55
       26054  -0.001971 $ Fe54
       26056  -0.032091 $ Fe56
       26057  -0.000754 $ Fe57
       26058  -0.000102 $ Fe58
"""
matNum = matInsert('RockAverageof5types', RockAverageof5typesStr, -2.66)

RockBasaltStr = """\
c      Rock, Basalt
c      AKA: None
c      rho: 3.010000 g/cc
m{}       8016  -0.483336 $ O16
       8017  -0.000196 $ O17
       8018  -0.001118 $ O18
       11023  -0.027328 $ Na23
       12024  -0.003332 $ Mg24
       12025  -0.000439 $ Mg25
       12026  -0.000503 $ Mg26
       13027  -0.076189 $ Al27
       14028  -0.308833 $ Si28
       14029  -0.016250 $ Si29
       14030  -0.011093 $ Si30
       15031  -0.000523 $ P31
       19039  -0.031732 $ K39
       19040  -0.000004 $ K40
       19041  -0.002407 $ K41
       20040  -0.012552 $ Ca40
       20042  -0.000088 $ Ca42
       20043  -0.000019 $ Ca43
       20044  -0.000297 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000029 $ Ca48
       22046  -0.000142 $ Ti46
       22047  -0.000131 $ Ti47
       22048  -0.001326 $ Ti48
       22049  -0.000099 $ Ti49
       22050  -0.000097 $ Ti50
       25055  -0.000387 $ Mn55
       26054  -0.001217 $ Fe54
       26056  -0.019809 $ Fe56
       26057  -0.000466 $ Fe57
       26058  -0.000063 $ Fe58
"""
matNum = matInsert('RockBasalt', RockBasaltStr, -3.01)

RockGraniteStr = """\
c      Rock, Granite
c      AKA: None
c      rho: 2.690000 g/cc
m{}       8016  -0.441271 $ O16
       8017  -0.000179 $ O17
       8018  -0.001020 $ O18
       11023  -0.021700 $ Na23
       12024  -0.032644 $ Mg24
       12025  -0.004305 $ Mg25
       12026  -0.004929 $ Mg26
       13027  -0.083935 $ Al27
       14028  -0.213879 $ Si28
       14029  -0.011253 $ Si29
       14030  -0.007683 $ Si30
       15031  -0.001476 $ P31
       19039  -0.008290 $ K39
       19040  -0.000001 $ K40
       19041  -0.000629 $ K41
       20040  -0.066672 $ Ca40
       20042  -0.000467 $ Ca42
       20043  -0.000100 $ Ca43
       20044  -0.001578 $ Ca44
       20046  -0.000003 $ Ca46
       20048  -0.000154 $ Ca48
       22046  -0.000883 $ Ti46
       22047  -0.000814 $ Ti47
       22048  -0.008234 $ Ti48
       22049  -0.000617 $ Ti49
       22050  -0.000603 $ Ti50
       25055  -0.001541 $ Mn55
       26054  -0.004807 $ Fe54
       26056  -0.078247 $ Fe56
       26057  -0.001839 $ Fe57
       26058  -0.000249 $ Fe58
"""
matNum = matInsert('RockGranite', RockGraniteStr, -2.69)

RockLimestoneStr = """\
c      Rock, Limestone
c      AKA: None
c      rho: 2.600000 g/cc
m{}       6012  -0.112687 $ C12
       6013  -0.001321 $ C13
       8016  -0.480901 $ O16
       8017  -0.000195 $ O17
       8018  -0.001112 $ O18
       14028  -0.021471 $ Si28
       14029  -0.001130 $ Si29
       14030  -0.000771 $ Si30
       20040  -0.367715 $ Ca40
       20042  -0.002577 $ Ca42
       20043  -0.000550 $ Ca43
       20044  -0.008703 $ Ca44
       20046  -0.000017 $ Ca46
       20048  -0.000851 $ Ca48
"""
matNum = matInsert('RockLimestone', RockLimestoneStr, -2.60)

RockSandstoneStr = """\
c      Rock, Sandstone
c      AKA: None
c      rho: 2.370000 g/cc
m{}       6012  -0.000864 $ C12
       6013  -0.000010 $ C13
       8016  -0.513682 $ O16
       8017  -0.000208 $ O17
       8018  -0.001188 $ O18
       11023  -0.007316 $ Na23
       12024  -0.001263 $ Mg24
       12025  -0.000167 $ Mg25
       12026  -0.000191 $ Mg26
       13027  -0.020522 $ Al27
       14028  -0.386838 $ Si28
       14029  -0.020354 $ Si29
       14030  -0.013895 $ Si30
       15031  -0.000005 $ P31
       19039  -0.012555 $ K39
       19040  -0.000002 $ K40
       19041  -0.000953 $ K41
       20040  -0.008633 $ Ca40
       20042  -0.000060 $ Ca42
       20043  -0.000013 $ Ca43
       20044  -0.000204 $ Ca44
       20048  -0.000020 $ Ca48
       22046  -0.000016 $ Ti46
       22047  -0.000015 $ Ti47
       22048  -0.000148 $ Ti48
       22049  -0.000011 $ Ti49
       22050  -0.000011 $ Ti50
       26054  -0.000613 $ Fe54
       26056  -0.009982 $ Fe56
       26057  -0.000235 $ Fe57
       26058  -0.000032 $ Fe58
       25055  -0.000003 $ Mn55
"""
matNum = matInsert('RockSandstone', RockSandstoneStr, -2.37)

RockShaleStr = """\
c      Rock, Shale
c      AKA: None
c      rho: 2.600000 g/cc
m{}       1001  -0.001483 $ H1
       6012  -0.018671 $ C12
       6013  -0.000219 $ C13
       8016  -0.485083 $ O16
       8017  -0.000196 $ O17
       8018  -0.001122 $ O18
       11023  -0.004276 $ Na23
       12024  -0.004683 $ Mg24
       12025  -0.000618 $ Mg25
       12026  -0.000707 $ Mg26
       13027  -0.072577 $ Al27
       14028  -0.291600 $ Si28
       14029  -0.015343 $ Si29
       14030  -0.010474 $ Si30
       15031  -0.000064 $ P31
       16032  -0.009280 $ S32
       16033  -0.000076 $ S33
       16034  -0.000441 $ S34
       16036  -0.000001 $ S36
       19039  -0.015979 $ K39
       19040  -0.000002 $ K40
       19041  -0.001212 $ K41
       20040  -0.028490 $ Ca40
       20042  -0.000200 $ Ca42
       20043  -0.000043 $ Ca43
       20044  -0.000674 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000066 $ Ca48
       22046  -0.000208 $ Ti46
       22047  -0.000191 $ Ti47
       22048  -0.001937 $ Ti48
       22049  -0.000145 $ Ti49
       22050  -0.000142 $ Ti50
       26054  -0.001906 $ Fe54
       26056  -0.031031 $ Fe56
       26057  -0.000729 $ Fe57
       26058  -0.000099 $ Fe58
       25055  -0.000036 $ Mn55
"""
matNum = matInsert('RockShale', RockShaleStr, -2.60)

RubberButylStr = """\
c      Rubber, Butyl
c      AKA: Polyisobutylene
c      rho: 0.920000 g/cc
m{}       1001  -0.143686 $ H1
       1002  -0.000033 $ H2
       6012  -0.846366 $ C12
       6013  -0.009919 $ C13
"""
matNum = matInsert('RubberButyl', RubberButylStr, -0.92)

RubberNaturalStr = """\
c      Rubber, Natural
c      AKA: None
c      rho: 0.920000 g/cc
m{}       1001  -0.118351 $ H1
       1002  -0.000027 $ H2
       6012  -0.871415 $ C12
       6013  -0.010213 $ C13
"""
matNum = matInsert('RubberNatural', RubberNaturalStr, -0.92)

RubberNeopreneStr = """\
c      Rubber, Neoprene
c      AKA: ['Polychloroprene', 'Neoprene']
c      rho: 1.230000 g/cc
m{}       1001  -0.056911 $ H1
       1002  -0.000013 $ H2
       6012  -0.536365 $ C12
       6013  -0.006286 $ C13
       17035  -0.299235 $ Cl35
       17037  -0.101210 $ Cl37
"""
matNum = matInsert('RubberNeoprene', RubberNeopreneStr, -1.23)

RubberSiliconStr = """\
c      Rubber, Silicon
c      AKA: None
c      rho: 1.018500 g/cc
m{}       1001  -0.080695 $ H1
       1002  -0.000019 $ H2
       6012  -0.317447 $ C12
       6013  -0.003721 $ C13
       8016  -0.222939 $ O16
       8017  -0.000090 $ O17
       8018  -0.000516 $ O18
       14028  -0.344115 $ Si28
       14029  -0.018106 $ Si29
       14030  -0.012361 $ Si30
"""
matNum = matInsert('RubberSilicon', RubberSiliconStr, -1.02)

SaltWaterT0CStr = """\
c      Salt Water (T=0 C)
c      AKA: None
c      rho: 1.209865 g/cc
m{}       1001  -0.082469 $ H1
       1002  -0.000019 $ H2
       8016  -0.652935 $ O16
       8017  -0.000264 $ O17
       8018  -0.001510 $ O18
       11023  -0.103378 $ Na23
       17035  -0.119134 $ Cl35
       17037  -0.040295 $ Cl37
"""
matNum = matInsert('SaltWaterT0C', SaltWaterT0CStr, -1.21)

SaltWaterT20CStr = """\
c      Salt Water (T=20 C)
c      AKA: None
c      rho: 1.022394 g/cc
m{}       1001  -0.108086 $ H1
       1002  -0.000025 $ H2
       8016  -0.855745 $ O16
       8017  -0.000346 $ O17
       8018  -0.001979 $ O18
       11023  -0.013302 $ Na23
       17035  -0.015330 $ Cl35
       17037  -0.005185 $ Cl37
"""
matNum = matInsert('SaltWaterT20C', SaltWaterT20CStr, -1.02)

SandStr = """\
c      Sand
c      AKA: None
c      rho: 1.700000 g/cc
m{}       1001  -0.007831 $ H1
       1002  -0.000002 $ H2
       6012  -0.003321 $ C12
       6013  -0.000039 $ C13
       8016  -0.534700 $ O16
       8017  -0.000216 $ O17
       8018  -0.001236 $ O18
       11023  -0.017063 $ Na23
       13027  -0.034401 $ Al27
       14028  -0.335380 $ Si28
       14029  -0.017646 $ Si29
       14030  -0.012047 $ Si30
       19039  -0.010801 $ K39
       19040  -0.000001 $ K40
       19041  -0.000819 $ K41
       20040  -0.010838 $ Ca40
       20042  -0.000076 $ Ca42
       20043  -0.000016 $ Ca43
       20044  -0.000257 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000025 $ Ca48
       26054  -0.000750 $ Fe54
       26056  -0.012213 $ Fe56
       26057  -0.000287 $ Fe57
       26058  -0.000039 $ Fe58
"""
matNum = matInsert('Sand', SandStr, -1.70)

SeaWaterSimpleArtificialStr = """\
c      Sea Water, Simple Artificial
c      AKA: None
c      rho: 1.023343 g/cc
m{}       1001  -0.107946 $ H1
       1002  -0.000025 $ H2
       8016  -0.856439 $ O16
       8017  -0.000347 $ O17
       8018  -0.001981 $ O18
       11023  -0.010785 $ Na23
       12024  -0.001001 $ Mg24
       12025  -0.000132 $ Mg25
       12026  -0.000151 $ Mg26
       16032  -0.000858 $ S32
       16033  -0.000007 $ S33
       16034  -0.000041 $ S34
       17035  -0.014550 $ Cl35
       17037  -0.004921 $ Cl37
       19039  -0.000371 $ K39
       19041  -0.000028 $ K41
       20040  -0.000401 $ Ca40
       20042  -0.000003 $ Ca42
       20043  -0.000001 $ Ca43
       20044  -0.000009 $ Ca44
       20048  -0.000001 $ Ca48
"""
matNum = matInsert('SeaWaterSimpleArtificial', SeaWaterSimpleArtificialStr, -1.02)

SeaWaterStandardStr = """\
c      Sea Water, Standard
c      AKA: None
c      rho: 1.023343 g/cc
m{}       1001  -0.107938 $ H1
       1002  -0.000025 $ H2
       5010  -0.000001 $ B10
       5011  -0.000004 $ B11
       6012  -0.000024 $ C12
       8016  -0.856466 $ O16
       8017  -0.000347 $ O17
       8018  -0.001981 $ O18
       9019  -0.000001 $ F19
       11023  -0.010784 $ Na23
       12024  -0.001001 $ Mg24
       12025  -0.000132 $ Mg25
       12026  -0.000151 $ Mg26
       16032  -0.000857 $ S32
       16033  -0.000007 $ S33
       16034  -0.000041 $ S34
       17035  -0.014461 $ Cl35
       17037  -0.004891 $ Cl37
       19039  -0.000371 $ K39
       19041  -0.000028 $ K41
       20040  -0.000398 $ Ca40
       20042  -0.000003 $ Ca42
       20043  -0.000001 $ Ca43
       20044  -0.000009 $ Ca44
       20048  -0.000001 $ Ca48
       35079  -0.000034 $ Br79
       35081  -0.000033 $ Br81
       38086  -0.000001 $ Sr86
       38087  -0.000001 $ Sr87
       38088  -0.000007 $ Sr88
"""
matNum = matInsert('SeaWaterStandard', SeaWaterStandardStr, -1.02)

SepioliteStr = """\
c      Sepiolite
c      AKA: None
c      rho: 2.140000 g/cc
m{}       1001  -0.021777 $ H1
       1002  -0.000005 $ H2
       8016  -0.566490 $ O16
       8017  -0.000229 $ O17
       8018  -0.001310 $ O18
       12024  -0.116980 $ Mg24
       12025  -0.015427 $ Mg25
       12026  -0.017663 $ Mg26
       14028  -0.238962 $ Si28
       14029  -0.012573 $ Si29
       14030  -0.008584 $ Si30
"""
matNum = matInsert('Sepiolite', SepioliteStr, -2.14)

SilciateYttrium05atomCeriumStr = """\
c      Silciate Yttrium - 0.5 atom% Cerium
c      AKA: ['YSO']
c      rho: 4.500000 g/cc
m{}       39089  -0.423158 $ Y89
       16032  -0.217916 $ S32
       16033  -0.001774 $ S33
       16034  -0.010359 $ S34
       16036  -0.000026 $ S36
       8016  -0.343468 $ O16
       8017  -0.000139 $ O17
       8018  -0.000794 $ O18
       58136  -0.000004 $ Ce136
       58138  -0.000006 $ Ce138
       58140  -0.002072 $ Ce140
       58142  -0.000264 $ Ce142
"""
matNum = matInsert('SilciateYttrium05atomCerium', SilciateYttrium05atomCeriumStr, -4.50)

SiliconStr = """\
c      Silicon
c      AKA: None
c      rho: 2.330000 g/cc
m{}       14028  -0.918681 $ Si28
       14029  -0.048337 $ Si29
       14030  -0.032999 $ Si30
"""
matNum = matInsert('Silicon', SiliconStr, -2.33)

SiliconCarbidehexagonalStr = """\
c      Silicon Carbide (hexagonal)
c      AKA: ['Carborundum', 'Moisasanite']
c      rho: 3.210000 g/cc
m{}       6012  -0.296082 $ C12
       6013  -0.003470 $ C13
       14028  -0.643491 $ Si28
       14029  -0.033858 $ Si29
       14030  -0.023114 $ Si30
"""
matNum = matInsert('SiliconCarbidehexagonal', SiliconCarbidehexagonalStr, -3.21)

SiliconDioxideAlphaquartzStr = """\
c      Silicon Dioxide (Alpha-quartz)
c      AKA: Quartz
c      rho: 2.648000 g/cc
m{}       8016  -0.531126 $ O16
       8017  -0.000215 $ O17
       8018  -0.001228 $ O18
       14028  -0.429420 $ Si28
       14029  -0.022594 $ Si29
       14030  -0.015425 $ Si30
"""
matNum = matInsert('SiliconDioxideAlphaquartz', SiliconDioxideAlphaquartzStr, -2.65)

SiliconDioxideSilicaStr = """\
c      Silicon Dioxide (Silica)
c      AKA: Silica
c      rho: 2.320000 g/cc
m{}       8016  -0.531126 $ O16
       8017  -0.000215 $ O17
       8018  -0.001228 $ O18
       14028  -0.429420 $ Si28
       14029  -0.022594 $ Si29
       14030  -0.015425 $ Si30
"""
matNum = matInsert('SiliconDioxideSilica', SiliconDioxideSilicaStr, -2.32)

SilverStr = """\
c      Silver
c      AKA: None
c      rho: 10.500000 g/cc
m{}       47107  -0.513762 $ Ag107
       47109  -0.486238 $ Ag109
"""
matNum = matInsert('Silver', SilverStr, -10.50)

SkinICRPStr = """\
c      Skin (ICRP)
c      AKA: None
c      rho: 1.100000 g/cc
m{}       1001  -0.100561 $ H1
       1002  -0.000023 $ H2
       6012  -0.225608 $ C12
       6013  -0.002644 $ C13
       7014  -0.046239 $ N14
       7015  -0.000181 $ N15
       8016  -0.617325 $ O16
       8017  -0.000250 $ O17
       8018  -0.001428 $ O18
       11023  -0.000070 $ Na23
       12024  -0.000047 $ Mg24
       12025  -0.000006 $ Mg25
       12026  -0.000007 $ Mg26
       15031  -0.000330 $ P31
       16032  -0.001506 $ S32
       16033  -0.000012 $ S33
       16034  -0.000072 $ S34
       17035  -0.001995 $ Cl35
       17037  -0.000675 $ Cl37
       19039  -0.000790 $ K39
       19041  -0.000060 $ K41
       20040  -0.000145 $ Ca40
       20042  -0.000001 $ Ca42
       20044  -0.000003 $ Ca44
       26054  -0.000001 $ Fe54
       26056  -0.000009 $ Fe56
       30064  -0.000005 $ Zn64
       30066  -0.000003 $ Zn66
       30068  -0.000002 $ Zn68
"""
matNum = matInsert('SkinICRP', SkinICRPStr, -1.10)

SodiumStr = """\
c      Sodium
c      AKA: None
c      rho: 0.971000 g/cc
m{}       11023  -1.000000 $ Na23
"""
matNum = matInsert('Sodium', SodiumStr, -0.97)

SodiumBismuthTungstateNBWOStr = """\
c      Sodium Bismuth Tungstate (NBWO)
c      AKA: NBWO
c      rho: 7.570000 g/cc
m{}       8016  -0.175427 $ O16
       8017  -0.000071 $ O17
       8018  -0.000406 $ O18
       11023  -0.031595 $ Na23
       74180  -0.000594 $ W180
       74182  -0.132527 $ W182
       74183  -0.071959 $ W183
       74184  -0.154918 $ W184
       74186  -0.145309 $ W186
       83209  -0.287201 $ Bi209
"""
matNum = matInsert('SodiumBismuthTungstateNBWO', SodiumBismuthTungstateNBWOStr, -7.57)

SodiumChlorideStr = """\
c      Sodium Chloride
c      AKA: ['Salt', 'Rock Salt']
c      rho: 2.170000 g/cc
m{}       11023  -0.393382 $ Na23
       17035  -0.453317 $ Cl35
       17037  -0.153325 $ Cl37
"""
matNum = matInsert('SodiumChloride', SodiumChlorideStr, -2.17)

SodiumIodide02wtThaliumDopedStr = """\
c      Sodium Iodide - 0.2 wt% Thalium Doped
c      AKA: None
c      rho: 3.667000 g/cc
m{}       11023  -0.152956 $ Na23
       53127  -0.844324 $ I127
       81203  -0.000797 $ Tl203
       81205  -0.001923 $ Tl205
"""
matNum = matInsert('SodiumIodide02wtThaliumDoped', SodiumIodide02wtThaliumDopedStr, -3.67)

SodiumIodidewith08wtLithium010wtThaliumdopedStr = """\
c      Sodium Iodide with 0.8 wt% Lithium - 0.10 wt% Thalium doped
c      AKA: ['NaIL']
c      rho: 3.660000 g/cc
m{}       53127  -0.848388 $ I127
       11023  -0.142176 $ Na23
       3006  -0.002316 $ Li6
       3007  -0.005527 $ Li7
       81203  -0.000371 $ Tl203
       81205  -0.000894 $ Tl205
"""
matNum = matInsert('SodiumIodidewith08wtLithium010wtThaliumdoped', SodiumIodidewith08wtLithium010wtThaliumdopedStr, -3.66)

SodiumNitrateStr = """\
c      Sodium Nitrate
c      AKA: None
c      rho: 2.261000 g/cc
m{}       7014  -0.164152 $ N14
       7015  -0.000642 $ N15
       8016  -0.563189 $ O16
       8017  -0.000228 $ O17
       8018  -0.001302 $ O18
       11023  -0.270484 $ Na23
"""
matNum = matInsert('SodiumNitrate', SodiumNitrateStr, -2.26)

SodiumOxideStr = """\
c      Sodium Oxide
c      AKA: None
c      rho: 2.270000 g/cc
m{}       8016  -0.257443 $ O16
       8017  -0.000104 $ O17
       8018  -0.000595 $ O18
       11023  -0.741857 $ Na23
"""
matNum = matInsert('SodiumOxide', SodiumOxideStr, -2.27)

SteelBoronStainlessStr = """\
c      Steel, Boron Stainless
c      AKA: None
c      rho: 7.870000 g/cc
m{}       24050  -0.008122 $ Cr50
       24052  -0.162879 $ Cr52
       24053  -0.018825 $ Cr53
       24054  -0.004774 $ Cr54
       28058  -0.089507 $ Ni58
       28060  -0.035665 $ Ni60
       28061  -0.001576 $ Ni61
       28062  -0.005108 $ Ni62
       28064  -0.001343 $ Ni64
       5010  -0.002156 $ B10
       5011  -0.009541 $ B11
       6012  -0.000494 $ C12
       6013  -0.000006 $ C13
       7014  -0.000100 $ N14
       15031  -0.000020 $ P31
       16032  -0.000028 $ S32
       16034  -0.000001 $ S34
       27059  -0.000300 $ Co59
       14028  -0.006339 $ Si28
       14029  -0.000334 $ Si29
       14030  -0.000228 $ Si30
       25055  -0.019100 $ Mn55
       26054  -0.035768 $ Fe54
       26056  -0.582244 $ Fe56
       26057  -0.013687 $ Fe57
       26058  -0.001853 $ Fe58
"""
matNum = matInsert('SteelBoronStainless', SteelBoronStainlessStr, -7.87)

SteelHT9StainlessStr = """\
c      Steel, HT9 Stainless
c      AKA: None
c      rho: 7.874000 g/cc
m{}       6012  -0.002076 $ C12
       6013  -0.000024 $ C13
       7014  -0.000060 $ N14
       13027  -0.000300 $ Al27
       14028  -0.001929 $ Si28
       14029  -0.000102 $ Si29
       14030  -0.000069 $ Si30
       15031  -0.000080 $ P31
       16032  -0.000028 $ S32
       16034  -0.000001 $ S34
       22046  -0.000008 $ Ti46
       22047  -0.000007 $ Ti47
       22048  -0.000074 $ Ti48
       22049  -0.000006 $ Ti49
       22050  -0.000005 $ Ti50
       23050  -0.000008 $ V50
       23051  -0.003292 $ V51
       24050  -0.004925 $ Cr50
       24052  -0.098765 $ Cr52
       24053  -0.011415 $ Cr53
       24054  -0.002895 $ Cr54
       25055  -0.005000 $ Mn55
       26054  -0.048051 $ Fe54
       26056  -0.782204 $ Fe56
       26057  -0.018388 $ Fe57
       26058  -0.002490 $ Fe58
       28058  -0.003427 $ Ni58
       28060  -0.001366 $ Ni60
       28061  -0.000060 $ Ni61
       28062  -0.000196 $ Ni62
       28064  -0.000051 $ Ni64
       42092  -0.001434 $ Mo92
       42094  -0.000922 $ Mo94
       42095  -0.001614 $ Mo95
       42096  -0.001716 $ Mo96
       42097  -0.000999 $ Mo97
       42098  -0.002563 $ Mo98
       42100  -0.001053 $ Mo100
       74180  -0.000003 $ W180
       74182  -0.000629 $ W182
       74183  -0.000342 $ W183
       74184  -0.000736 $ W184
       74186  -0.000690 $ W186
"""
matNum = matInsert('SteelHT9Stainless', SteelHT9StainlessStr, -7.87)

SteelHighCarbon1095Str = """\
c      Steel, High Carbon (1095)
c      AKA: None
c      rho: 7.872000 g/cc
m{}       6012  -0.010181 $ C12
       6013  -0.000119 $ C13
       25055  -0.005000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000474 $ S32
       16033  -0.000004 $ S33
       16034  -0.000023 $ S34
       26054  -0.055541 $ Fe54
       26056  -0.904130 $ Fe56
       26057  -0.021254 $ Fe57
       26058  -0.002878 $ Fe58
"""
matNum = matInsert('SteelHighCarbon1095', SteelHighCarbon1095Str, -7.87)

SteelLowCarbon1008Str = """\
c      Steel, Low Carbon (1008)
c      AKA: None
c      rho: 7.872000 g/cc
m{}       6012  -0.000988 $ C12
       6013  -0.000012 $ C13
       25055  -0.005000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000474 $ S32
       16033  -0.000004 $ S33
       16034  -0.000023 $ S34
       26054  -0.056066 $ Fe54
       26056  -0.912676 $ Fe56
       26057  -0.021455 $ Fe57
       26058  -0.002905 $ Fe58
"""
matNum = matInsert('SteelLowCarbon1008', SteelLowCarbon1008Str, -7.87)

SteelMediumCarbon1045Str = """\
c      Steel, Medium Carbon (1045)
c      AKA: None
c      rho: 7.872000 g/cc
m{}       6012  -0.004942 $ C12
       6013  -0.000058 $ C13
       25055  -0.009000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000474 $ S32
       16033  -0.000004 $ S33
       16034  -0.000023 $ S34
       26054  -0.055615 $ Fe54
       26056  -0.905324 $ Fe56
       26057  -0.021282 $ Fe57
       26058  -0.002882 $ Fe58
"""
matNum = matInsert('SteelMediumCarbon1045', SteelMediumCarbon1045Str, -7.87)

SteelStainless202Str = """\
c      Steel, Stainless 202
c      AKA: None
c      rho: 7.860000 g/cc
m{}       6012  -0.001483 $ C12
       6013  -0.000017 $ C13
       25055  -0.087500 $ Mn55
       15031  -0.000600 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007513 $ Cr50
       24052  -0.150659 $ Cr52
       24053  -0.017412 $ Cr53
       24054  -0.004416 $ Cr54
       28058  -0.033599 $ Ni58
       28060  -0.013388 $ Ni60
       28061  -0.000592 $ Ni61
       28062  -0.001917 $ Ni62
       28064  -0.000504 $ Ni64
       7014  -0.002490 $ N14
       7015  -0.000010 $ N15
       26054  -0.037690 $ Fe54
       26056  -0.613536 $ Fe56
       26057  -0.014423 $ Fe57
       26058  -0.001953 $ Fe58
"""
matNum = matInsert('SteelStainless202', SteelStainless202Str, -7.86)

SteelStainless302Str = """\
c      Steel, Stainless 302
c      AKA: None
c      rho: 7.860000 g/cc
m{}       6012  -0.001483 $ C12
       6013  -0.000017 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007513 $ Cr50
       24052  -0.150659 $ Cr52
       24053  -0.017412 $ Cr53
       24054  -0.004416 $ Cr54
       28058  -0.060478 $ Ni58
       28060  -0.024098 $ Ni60
       28061  -0.001065 $ Ni61
       28062  -0.003451 $ Ni62
       28064  -0.000907 $ Ni64
       7014  -0.000996 $ N14
       7015  -0.000004 $ N15
       26054  -0.039336 $ Fe54
       26056  -0.640326 $ Fe56
       26057  -0.015052 $ Fe57
       26058  -0.002038 $ Fe58
"""
matNum = matInsert('SteelStainless302', SteelStainless302Str, -7.86)

SteelStainless304Str = """\
c      Steel, Stainless 304
c      AKA: None
c      rho: 8.030000 g/cc
m{}       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007930 $ Cr50
       24052  -0.159029 $ Cr52
       24053  -0.018380 $ Cr53
       24054  -0.004661 $ Cr54
       28058  -0.063838 $ Ni58
       28060  -0.025437 $ Ni60
       28061  -0.001124 $ Ni61
       28062  -0.003643 $ Ni62
       28064  -0.000958 $ Ni64
       26054  -0.038585 $ Fe54
       26056  -0.628103 $ Fe56
       26057  -0.014765 $ Fe57
       26058  -0.001999 $ Fe58
"""
matNum = matInsert('SteelStainless304', SteelStainless304Str, -8.03)

SteelStainless304LStr = """\
c      Steel, Stainless 304L
c      AKA: None
c      rho: 8.000000 g/cc
m{}       6012  -0.000297 $ C12
       6013  -0.000003 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007930 $ Cr50
       24052  -0.159029 $ Cr52
       24053  -0.018380 $ Cr53
       24054  -0.004661 $ Cr54
       28058  -0.067198 $ Ni58
       28060  -0.026776 $ Ni60
       28061  -0.001183 $ Ni61
       28062  -0.003835 $ Ni62
       28064  -0.001008 $ Ni64
       26054  -0.038331 $ Fe54
       26056  -0.623967 $ Fe56
       26057  -0.014668 $ Fe57
       26058  -0.001986 $ Fe58
"""
matNum = matInsert('SteelStainless304L', SteelStainless304LStr, -8.00)

SteelStainless316Str = """\
c      Steel, Stainless 316
c      AKA: None
c      rho: 8.000000 g/cc
m{}       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007095 $ Cr50
       24052  -0.142289 $ Cr52
       24053  -0.016445 $ Cr53
       24054  -0.004171 $ Cr54
       28058  -0.080637 $ Ni58
       28060  -0.032131 $ Ni60
       28061  -0.001420 $ Ni61
       28062  -0.004602 $ Ni62
       28064  -0.001210 $ Ni64
       42092  -0.003479 $ Mo92
       42094  -0.002239 $ Mo94
       42095  -0.003917 $ Mo95
       42096  -0.004166 $ Mo96
       42097  -0.002424 $ Mo97
       42098  -0.006222 $ Mo98
       42100  -0.002556 $ Mo100
       26054  -0.036891 $ Fe54
       26056  -0.600532 $ Fe56
       26057  -0.014117 $ Fe57
       26058  -0.001912 $ Fe58
"""
matNum = matInsert('SteelStainless316', SteelStainless316Str, -8.00)

SteelStainless316LStr = """\
c      Steel, Stainless 316L
c      AKA: None
c      rho: 8.000000 g/cc
m{}       6012  -0.000297 $ C12
       6013  -0.000003 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007095 $ Cr50
       24052  -0.142289 $ Cr52
       24053  -0.016445 $ Cr53
       24054  -0.004171 $ Cr54
       28058  -0.080637 $ Ni58
       28060  -0.032131 $ Ni60
       28061  -0.001420 $ Ni61
       28062  -0.004602 $ Ni62
       28064  -0.001210 $ Ni64
       42092  -0.003479 $ Mo92
       42094  -0.002239 $ Mo94
       42095  -0.003917 $ Mo95
       42096  -0.004166 $ Mo96
       42097  -0.002424 $ Mo97
       42098  -0.006222 $ Mo98
       42100  -0.002556 $ Mo100
       26054  -0.036919 $ Fe54
       26056  -0.600992 $ Fe56
       26057  -0.014128 $ Fe57
       26058  -0.001913 $ Fe58
"""
matNum = matInsert('SteelStainless316L', SteelStainless316LStr, -8.00)

SteelStainless321Str = """\
c      Steel, Stainless 321
c      AKA: None
c      rho: 8.000000 g/cc
m{}       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007513 $ Cr50
       24052  -0.150659 $ Cr52
       24053  -0.017412 $ Cr53
       24054  -0.004416 $ Cr54
       28058  -0.070558 $ Ni58
       28060  -0.028115 $ Ni60
       28061  -0.001243 $ Ni61
       28062  -0.004027 $ Ni62
       28064  -0.001058 $ Ni64
       26054  -0.038585 $ Fe54
       26056  -0.628103 $ Fe56
       26057  -0.014765 $ Fe57
       26058  -0.001999 $ Fe58
"""
matNum = matInsert('SteelStainless321', SteelStainless321Str, -8.00)

SteelStainless347Str = """\
c      Steel, Stainless 347
c      AKA: None
c      rho: 8.000000 g/cc
m{}       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       25055  -0.020000 $ Mn55
       15031  -0.000450 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007513 $ Cr50
       24052  -0.150659 $ Cr52
       24053  -0.017412 $ Cr53
       24054  -0.004416 $ Cr54
       28058  -0.070558 $ Ni58
       28060  -0.028115 $ Ni60
       28061  -0.001243 $ Ni61
       28062  -0.004027 $ Ni62
       28064  -0.001058 $ Ni64
       41093  -0.009500 $ Nb93
       26054  -0.038048 $ Fe54
       26056  -0.619372 $ Fe56
       26057  -0.014560 $ Fe57
       26058  -0.001972 $ Fe58
"""
matNum = matInsert('SteelStainless347', SteelStainless347Str, -8.00)

SteelStainless409Str = """\
c      Steel, Stainless 409
c      AKA: None
c      rho: 7.800000 g/cc
m{}       6012  -0.000297 $ C12
       6013  -0.000003 $ C13
       25055  -0.010000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000189 $ S32
       16033  -0.000002 $ S33
       16034  -0.000009 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.004633 $ Cr50
       24052  -0.092906 $ Cr52
       24053  -0.010738 $ Cr53
       24054  -0.002723 $ Cr54
       28058  -0.003360 $ Ni58
       28060  -0.001339 $ Ni60
       28061  -0.000059 $ Ni61
       28062  -0.000192 $ Ni62
       28064  -0.000050 $ Ni64
       7014  -0.000299 $ N14
       7015  -0.000001 $ N15
       22046  -0.000341 $ Ti46
       22047  -0.000314 $ Ti47
       22048  -0.003175 $ Ti48
       22049  -0.000238 $ Ti49
       22050  -0.000232 $ Ti50
       41093  -0.001700 $ Nb93
       26054  -0.048371 $ Fe54
       26056  -0.787414 $ Fe56
       26057  -0.018510 $ Fe57
       26058  -0.002507 $ Fe58
"""
matNum = matInsert('SteelStainless409', SteelStainless409Str, -7.80)

SteelStainless440AStr = """\
c      Steel, Stainless 440A
c      AKA: None
c      rho: 7.800000 g/cc
m{}       6012  -0.006672 $ C12
       6013  -0.000078 $ C13
       25055  -0.010000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007095 $ Cr50
       24052  -0.142289 $ Cr52
       24053  -0.016445 $ Cr53
       24054  -0.004171 $ Cr54
       42092  -0.001044 $ Mo92
       42094  -0.000672 $ Mo94
       42095  -0.001175 $ Mo95
       42096  -0.001250 $ Mo96
       42097  -0.000727 $ Mo97
       42098  -0.001867 $ Mo98
       42100  -0.000767 $ Mo100
       26054  -0.044885 $ Fe54
       26056  -0.730665 $ Fe56
       26057  -0.017176 $ Fe57
       26058  -0.002326 $ Fe58
"""
matNum = matInsert('SteelStainless440A', SteelStainless440AStr, -7.80)

SteelStainless440BStr = """\
c      Steel, Stainless 440B
c      AKA: None
c      rho: 7.800000 g/cc
m{}       6012  -0.008402 $ C12
       6013  -0.000098 $ C13
       25055  -0.010000 $ Mn55
       15031  -0.000400 $ P31
       16032  -0.000284 $ S32
       16033  -0.000002 $ S33
       16034  -0.000014 $ S34
       14028  -0.009187 $ Si28
       14029  -0.000483 $ Si29
       14030  -0.000330 $ Si30
       24050  -0.007095 $ Cr50
       24052  -0.142289 $ Cr52
       24053  -0.016445 $ Cr53
       24054  -0.004171 $ Cr54
       42092  -0.001044 $ Mo92
       42094  -0.000672 $ Mo94
       42095  -0.001175 $ Mo95
       42096  -0.001250 $ Mo96
       42097  -0.000727 $ Mo97
       42098  -0.001867 $ Mo98
       42100  -0.000767 $ Mo100
       26054  -0.044786 $ Fe54
       26056  -0.729057 $ Fe56
       26057  -0.017138 $ Fe57
       26058  -0.002321 $ Fe58
"""
matNum = matInsert('SteelStainless440B', SteelStainless440BStr, -7.80)

SteelStainless440CStr = """\
c      Steel, Stainless 440C
c      AKA: None
c      rho: 7.800000 g/cc
m{}       6012  -0.010602 $ C12
       6013  -0.000124 $ C13
       25055  -0.009978 $ Mn55
       15031  -0.000399 $ P31
       16032  -0.000283 $ S32
       16033  -0.000002 $ S33
       16034  -0.000013 $ S34
       14028  -0.009166 $ Si28
       14029  -0.000482 $ Si29
       14030  -0.000329 $ Si30
       24050  -0.007079 $ Cr50
       24052  -0.141970 $ Cr52
       24053  -0.016408 $ Cr53
       24054  -0.004161 $ Cr54
       42092  -0.001041 $ Mo92
       42094  -0.000670 $ Mo94
       42095  -0.001172 $ Mo95
       42096  -0.001247 $ Mo96
       42097  -0.000726 $ Mo97
       42098  -0.001862 $ Mo98
       42100  -0.000765 $ Mo100
       26054  -0.044686 $ Fe54
       26056  -0.727420 $ Fe56
       26057  -0.017100 $ Fe57
       26058  -0.002316 $ Fe58
"""
matNum = matInsert('SteelStainless440C', SteelStainless440CStr, -7.80)

SterotexStr = """\
c      Sterotex
c      AKA: None
c      rho: 0.862000 g/cc
m{}       1001  -0.124342 $ H1
       1002  -0.000029 $ H2
       6012  -0.759056 $ C12
       6013  -0.008896 $ C13
       8016  -0.107391 $ O16
       8017  -0.000043 $ O17
       8018  -0.000248 $ O18
"""
matNum = matInsert('Sterotex', SterotexStr, -0.86)

StilbenetransstilbeneisomerStr = """\
c      Stilbene (trans-stilbene isomer)
c      AKA: Trans-stilbene
c      rho: 0.970700 g/cc
m{}       1001  -0.067090 $ H1
       1002  -0.000015 $ H2
       6012  -0.922096 $ C12
       6013  -0.010807 $ C13
"""
matNum = matInsert('Stilbenetransstilbeneisomer', StilbenetransstilbeneisomerStr, -0.97)

StrontiumIodide25atomEuropiumdopedStr = """\
c      Strontium Iodide - 2.5 atom% Europium doped
c      AKA: None
c      rho: 4.590000 g/cc
m{}       38084  -0.001361 $ Sr84
       38086  -0.024529 $ Sr86
       38087  -0.017617 $ Sr87
       38088  -0.210214 $ Sr88
       53127  -0.734985 $ I127
       63151  -0.005358 $ Eu151
       63153  -0.005926 $ Eu153
"""
matNum = matInsert('StrontiumIodide25atomEuropiumdoped', StrontiumIodide25atomEuropiumdopedStr, -4.59)

SulfuricacidStr = """\
c      Sulfuric acid
c      AKA: None
c      rho: 1.840000 g/cc
m{}       1001  -0.020548 $ H1
       1002  -0.000005 $ H2
       16032  -0.309645 $ S32
       16033  -0.002521 $ S33
       16034  -0.014719 $ S34
       16036  -0.000037 $ S36
       8016  -0.650729 $ O16
       8017  -0.000263 $ O17
       8018  -0.001505 $ O18
"""
matNum = matInsert('Sulfuricacid', SulfuricacidStr, -1.84)

SulphurStr = """\
c      Sulphur
c      AKA: None
c      rho: 2.000000 g/cc
m{}       16032  -0.947073 $ S32
       16033  -0.007711 $ S33
       16034  -0.045019 $ S34
       16036  -0.000112 $ S36
"""
matNum = matInsert('Sulphur', SulphurStr, -2.00)

TLYCStr = """\
c      TLYC
c      AKA: None
c      rho: 4.580000 g/cc
m{}       81203  -0.167052 $ Tl203
       81205  -0.402777 $ Tl205
       3006  -0.000636 $ Li6
       3007  -0.009038 $ Li7
       39089  -0.123937 $ Y89
       17035  -0.221586 $ Cl35
       17037  -0.074947 $ Cl37
"""
matNum = matInsert('TLYC', TLYCStr, -4.58)

TantalumStr = """\
c      Tantalum
c      AKA: None
c      rho: 16.654000 g/cc
m{}       73180  -0.000119 $ Ta180
       73181  -0.999881 $ Ta181
"""
matNum = matInsert('Tantalum', TantalumStr, -16.65)

ThoriumStr = """\
c      Thorium
c      AKA: None
c      rho: 11.720000 g/cc
m{}       90232  -1.000002 $ Th232
"""
matNum = matInsert('Thorium', ThoriumStr, -11.72)

ThoriumDioxideStr = """\
c      Thorium Dioxide
c      AKA: None
c      rho: 9.700000 g/cc
m{}       8016  -0.120862 $ O16
       8017  -0.000049 $ O17
       8018  -0.000279 $ O18
       90232  -0.878811 $ Th232
"""
matNum = matInsert('ThoriumDioxide', ThoriumDioxideStr, -9.70)

TinStr = """\
c      Tin
c      AKA: None
c      rho: 7.310000 g/cc
m{}       50112  -0.009144 $ Sn112
       50114  -0.006333 $ Sn114
       50115  -0.003291 $ Sn115
       50116  -0.141960 $ Sn116
       50117  -0.075631 $ Sn117
       50118  -0.240551 $ Sn118
       50119  -0.086040 $ Sn119
       50120  -0.329072 $ Sn120
       50122  -0.047546 $ Sn122
       50124  -0.060434 $ Sn124
"""
matNum = matInsert('Tin', TinStr, -7.31)

TissueEquivalentMS20Str = """\
c      Tissue Equivalent, MS20
c      AKA: MS20
c      rho: 1.000000 g/cc
m{}       1001  -0.081171 $ H1
       1002  -0.000019 $ H2
       6012  -0.576690 $ C12
       6013  -0.006759 $ C13
       7014  -0.017728 $ N14
       7015  -0.000069 $ N15
       8016  -0.185876 $ O16
       8017  -0.000075 $ O17
       8018  -0.000430 $ O18
       12024  -0.101557 $ Mg24
       12025  -0.013393 $ Mg25
       12026  -0.015334 $ Mg26
       17035  -0.000673 $ Cl35
       17037  -0.000227 $ Cl37
"""
matNum = matInsert('TissueEquivalentMS20', TissueEquivalentMS20Str, -1.00)

TissueEquivalentGasmethanebasedTEGMBStr = """\
c      Tissue Equivalent-Gas, methane based  (TEG: MB)
c      AKA: TEG
c      rho: 0.001064 g/cc
m{}       1001  -0.101842 $ H1
       1002  -0.000023 $ H2
       6012  -0.450900 $ C12
       6013  -0.005285 $ C13
       7014  -0.035035 $ N14
       7015  -0.000137 $ N15
       8016  -0.405678 $ O16
       8017  -0.000164 $ O17
       8018  -0.000938 $ O18
"""
matNum = matInsert('TissueEquivalentGasmethanebasedTEGMB', TissueEquivalentGasmethanebasedTEGMBStr, -0.00)

TissueEquivalentGaspropanebasedTEGPBStr = """\
c      Tissue Equivalent-Gas, propane based  (TEG: PB)
c      AKA: TEG
c      rho: 0.001826 g/cc
m{}       1001  -0.102645 $ H1
       1002  -0.000024 $ H2
       6012  -0.562356 $ C12
       6013  -0.006591 $ C13
       7014  -0.034885 $ N14
       7015  -0.000137 $ N15
       8016  -0.292571 $ O16
       8017  -0.000118 $ O17
       8018  -0.000677 $ O18
"""
matNum = matInsert('TissueEquivalentGaspropanebasedTEGPB', TissueEquivalentGaspropanebasedTEGPBStr, -0.00)

TissueAdiposeICRPStr = """\
c      Tissue, Adipose (ICRP)
c      AKA: ['Adipose Tissue']
c      rho: 0.920000 g/cc
m{}       1001  -0.119445 $ H1
       1002  -0.000027 $ H2
       6012  -0.629865 $ C12
       6013  -0.007382 $ C13
       7014  -0.007939 $ N14
       7015  -0.000031 $ N15
       8016  -0.231703 $ O16
       8017  -0.000094 $ O17
       8018  -0.000536 $ O18
       11023  -0.000500 $ Na23
       12024  -0.000016 $ Mg24
       12025  -0.000002 $ Mg25
       12026  -0.000002 $ Mg26
       15031  -0.000160 $ P31
       16032  -0.000691 $ S32
       16033  -0.000006 $ S33
       16034  -0.000033 $ S34
       17035  -0.000889 $ Cl35
       17037  -0.000301 $ Cl37
       19039  -0.000297 $ K39
       19041  -0.000023 $ K41
       20040  -0.000019 $ Ca40
       26054  -0.000001 $ Fe54
       26056  -0.000018 $ Fe56
       30064  -0.000010 $ Zn64
       30066  -0.000006 $ Zn66
       30067  -0.000001 $ Zn67
       30068  -0.000004 $ Zn68
"""
matNum = matInsert('TissueAdiposeICRP', TissueAdiposeICRPStr, -0.92)

TissueBreastStr = """\
c      Tissue, Breast
c      AKA: ['Breast Tissue']
c      rho: 1.020000 g/cc
m{}       1001  -0.105972 $ H1
       1002  -0.000024 $ H2
       6012  -0.328158 $ C12
       6013  -0.003846 $ C13
       7014  -0.029883 $ N14
       7015  -0.000117 $ N15
       8016  -0.525572 $ O16
       8017  -0.000213 $ O17
       8018  -0.001215 $ O18
       11023  -0.001000 $ Na23
       15031  -0.001000 $ P31
       16032  -0.001894 $ S32
       16033  -0.000015 $ S33
       16034  -0.000090 $ S34
       17035  -0.000747 $ Cl35
       17037  -0.000253 $ Cl37
"""
matNum = matInsert('TissueBreast', TissueBreastStr, -1.02)

TissueLungICRPStr = """\
c      Tissue, Lung (ICRP)
c      AKA: Lung Tissue
c      rho: 1.050000 g/cc
m{}       1001  -0.101251 $ H1
       1002  -0.000023 $ H2
       6012  -0.101126 $ C12
       6013  -0.001185 $ C13
       7014  -0.028538 $ N14
       7015  -0.000112 $ N15
       8016  -0.755021 $ O16
       8017  -0.000306 $ O17
       8018  -0.001746 $ O18
       11023  -0.001840 $ Na23
       12024  -0.000569 $ Mg24
       12025  -0.000075 $ Mg25
       12026  -0.000086 $ Mg26
       15031  -0.000800 $ P31
       16032  -0.002131 $ S32
       16033  -0.000017 $ S33
       16034  -0.000101 $ S34
       17035  -0.001988 $ Cl35
       17037  -0.000672 $ Cl37
       19039  -0.001803 $ K39
       19041  -0.000137 $ K41
       20040  -0.000087 $ Ca40
       20042  -0.000001 $ Ca42
       20044  -0.000002 $ Ca44
       26054  -0.000021 $ Fe54
       26056  -0.000340 $ Fe56
       26057  -0.000008 $ Fe57
       26058  -0.000001 $ Fe58
       30064  -0.000005 $ Zn64
       30066  -0.000003 $ Zn66
       30068  -0.000002 $ Zn68
"""
matNum = matInsert('TissueLungICRP', TissueLungICRPStr, -1.05)

TissueOvaryStr = """\
c      Tissue, Ovary
c      AKA: Ovary Tissue
c      rho: 1.050000 g/cc
m{}       1001  -0.104972 $ H1
       1002  -0.000024 $ H2
       6012  -0.091924 $ C12
       6013  -0.001077 $ C13
       7014  -0.023906 $ N14
       7015  -0.000094 $ N15
       8016  -0.765919 $ O16
       8017  -0.000310 $ O17
       8018  -0.001771 $ O18
       11023  -0.002000 $ Na23
       15031  -0.002000 $ P31
       16032  -0.001894 $ S32
       16033  -0.000015 $ S33
       16034  -0.000090 $ S34
       17035  -0.001495 $ Cl35
       17037  -0.000506 $ Cl37
       19039  -0.001859 $ K39
       19041  -0.000141 $ K41
"""
matNum = matInsert('TissueOvary', TissueOvaryStr, -1.05)

TissueSoftICRPStr = """\
c      Tissue, Soft (ICRP)
c      AKA: Soft Tissue
c      rho: 1.000000 g/cc
m{}       1001  -0.104444 $ H1
       1002  -0.000024 $ H2
       6012  -0.229503 $ C12
       6013  -0.002690 $ C13
       7014  -0.024783 $ N14
       7015  -0.000097 $ N15
       8016  -0.628530 $ O16
       8017  -0.000254 $ O17
       8018  -0.001453 $ O18
       11023  -0.001130 $ Na23
       12024  -0.000101 $ Mg24
       12025  -0.000013 $ Mg25
       12026  -0.000015 $ Mg26
       15031  -0.001330 $ P31
       16032  -0.001885 $ S32
       16033  -0.000015 $ S33
       16034  -0.000090 $ S34
       17035  -0.001001 $ Cl35
       17037  -0.000339 $ Cl37
       19039  -0.001849 $ K39
       19041  -0.000140 $ K41
       20040  -0.000222 $ Ca40
       20042  -0.000002 $ Ca42
       20044  -0.000005 $ Ca44
       20048  -0.000001 $ Ca48
       26054  -0.000003 $ Fe54
       26056  -0.000046 $ Fe56
       26057  -0.000001 $ Fe57
       30064  -0.000014 $ Zn64
       30066  -0.000008 $ Zn66
       30067  -0.000001 $ Zn67
       30068  -0.000006 $ Zn68
"""
matNum = matInsert('TissueSoftICRP', TissueSoftICRPStr, -1.00)

TissueSoftICRUfourcomponentStr = """\
c      Tissue, Soft (ICRU four component)
c      AKA: None
c      rho: 1.000000 g/cc
m{}       1001  -0.101145 $ H1
       1002  -0.000023 $ H2
       6012  -0.109715 $ C12
       6013  -0.001286 $ C13
       7014  -0.025898 $ N14
       7015  -0.000101 $ N15
       8016  -0.759764 $ O16
       8017  -0.000308 $ O17
       8018  -0.001757 $ O18
"""
matNum = matInsert('TissueSoftICRUfourcomponent', TissueSoftICRUfourcomponentStr, -1.00)

TissueTestesICRPStr = """\
c      Tissue, Testes (ICRP)
c      AKA: Testes Tissue
c      rho: 1.040000 g/cc
m{}       1001  -0.104139 $ H1
       1002  -0.000024 $ H2
       6012  -0.091202 $ C12
       6013  -0.001069 $ C13
       7014  -0.019862 $ N14
       7015  -0.000078 $ N15
       8016  -0.771787 $ O16
       8017  -0.000312 $ O17
       8018  -0.001785 $ O18
       11023  -0.002260 $ Na23
       12024  -0.000086 $ Mg24
       12025  -0.000011 $ Mg25
       12026  -0.000013 $ Mg26
       15031  -0.001250 $ P31
       16032  -0.001383 $ S32
       16033  -0.000011 $ S33
       16034  -0.000066 $ S34
       17035  -0.001823 $ Cl35
       17037  -0.000617 $ Cl37
       19039  -0.001933 $ K39
       19041  -0.000147 $ K41
       20040  -0.000097 $ Ca40
       20042  -0.000001 $ Ca42
       20044  -0.000002 $ Ca44
       26054  -0.000001 $ Fe54
       26056  -0.000018 $ Fe56
       30064  -0.000010 $ Zn64
       30066  -0.000006 $ Zn66
       30067  -0.000001 $ Zn67
       30068  -0.000004 $ Zn68
"""
matNum = matInsert('TissueTestesICRP', TissueTestesICRPStr, -1.04)

TissueTestisICRUStr = """\
c      Tissue, Testis (ICRU)
c      AKA: None
c      rho: 1.040000 g/cc
m{}       1001  -0.105972 $ H1
       1002  -0.000024 $ H2
       6012  -0.097854 $ C12
       6013  -0.001147 $ C13
       7014  -0.019922 $ N14
       7015  -0.000078 $ N15
       8016  -0.763924 $ O16
       8017  -0.000309 $ O17
       8018  -0.001767 $ O18
       11023  -0.002000 $ Na23
       15031  -0.001000 $ P31
       16032  -0.001894 $ S32
       16033  -0.000015 $ S33
       16034  -0.000090 $ S34
       17035  -0.001495 $ Cl35
       17037  -0.000506 $ Cl37
       19039  -0.001859 $ K39
       19041  -0.000141 $ K41
"""
matNum = matInsert('TissueTestisICRU', TissueTestisICRUStr, -1.04)

TitaniumStr = """\
c      Titanium
c      AKA: None
c      rho: 4.540000 g/cc
m{}       22046  -0.079201 $ Ti46
       22047  -0.072977 $ Ti47
       22048  -0.738447 $ Ti48
       22049  -0.055322 $ Ti49
       22050  -0.054049 $ Ti50
"""
matNum = matInsert('Titanium', TitaniumStr, -4.54)

TitaniumDioxideStr = """\
c      Titanium Dioxide
c      AKA: None
c      rho: 4.260000 g/cc
m{}       8016  -0.399571 $ O16
       8017  -0.000162 $ O17
       8018  -0.000924 $ O18
       22046  -0.047468 $ Ti46
       22047  -0.043739 $ Ti47
       22048  -0.442583 $ Ti48
       22049  -0.033157 $ Ti49
       22050  -0.032394 $ Ti50
"""
matNum = matInsert('TitaniumDioxide', TitaniumDioxideStr, -4.26)

TitaniumHydrideStr = """\
c      Titanium Hydride
c      AKA: None
c      rho: 3.750000 g/cc
m{}       1001  -0.040403 $ H1
       1002  -0.000009 $ H2
       22046  -0.076000 $ Ti46
       22047  -0.070028 $ Ti47
       22048  -0.708603 $ Ti48
       22049  -0.053086 $ Ti49
       22050  -0.051864 $ Ti50
"""
matNum = matInsert('TitaniumHydride', TitaniumHydrideStr, -3.75)

Titaniumalloygrade5Str = """\
c      Titanium alloy, grade 5
c      AKA: None
c      rho: 4.430000 g/cc
m{}       6012  -0.000791 $ C12
       6013  -0.000009 $ C13
       8016  -0.001995 $ O16
       8017  -0.000001 $ O17
       8018  -0.000005 $ O18
       7014  -0.000498 $ N14
       7015  -0.000002 $ N15
       1001  -0.000150 $ H1
       26054  -0.000226 $ Fe54
       26056  -0.003676 $ Fe56
       26057  -0.000086 $ Fe57
       26058  -0.000012 $ Fe58
       13027  -0.061250 $ Al27
       23050  -0.000098 $ V50
       23051  -0.039902 $ V51
       22046  -0.070591 $ Ti46
       22047  -0.065045 $ Ti47
       22048  -0.658177 $ Ti48
       22049  -0.049308 $ Ti49
       22050  -0.048173 $ Ti50
"""
matNum = matInsert('Titaniumalloygrade5', Titaniumalloygrade5Str, -4.43)

TolueneStr = """\
c      Toluene
c      AKA: ['F1063', 'Methylbenzene']
c      rho: 0.866900 g/cc
m{}       1001  -0.087496 $ H1
       1002  -0.000020 $ H2
       6012  -0.901921 $ C12
       6013  -0.010571 $ C13
"""
matNum = matInsert('Toluene', TolueneStr, -0.87)

TributylBorateStr = """\
c      Tributyl Borate
c      AKA: None
c      rho: 0.856700 g/cc
m{}       1001  -0.118217 $ H1
       1002  -0.000027 $ H2
       5010  -0.008658 $ B10
       5011  -0.038315 $ B11
       6012  -0.618973 $ C12
       6013  -0.007254 $ C13
       8016  -0.207983 $ O16
       8017  -0.000084 $ O17
       8018  -0.000481 $ O18
"""
matNum = matInsert('TributylBorate', TributylBorateStr, -0.86)

TributylPhosphateTBPStr = """\
c      Tributyl Phosphate (TBP)
c      AKA: TBP
c      rho: 0.978000 g/cc
m{}       1001  -0.102166 $ H1
       1002  -0.000023 $ H2
       6012  -0.534930 $ C12
       6013  -0.006269 $ C13
       8016  -0.239658 $ O16
       8017  -0.000097 $ O17
       8018  -0.000554 $ O18
       15031  -0.116305 $ P31
"""
matNum = matInsert('TributylPhosphateTBP', TributylPhosphateTBPStr, -0.98)

TungstenStr = """\
c      Tungsten
c      AKA: None
c      rho: 19.300000 g/cc
m{}       74180  -0.001175 $ W180
       74182  -0.262273 $ W182
       74183  -0.142407 $ W183
       74184  -0.306585 $ W184
       74186  -0.287570 $ W186
"""
matNum = matInsert('Tungsten', TungstenStr, -19.30)

UraniumCarbideStr = """\
c      Uranium Carbide
c      AKA: None
c      rho: 13.630000 g/cc
m{}       6012  -0.047492 $ C12
       6013  -0.000557 $ C13
       92234  -0.000254 $ U234
       92235  -0.028559 $ U235
       92236  -0.000131 $ U236
       92238  -0.923007 $ U238
"""
matNum = matInsert('UraniumCarbide', UraniumCarbideStr, -13.63)

UraniumDicarbideStr = """\
c      Uranium Dicarbide
c      AKA: None
c      rho: 11.280000 g/cc
m{}       6012  -0.090630 $ C12
       6013  -0.001062 $ C13
       92234  -0.000243 $ U234
       92235  -0.027249 $ U235
       92236  -0.000125 $ U236
       92238  -0.880692 $ U238
"""
matNum = matInsert('UraniumDicarbide', UraniumDicarbideStr, -11.28)

UraniumDioxideStr = """\
c      Uranium Dioxide
c      AKA: None
c      rho: 10.960000 g/cc
m{}       8016  -0.118212 $ O16
       8017  -0.000048 $ O17
       8018  -0.000273 $ O18
       92234  -0.000235 $ U234
       92235  -0.026444 $ U235
       92236  -0.000122 $ U236
       92238  -0.854666 $ U238
"""
matNum = matInsert('UraniumDioxide', UraniumDioxideStr, -10.96)

UraniumHexafluorideStr = """\
c      Uranium Hexafluoride
c      AKA: None
c      rho: 5.090000 g/cc
m{}       9019  -0.323884 $ F19
       92234  -0.000181 $ U234
       92235  -0.020283 $ U235
       92236  -0.000093 $ U236
       92238  -0.655559 $ U238
"""
matNum = matInsert('UraniumHexafluoride', UraniumHexafluorideStr, -5.09)

UraniumHydrideStr = """\
c      Uranium Hydride
c      AKA: None
c      rho: 11.100000 g/cc
m{}       1001  -0.012545 $ H1
       1002  -0.000003 $ H2
       92234  -0.000264 $ U234
       92235  -0.029624 $ U235
       92236  -0.000136 $ U236
       92238  -0.957428 $ U238
"""
matNum = matInsert('UraniumHydride', UraniumHydrideStr, -11.10)

UraniumNitrideStr = """\
c      Uranium Nitride
c      AKA: None
c      rho: 14.310000 g/cc
m{}       7014  -0.055373 $ N14
       7015  -0.000217 $ N15
       92234  -0.000252 $ U234
       92235  -0.028332 $ U235
       92236  -0.000130 $ U236
       92238  -0.915695 $ U238
"""
matNum = matInsert('UraniumNitride', UraniumNitrideStr, -14.31)

UraniumOxideStr = """\
c      Uranium Oxide
c      AKA: ['Yellowcake', 'Triuranium Octoxide']
c      rho: 8.380000 g/cc
m{}       8016  -0.151625 $ O16
       8017  -0.000061 $ O17
       8018  -0.000351 $ O18
       92234  -0.000226 $ U234
       92235  -0.025439 $ U235
       92236  -0.000117 $ U236
       92238  -0.822181 $ U238
"""
matNum = matInsert('UraniumOxide', UraniumOxideStr, -8.38)

UraniumTetrafluorideStr = """\
c      Uranium Tetrafluoride
c      AKA: None
c      rho: 6.700000 g/cc
m{}       9019  -0.242055 $ F19
       92234  -0.000202 $ U234
       92235  -0.022738 $ U235
       92236  -0.000105 $ U236
       92238  -0.734900 $ U238
"""
matNum = matInsert('UraniumTetrafluoride', UraniumTetrafluorideStr, -6.70)

UraniumTrioxideStr = """\
c      Uranium Trioxide
c      AKA: None
c      rho: 7.290000 g/cc
m{}       8016  -0.167397 $ O16
       8017  -0.000068 $ O17
       8018  -0.000387 $ O18
       92234  -0.000222 $ U234
       92235  -0.024964 $ U235
       92236  -0.000115 $ U236
       92238  -0.806847 $ U238
"""
matNum = matInsert('UraniumTrioxide', UraniumTrioxideStr, -7.29)

UraniumDepletedTypicalStr = """\
c      Uranium, Depleted, Typical
c      AKA: ['Depleted Uranium', 'DU']
c      rho: 18.951157 g/cc
m{}       92234  -0.000005 $ U-234
       92235  -0.002500 $ U-235
       92238  -0.997495 $ U-238
"""
matNum = matInsert('UraniumDepletedTypical', UraniumDepletedTypicalStr, -18.95)

UraniumEnrichedTypicalCommercialStr = """\
c      Uranium, Enriched, Typical Commercial
c      AKA: ['Low Enriched Uranium (LEU)', 'Commercial Grade', 'Reactor Grade']
c      rho: 18.944492 g/cc
m{}       92234  -0.000305 $ U-234
       92235  -0.029600 $ U-235
       92238  -0.970095 $ U-238
"""
matNum = matInsert('UraniumEnrichedTypicalCommercial', UraniumEnrichedTypicalCommercialStr, -18.94)

UraniumHEUHealthPhysicsSocietyStr = """\
c      Uranium, HEU, Health Physics Society
c      AKA: Higly Enriched Uranium (HEU)
c      rho: 18.724868 g/cc
m{}       92234  -0.010530 $ U-234
       92235  -0.931740 $ U-235
       92236  -0.002060 $ U-236
       92238  -0.055670 $ U-238
"""
matNum = matInsert('UraniumHEUHealthPhysicsSociety', UraniumHEUHealthPhysicsSocietyStr, -18.72)

UraniumHEURussianAverageStr = """\
c      Uranium, HEU, Russian Average
c      AKA: Higly Enriched Uranium (HEU)
c      rho: 18.732854 g/cc
m{}       92234  -0.009670 $ U-234
       92235  -0.898000 $ U-235
       92236  -0.003810 $ U-236
       92238  -0.088520 $ U-238
"""
matNum = matInsert('UraniumHEURussianAverage', UraniumHEURussianAverageStr, -18.73)

UraniumHEUUSAverageStr = """\
c      Uranium, HEU, US Average
c      AKA: Higly Enriched Uranium (HEU)
c      rho: 18.724760 g/cc
m{}       92234  -0.009800 $ U-234
       92235  -0.931550 $ U-235
       92236  -0.004500 $ U-236
       92238  -0.054150 $ U-238
"""
matNum = matInsert('UraniumHEUUSAverage', UraniumHEUUSAverageStr, -18.72)

UraniumLowEnrichedLEUStr = """\
c      Uranium, Low Enriched (LEU)
c      AKA: None
c      rho: 18.944386 g/cc
m{}       92234  -0.000267 $ U-234
       92235  -0.030000 $ U-235
       92236  -0.000138 $ U-236
       92238  -0.969595 $ U-238
"""
matNum = matInsert('UraniumLowEnrichedLEU', UraniumLowEnrichedLEUStr, -18.94)

UraniumNaturalNUStr = """\
c      Uranium, Natural (NU)
c      AKA: NU
c      rho: 18.950000 g/cc
m{}       92234  -0.000057 $ U-234
       92235  -0.007204 $ U-235
       92238  -0.992739 $ U-238
"""
matNum = matInsert('UraniumNaturalNU', UraniumNaturalNUStr, -18.95)

UraniumPlutoniumMixedOxideMOXStr = """\
c      Uranium-Plutonium, Mixed Oxide (MOX)
c      AKA: None
c      rho: 11.000000 g/cc
m{}       8016  -0.118141 $ O16
       8017  -0.000048 $ O17
       8018  -0.000273 $ O18
       94238  -0.001030 $ Pu-238
       94239  -0.022532 $ Pu-239
       94240  -0.010751 $ Pu-240
       94241  -0.003913 $ Pu-241
       94242  -0.002966 $ Pu-242
       92234  -0.000010 $ U-234
       92235  -0.002101 $ U-235
       92238  -0.838236 $ U-238
"""
matNum = matInsert('UraniumPlutoniumMixedOxideMOX', UraniumPlutoniumMixedOxideMOXStr, -11.00)

UranylFluorideStr = """\
c      Uranyl Fluoride
c      AKA: None
c      rho: 6.370000 g/cc
m{}       8016  -0.103626 $ O16
       8017  -0.000042 $ O17
       8018  -0.000240 $ O18
       9019  -0.123385 $ F19
       92234  -0.000206 $ U234
       92235  -0.023181 $ U235
       92236  -0.000107 $ U236
       92238  -0.749213 $ U238
"""
matNum = matInsert('UranylFluoride', UranylFluorideStr, -6.37)

UranylNitrateStr = """\
c      Uranyl Nitrate
c      AKA: None
c      rho: 2.810000 g/cc
m{}       7014  -0.070829 $ N14
       7015  -0.000277 $ N15
       8016  -0.324008 $ O16
       8017  -0.000131 $ O17
       8018  -0.000749 $ O18
       92234  -0.000161 $ U234
       92235  -0.018120 $ U235
       92236  -0.000083 $ U236
       92238  -0.585640 $ U238
"""
matNum = matInsert('UranylNitrate', UranylNitrateStr, -2.81)

VermiculiteExfoliatedStr = """\
c      Vermiculite, Exfoliated
c      AKA: None
c      rho: 0.085000 g/cc
m{}       1001  -0.011832 $ H1
       1002  -0.000003 $ H2
       8016  -0.495011 $ O16
       8017  -0.000200 $ O17
       8018  -0.001145 $ O18
       12024  -0.103970 $ Mg24
       12025  -0.013712 $ Mg25
       12026  -0.015699 $ Mg26
       13027  -0.063151 $ Al27
       14028  -0.174244 $ Si28
       14029  -0.009168 $ Si29
       14030  -0.006259 $ Si30
       19039  -0.020138 $ K39
       19040  -0.000003 $ K40
       19041  -0.001528 $ K41
       20040  -0.015807 $ Ca40
       20042  -0.000111 $ Ca42
       20043  -0.000024 $ Ca43
       20044  -0.000374 $ Ca44
       20046  -0.000001 $ Ca46
       20048  -0.000037 $ Ca48
       22046  -0.000780 $ Ti46
       22047  -0.000719 $ Ti47
       22048  -0.007277 $ Ti48
       22049  -0.000545 $ Ti49
       22050  -0.000533 $ Ti50
       26054  -0.003259 $ Fe54
       26056  -0.053057 $ Fe56
       26057  -0.001247 $ Fe57
       26058  -0.000169 $ Fe58
"""
matNum = matInsert('VermiculiteExfoliated', VermiculiteExfoliatedStr, -0.09)

VitonFluoroelastomerStr = """\
c      Viton Fluoroelastomer
c      AKA: None
c      rho: 1.800000 g/cc
m{}       1001  -0.009415 $ H1
       1002  -0.000002 $ H2
       6012  -0.277308 $ C12
       6013  -0.003250 $ C13
       9019  -0.710028 $ F19
"""
matNum = matInsert('VitonFluoroelastomer', VitonFluoroelastomerStr, -1.80)

WaterHeavyStr = """\
c      Water, Heavy
c      AKA: ['Deuterium Oxide', 'Heavy Water']
c      rho: 1.104400 g/cc
m{}       1002  -0.201133 $ H2
       8016  -0.796703 $ O16
       8017  -0.000323 $ O17
       8018  -0.001842 $ O18
"""
matNum = matInsert('WaterHeavy', WaterHeavyStr, -1.10)

WaterLiquidStr = """\
c      Water, Liquid
c      AKA: None
c      rho: 0.997000 g/cc
m{}       1001  -0.111872 $ H1
       1002  -0.000026 $ H2
       8016  -0.885692 $ O16
       8017  -0.000359 $ O17
       8018  -0.002048 $ O18
"""
matNum = matInsert('WaterLiquid', WaterLiquidStr, -1.00)

WaterVaporStr = """\
c      Water, Vapor
c      AKA: None
c      rho: 0.000756 g/cc
m{}       1001  -0.111872 $ H1
       1002  -0.000026 $ H2
       8016  -0.885692 $ O16
       8017  -0.000359 $ O17
       8018  -0.002048 $ O18
"""
matNum = matInsert('WaterVapor', WaterVaporStr, -0.00)

WaxM3Str = """\
c      Wax, M3
c      AKA: M3 Wax
c      rho: 1.050000 g/cc
m{}       1001  -0.114288 $ H1
       1002  -0.000026 $ H2
       6012  -0.648234 $ C12
       6013  -0.007597 $ C13
       8016  -0.091933 $ O16
       8017  -0.000037 $ O17
       8018  -0.000213 $ O18
       12024  -0.105069 $ Mg24
       12025  -0.013857 $ Mg25
       12026  -0.015865 $ Mg26
       20040  -0.002787 $ Ca40
       20042  -0.000020 $ Ca42
       20043  -0.000004 $ Ca43
       20044  -0.000066 $ Ca44
       20048  -0.000006 $ Ca48
"""
matNum = matInsert('WaxM3', WaxM3Str, -1.05)

WaxMixDStr = """\
c      Wax, Mix D
c      AKA: None
c      rho: 0.990000 g/cc
m{}       1001  -0.134005 $ H1
       1002  -0.000031 $ H2
       6012  -0.768957 $ C12
       6013  -0.009012 $ C13
       8016  -0.034925 $ O16
       8017  -0.000014 $ O17
       8018  -0.000081 $ O18
       12024  -0.030083 $ Mg24
       12025  -0.003967 $ Mg25
       12026  -0.004542 $ Mg26
       22046  -0.001139 $ Ti46
       22047  -0.001050 $ Ti47
       22048  -0.010623 $ Ti48
       22049  -0.000796 $ Ti49
       22050  -0.000778 $ Ti50
"""
matNum = matInsert('WaxMixD', WaxMixDStr, -0.99)

WaxParaffinStr = """\
c      Wax, Paraffin
c      AKA: ['Paraffin', 'Pentacosane']
c      rho: 0.812000 g/cc
m{}       1001  -0.148579 $ H1
       1002  -0.000034 $ H2
       6012  -0.841528 $ C12
       6013  -0.009863 $ C13
"""
matNum = matInsert('WaxParaffin', WaxParaffinStr, -0.81)

WoodSouthernPineStr = """\
c      Wood (Southern Pine)
c      AKA: Plywood
c      rho: 0.640000 g/cc
m{}       1001  -0.059626 $ H1
       1002  -0.000014 $ H2
       6012  -0.491266 $ C12
       6013  -0.005758 $ C13
       7014  -0.004951 $ N14
       7015  -0.000019 $ N15
       8016  -0.426277 $ O16
       8017  -0.000173 $ O17
       8018  -0.000986 $ O18
       12024  -0.001550 $ Mg24
       12025  -0.000204 $ Mg25
       12026  -0.000234 $ Mg26
       16032  -0.004707 $ S32
       16033  -0.000038 $ S33
       16034  -0.000224 $ S34
       16036  -0.000001 $ S36
       19039  -0.001848 $ K39
       19041  -0.000140 $ K41
       20040  -0.001922 $ Ca40
       20042  -0.000013 $ Ca42
       20043  -0.000003 $ Ca43
       20044  -0.000045 $ Ca44
       20048  -0.000004 $ Ca48
"""
matNum = matInsert('WoodSouthernPine', WoodSouthernPineStr, -0.64)

XenonStr = """\
c      Xenon
c      AKA: None
c      rho: 0.005485 g/cc
m{}       54124  -0.000898 $ Xe124
       54126  -0.000853 $ Xe126
       54128  -0.018609 $ Xe128
       54129  -0.259204 $ Xe129
       54130  -0.040279 $ Xe130
       54131  -0.211697 $ Xe131
       54132  -0.270339 $ Xe132
       54134  -0.106433 $ Xe134
       54136  -0.091686 $ Xe136
"""
matNum = matInsert('Xenon', XenonStr, -0.01)

YttriumAluminumOxide1atomCeriumStr = """\
c      Yttrium Aluminum Oxide - 1 atom% Cerium
c      AKA: ['YAG']
c      rho: 4.560000 g/cc
m{}       8016  -0.221757 $ O16
       8017  -0.000090 $ O17
       8018  -0.000513 $ O18
       13027  -0.468737 $ Al27
       39089  -0.308903 $ Y89
"""
matNum = matInsert('YttriumAluminumOxide1atomCerium', YttriumAluminumOxide1atomCeriumStr, -4.56)

YttriumAluminumPerovslite05atomCeriumStr = """\
c      Yttrium Aluminum Perovslite - 0.5 atom% Cerium
c      AKA: ['YSO']
c      rho: 5.400000 g/cc
m{}       39089  -0.469481 $ Y89
       13027  -0.427441 $ Al27
       8016  -0.084258 $ O16
       8017  -0.000034 $ O17
       8018  -0.000195 $ O18
       58136  -0.000033 $ Ce136
       58138  -0.000046 $ Ce138
       58140  -0.016419 $ Ce140
       58142  -0.002093 $ Ce142
"""
matNum = matInsert('YttriumAluminumPerovslite05atomCerium', YttriumAluminumPerovslite05atomCeriumStr, -5.40)

ZeoliteNatroliteStr = """\
c      Zeolite (Natrolite)
c      AKA: Natrolite
c      rho: 2.250000 g/cc
m{}       1001  -0.010601 $ H1
       1002  -0.000002 $ H2
       8016  -0.503581 $ O16
       8017  -0.000204 $ O17
       8018  -0.001165 $ O18
       11023  -0.120928 $ Na23
       13027  -0.141925 $ Al27
       14028  -0.203574 $ Si28
       14029  -0.010711 $ Si29
       14030  -0.007312 $ Si30
"""
matNum = matInsert('ZeoliteNatrolite', ZeoliteNatroliteStr, -2.25)

ZincStr = """\
c      Zinc
c      AKA: None
c      rho: 7.133000 g/cc
m{}       30064  -0.480789 $ Zn64
       30066  -0.279616 $ Zn66
       30067  -0.041356 $ Zn67
       30068  -0.191681 $ Zn68
       30070  -0.006524 $ Zn70
"""
matNum = matInsert('Zinc', ZincStr, -7.13)

ZincSelenideStr = """\
c      Zinc Selenide
c      AKA: None
c      rho: 5.270000 g/cc
m{}       30064  -0.217761 $ Zn64
       30066  -0.126645 $ Zn66
       30067  -0.018731 $ Zn67
       30068  -0.086817 $ Zn68
       30070  -0.002955 $ Zn70
       34074  -0.004558 $ Se74
       34076  -0.049280 $ Se76
       34077  -0.040658 $ Se77
       34078  -0.128305 $ Se78
       34080  -0.274654 $ Se80
       34082  -0.049541 $ Se82
"""
matNum = matInsert('ZincSelenide', ZincSelenideStr, -5.27)

ZincSulfideStr = """\
c      Zinc Sulfide
c      AKA: None
c      rho: 4.090000 g/cc
m{}       16032  -0.311658 $ S32
       16033  -0.002538 $ S33
       16034  -0.014814 $ S34
       16036  -0.000037 $ S36
       30064  -0.322573 $ Zn64
       30066  -0.187601 $ Zn66
       30067  -0.027747 $ Zn67
       30068  -0.128604 $ Zn68
       30070  -0.004377 $ Zn70
"""
matNum = matInsert('ZincSulfide', ZincSulfideStr, -4.09)

Zircaloy2Str = """\
c      Zircaloy-2
c      AKA: None
c      rho: 6.560000 g/cc
m{}       8016  -0.001194 $ O16
       8018  -0.000003 $ O18
       24050  -0.000042 $ Cr50
       24052  -0.000834 $ Cr52
       24053  -0.000096 $ Cr53
       24054  -0.000024 $ Cr54
       26054  -0.000056 $ Fe54
       26056  -0.000916 $ Fe56
       26057  -0.000022 $ Fe57
       26058  -0.000003 $ Fe58
       28058  -0.000335 $ Ni58
       28060  -0.000134 $ Ni60
       28061  -0.000006 $ Ni61
       28062  -0.000019 $ Ni62
       28064  -0.000005 $ Ni64
       40090  -0.498109 $ Zr90
       40091  -0.109835 $ Zr91
       40092  -0.169730 $ Zr92
       40094  -0.175752 $ Zr94
       40096  -0.028918 $ Zr96
       50112  -0.000128 $ Sn112
       50114  -0.000088 $ Sn114
       50115  -0.000046 $ Sn115
       50116  -0.001982 $ Sn116
       50117  -0.001056 $ Sn117
       50118  -0.003359 $ Sn118
       50119  -0.001201 $ Sn119
       50120  -0.004595 $ Sn120
       50122  -0.000664 $ Sn122
       50124  -0.000844 $ Sn124
"""
matNum = matInsert('Zircaloy2', Zircaloy2Str, -6.56)

Zircaloy4Str = """\
c      Zircaloy-4
c      AKA: None
c      rho: 6.560000 g/cc
m{}       8016  -0.001193 $ O16
       8018  -0.000003 $ O18
       24050  -0.000042 $ Cr50
       24052  -0.000834 $ Cr52
       24053  -0.000096 $ Cr53
       24054  -0.000024 $ Cr54
       26054  -0.000113 $ Fe54
       26056  -0.001832 $ Fe56
       26057  -0.000043 $ Fe57
       26058  -0.000006 $ Fe58
       40090  -0.497860 $ Zr90
       40091  -0.109780 $ Zr91
       40092  -0.169646 $ Zr92
       40094  -0.175665 $ Zr94
       40096  -0.028904 $ Zr96
       50112  -0.000128 $ Sn112
       50114  -0.000088 $ Sn114
       50115  -0.000046 $ Sn115
       50116  -0.001981 $ Sn116
       50117  -0.001055 $ Sn117
       50118  -0.003357 $ Sn118
       50119  -0.001201 $ Sn119
       50120  -0.004592 $ Sn120
       50122  -0.000664 $ Sn122
       50124  -0.000843 $ Sn124
"""
matNum = matInsert('Zircaloy4', Zircaloy4Str, -6.56)

ZirconiumStr = """\
c      Zirconium
c      AKA: None
c      rho: 6.520000 g/cc
m{}       40090  -0.507059 $ Zr90
       40091  -0.111808 $ Zr91
       40092  -0.172780 $ Zr92
       40094  -0.178910 $ Zr94
       40096  -0.029438 $ Zr96
"""
matNum = matInsert('Zirconium', ZirconiumStr, -6.52)

ZirconiumHydrideZr5H8Str = """\
c      Zirconium Hydride (Zr5H8)
c      AKA: None
c      rho: 5.610000 g/cc
m{}       1001  -0.017367 $ H1
       1002  -0.000004 $ H2
       40090  -0.498251 $ Zr90
       40091  -0.109866 $ Zr91
       40092  -0.169779 $ Zr92
       40094  -0.175802 $ Zr94
       40096  -0.028926 $ Zr96
"""
matNum = matInsert('ZirconiumHydrideZr5H8', ZirconiumHydrideZr5H8Str, -5.61)

ZirconiumHydrideZrH2Str = """\
c      Zirconium Hydride (ZrH2)
c      AKA: None
c      rho: 5.600000 g/cc
m{}       1001  -0.021615 $ H1
       1002  -0.000005 $ H2
       40090  -0.496096 $ Zr90
       40091  -0.109391 $ Zr91
       40092  -0.169045 $ Zr92
       40094  -0.175042 $ Zr94
       40096  -0.028801 $ Zr96
"""
matNum = matInsert('ZirconiumHydrideZrH2', ZirconiumHydrideZrH2Str, -5.60)

ZnSAgLiF95wt6LiPHOSPHORPOWDERNeutronDetectorsStr = """\
c      ZnS(Ag):LiF 95wt% 6Li PHOSPHOR POWDER Neutron Detectors
c      AKA: None
c      rho: 4.090000 g/cc
m{}       30064  -0.311554 $ Zn64
       30066  -0.181193 $ Zn66
       30067  -0.026799 $ Zn67
       30068  -0.124211 $ Zn68
       30070  -0.004228 $ Zn70
       16032  -0.301011 $ S32
       16033  -0.002451 $ S33
       16034  -0.014308 $ S34
       16036  -0.000036 $ S36
       9019  -0.025901 $ F19
       3006  -0.007847 $ Li6
       3007  -0.000413 $ Li7
"""
matNum = matInsert('ZnSAgLiF95wt6LiPHOSPHORPOWDERNeutronDetectors', ZnSAgLiF95wt6LiPHOSPHORPOWDERNeutronDetectorsStr, -4.09)

ZnSAgPHOSPHORPOWDEREJ600forNeutronDetectorsStr = """\
c      ZnS:Ag PHOSPHOR POWDER EJ-600 for Neutron Detectors
c      AKA: None
c      rho: 4.090000 g/cc
m{}       30064  -0.322573 $ Zn64
       30066  -0.187601 $ Zn66
       30067  -0.027747 $ Zn67
       30068  -0.128604 $ Zn68
       30070  -0.004377 $ Zn70
       16032  -0.311658 $ S32
       16033  -0.002538 $ S33
       16034  -0.014814 $ S34
       16036  -0.000037 $ S36
"""
matNum = matInsert('ZnSAgPHOSPHORPOWDEREJ600forNeutronDetectors', ZnSAgPHOSPHORPOWDEREJ600forNeutronDetectorsStr, -4.09)

