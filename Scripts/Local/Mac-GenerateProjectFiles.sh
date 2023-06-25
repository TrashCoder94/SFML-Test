#!/bin/sh

echo "Copying SFML frameworks to /Library/Frameworks/"
cp -R /$(CURDIR)/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/. /Library/Frameworks.
cp -R /$(CURDIR)/ThirdParty/SFML-Binaries-Test/Mac/extlibs/. /Library/Frameworks.

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
exit 1
fi
