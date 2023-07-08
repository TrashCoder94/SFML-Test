#!/bin/sh

echo "Copying SFML frameworks to /Library/Frameworks/ folder"
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks /usr/local/Frameworks
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs /usr/local/Frameworks

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find /usr/local/Cellar/sfml -type d
exit 1
fi
