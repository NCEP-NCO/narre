--#%Module############################################################
--#
--#    - NARRE
--#    - North American Rapid Refresh Ensemble
--####################################################################
--proc ModulesHelp { } {
--  puts stderr "Sets environment variables for NARRE"
--  puts stderr "This module initializes the environment"
--  puts stderr "to build the NARRE software at NCEP"
--}

whatis("NARRE module for compilation")

-- Load Intel Compiler

load("PrgEnv-intel/"..os.getenv("PrgEnv_intel_ver"))
load("craype/"..os.getenv("craype_ver"))
load("intel/"..os.getenv("intel_ver"))
load("cray-mpich/"..os.getenv("cray_mpich_ver"))

-- Load Supporting Software Libraries

load("libjpeg/"..os.getenv("libjpeg_ver"))
load("libpng/"..os.getenv("libpng_ver"))
load("w3nco/"..os.getenv("w3nco_ver"))
load("w3emc/"..os.getenv("w3emc_ver"))
load("bacio/"..os.getenv("bacio_ver"))
load("g2/"..os.getenv("g2_ver"))
load("zlib/"..os.getenv("zlib_ver"))
load("jasper/"..os.getenv("jasper_ver"))
load("sp/"..os.getenv("sp_ver"))
load("ip/"..os.getenv("ip_ver"))


