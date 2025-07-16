#!/bin/sh
export PATH=$PWD/depot_tools:$PATH
cd angle

mkdir out/Android-$TARGET_ARCH
mkdir ../build_out/$ANDROID_TARGET
envsubst < ../build-android.gen.gn > out/Android-$TARGET_ARCH/args.gn
gn gen out/Android-$TARGET_ARCH
autoninja -C out/Android-$TARGET_ARCH libEGL libGLESv2
cp out/Android-$TARGET_ARCH/libGLESv2_angle.so ../build_out/$ANDROID_TARGET/
cp out/Android-$TARGET_ARCH/libEGL_angle.so ../build_out/$ANDROID_TARGET/
