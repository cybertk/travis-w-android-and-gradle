#!/bin/sh
set -e

  # Install base Android SDK
sudo apt-get update -qq;
if [ `uname -m` = x86_64 ]; then sudo apt-get install -qq --force-yes libgd2-xpm ia32-libs ia32-libs-multiarch > /dev/null; fi
wget http://dl.google.com/android/android-sdk_r22.3-linux.tgz;
tar xzf android-sdk_r22.3-linux.tgz;
# $ANDROID_HOME=$PWD/android-sdk-linux;
# $PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools;


# Install Android build tools;
wget https://dl-ssl.google.com/android/repository/build-tools_r$ANDROID_BUILD_TOOLS_VERSION-linux.zip;
unzip build-tools_r$ANDROID_BUILD_TOOLS_VERSION-linux.zip -d $ANDROID_HOME;
mkdir -p $ANDROID_HOME/build-tools/;
mv $ANDROID_HOME/android-$ANDROID_OS_VERSION $ANDROID_HOME/build-tools/$ANDROID_BUILD_TOOLS_VERSION;
# $PATH=${PATH}:${ANDROID_HOME}/build-tools;

echo "LOOK HERE +++++++++++++++++++++++++++++++++++"
echo "LOOK HERE +++++++++++++++++++++++++++++++++++"
ls $PWD/android-sdk-linux/