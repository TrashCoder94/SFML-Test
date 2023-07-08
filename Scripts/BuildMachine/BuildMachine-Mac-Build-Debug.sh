#!/bin/sh

echo "Copying SFML frameworks to /Library/Frameworks/ folder"
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks /users/runner/Library/Frameworks
cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs /users/runner/Library/Frameworks

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
find /usr/local/Cellar/sfml -type d
realpath Window.hpp
realpath FLAC.framework
realpath sfml-audio.framework
realpath sfml-audio.2.5.1.framework
exit 1
fi
