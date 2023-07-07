#!/bin/sh

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find /usr/local/Cellar/sfml/ -type f
realpath Window.hpp
realpath FLAC.framework
realpath sfml-audio.framework
exit 1
fi
