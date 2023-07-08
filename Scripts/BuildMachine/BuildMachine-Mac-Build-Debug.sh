#!/bin/sh

# echo "Copying SFML frameworks to /Library/Frameworks"
# sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks /Library/Frameworks
# sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs /Library/Frameworks
#
# echo "Library path environment variable before:"
# echo $LD_LIBRARY_PATH
# 
# echo "Setting Library path environment variable"
# export LD_LIBRARY_PATH=/Library/Frameworks
# 
# echo "Library path environment variable after:"
# echo $LD_LIBRARY_PATH

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make --debug=b config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
exit 1
fi
