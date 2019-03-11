Build the tool chain using the instructions as found on 

https://sites.google.com/a/multisensorscientific.com/wiki/engineering/software/installing-and-building-the-mss-board-support-package-bsp 

and 

https://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)

The above urls have similar and overlaping intructions but to build the mss image use the first 
url. 

The full image must be built first using the command:

$> bitbake angstrom-lxde-image

This may take several hours depending on the abilities of the computer and requires sufficient 
store and memory.

After this completes the sdk can be biult and same instruciton for either the general 
or mss sepecific bsp can be used. 

Build the sdk with the command:

$> bitbake angstrom-lxde-image -c populate_sdk

The toolchain will be installed at location 

oe-core/build/tmp-glibc/work/apalis_imx6_mss-angstrom-linux-gnueabi/angstrom-lxde-image/2.8b4-r0/x86_64-deploy-angstrom-lxde-image-populate-sdk

Install the sdk from the location using script:

$> angstrom-glibc-x86_64-armv7at2hf-neon-v2017.12-toolchain.sh 

The tool chain tools must be initialialized by sourcing the script at location with command:

$>. /usr/local/oecore-x86_64/sysroots/environment-setup-armv7at2hf-neon-angstrom-linux-gnueabi

When this is done then cmake can then be used as follows clone the source dir and:

$> mkdir build
$> cd build/
$> cmake -DCMAKE_TOOLCHAIN_FILE=../toolchain.cmake ..
$> make

This will produce an executeable for this target machine and can be test on the board.






