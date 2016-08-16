PREFIX="/work/openwrt-code/openwrt-46386-code"
ARCH=arm
KSRC="$PREFIX/build_dir/target-arm_cortex-a9_glibc-2.21_eabi/linux-hisi_x5hd/linux-3.18.18"
STAGING_DIR="$PREFIX/staging_dir"
TOOLCHAIN_DIR="$STAGING_DIR/toolchain-arm_cortex-a9_gcc-4.8-linaro_glibc-2.21_eabi/bin"
CROSS_COMPILE="arm-openwrt-linux-gnueabi-"
 
export STAGING_DIR=$STAGING_DIR
export PATH=$TOOLCHAIN_DIR:$PATH
make clean
make ARCH=$ARCH CROSS_COMPILE=$CROSS_COMPILE KSRC=$KSRC
