# CMake system name must be something like "Linux".
# This is important for cross-compiling.
set( CMAKE_SYSTEM_NAME Linux )
set( CMAKE_SYSTEM_PROCESSOR arm )
set( CMAKE_C_COMPILER /usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux/usr/bin/arm-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-gcc )
set( CMAKE_CXX_COMPILER /usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux/usr/bin/arm-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-g++ )
set( CMAKE_ASM_COMPILER /usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux/usr/bin/arm-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-gcc )
set( CMAKE_AR /usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux/usr/bin/arm-angstrom-linux-gnueabi/arm-angstrom-linux-gnueabi-ar CACHE FILEPATH "Archiver" )
set( CMAKE_C_FLAGS " -march=armv7-a -mthumb  -mthumb-interwork -mfloat-abi=hard -mfpu=neon  --sysroot=/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types" CACHE STRING "CFLAGS" )
set( CMAKE_CXX_FLAGS " -march=armv7-a -mthumb  -mthumb-interwork -mfloat-abi=hard -mfpu=neon  --sysroot=/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inlines-hidden" CACHE STRING "CXXFLAGS" )
set( CMAKE_ASM_FLAGS " -march=armv7-a -mthumb  -mthumb-interwork -mfloat-abi=hard -mfpu=neon  --sysroot=/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types" CACHE STRING "ASM FLAGS" )
set( CMAKE_C_FLAGS_RELEASE "-O2 -pipe -g -feliminate-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -DNDEBUG" CACHE STRING "CFLAGS for release" )
set( CMAKE_CXX_FLAGS_RELEASE "-O2 -pipe -g -feliminate-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inlines-hidden -DNDEBUG" CACHE STRING "CXXFLAGS for release" )
set( CMAKE_ASM_FLAGS_RELEASE "-O2 -pipe -g -feliminate-unused-debug-types  -O2 -pipe -g -feliminate-unused-debug-types -DNDEBUG" CACHE STRING "ASM FLAGS for release" )
set( CMAKE_C_LINK_FLAGS " -march=armv7-a -mthumb  -mthumb-interwork -mfloat-abi=hard -mfpu=neon  --sysroot=/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi  -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed" CACHE STRING "LDFLAGS" )
set( CMAKE_CXX_LINK_FLAGS " -march=armv7-a -mthumb  -mthumb-interwork -mfloat-abi=hard -mfpu=neon  --sysroot=/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi  -O2 -pipe -g -feliminate-unused-debug-types -fvisibility-inlines-hidden -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed" CACHE STRING "LDFLAGS" )

# only search in the paths provided so cmake doesnt pick
# up libraries and tools from the native build machine
set( CMAKE_FIND_ROOT_PATH /usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi /usr/local/oecore-x86_64/sysroots/x86_64-angstromsdk-linux    )
set( CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_PROGRAM ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY )
set( CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY )

# We need to set the rpath to the correct directory as cmake does not provide any
# directory as rpath by default
set( CMAKE_INSTALL_RPATH  )

# Use native cmake modules
list(APPEND CMAKE_MODULE_PATH "/usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi/usr/share/cmake/Modules/")

# add for non /usr/lib libdir, e.g. /usr/lib64
set( CMAKE_LIBRARY_PATH /usr/lib /lib)

set ( CMAKE_EXE_LINKER_FLAGS -lunwind )
set ( CMAKE_EXE_LINKER_FLAGS -pthread )

set (EIGEN_INCLUDE_DIR /usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi/usr/include/eigen3)
set (GLOG_INCLUDE_DIR /usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi/usr/include)
set (GLOG_LIBRARY /usr/local/oecore-x86_64/sysroots/armv7at2hf-neon-angstrom-linux-gnueabi/usr/lib/libglog.so )
