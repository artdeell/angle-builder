#1/bin/sh
mkdir ./aar-base/jni
cp -R ./build_out/* ./aar-base/jni/
cd aar-base
zip -r angle *
cd ..
mv aar-base/angle.zip angle.aar
