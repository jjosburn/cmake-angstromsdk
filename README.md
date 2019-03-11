Build the tool chain using the instructions as found on https://sites.google.com/a/multisensorscientific.com/wiki/engineering/software/installing-and-building-the-mss-board-support-package-bsp and https://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)

Build the sdk as instructed in both places but use the following command to build the toolchain. 

bitbake angstrom-lxde-image -c populate_sdk

installed the sdk angstrom-glibc-x86_64-armv7at2hf-neon-v2017.12-toolchain.sh located in ~/oe-core/build/tmp-glibc/work/apalis_imx6_mss-angstrom-linux-gnueabi/angstrom-lxde-image/2.8b4-r0/x86_64-deploy-angstrom-lxde-image-populate-sdk/ angstrom-glibc-x86_64-armv7at2hf-neon-v2017.12-toolchain.sh 

This was installed at location the default location of /usr/local/oecore-x86_64

Run command . /usr/local/oecore-x86_64/sysroots/environment-setup-armv7at2hf-neon-angstrom-linux-gnueabi


