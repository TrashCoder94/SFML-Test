#!/bin/sh

echo "Copying SFML frameworks to /usr/local/lib folder"
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks /usr/local/lib
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs /usr/local/lib

echo "Library path environment variable before:"
echo $LD_LIBRARY_PATH

echo "Setting Library path environment variable"
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

echo "Library path environment variable after:"
echo $LD_LIBRARY_PATH

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make --debug=v config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
ll /Library/Frameworks/
exit 1
fi
