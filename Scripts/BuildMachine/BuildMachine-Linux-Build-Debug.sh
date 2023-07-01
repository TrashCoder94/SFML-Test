#!/bin/sh

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5
ThirdParty/premake/Binaries/premake5 --file=premake5.lua gmake2
if [ $? -ne 0 ] 
then
echo "Generating project files failed, exiting out..."
exit 1
fi

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find . -type f
realpath sfml-window-d.so
realpath libsfml-window-d.so
find . -name *.so
exit 1
fi
