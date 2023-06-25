#!/bin/sh

sudo apt-get update && sudo apt-get install xorg-dev libxrandr-dev libxcursor-dev libudev-dev libopenal-dev libflac-dev libvorbis-dev libgl1-mesa-dev libegl1-mesa-dev libdrm-dev libgbm-dev xvfb fluxbox

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/ThirdParty/SFML-Binaries-Test/Linux/lib

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5
ThirdParty/premake/Binaries/premake5 --file=premake5.lua gmake2
if [ $? -ne 0 ] 
then
echo "Generating project files failed, exiting out..."
find . -name *.so
exit 1
fi

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find . -name *.so
exit 1
fi
