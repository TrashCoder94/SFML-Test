#!/bin/sh

echo "Copying SFML frameworks to /Users/runner/Library/Frameworks folder"
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks /Users/runner/Library/Frameworks
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs /Users/runner/Library/Frameworks

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find /Users/runner/Library/Frameworks -type d
exit 1
fi
