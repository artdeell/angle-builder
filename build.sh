#!/bin/sh
git clone --depth 1 https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=$PWD/depot_tools/:$PATH
fetch angle
echo "target_os = ['android']" >> .gclient
gclient sync
mkdir out
mkdir build_out
