#!/bin/sh

echo "Copying SFML frameworks to /Library/Frameworks"
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks/ /Library/Frameworks/
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs/ /Library/Frameworks/

echo "Running Release HelloWorld executable!"
chmod +x Binaries/Release-macosx-x86_64/HelloWorld/HelloWorld
Binaries/Release-macosx-x86_64/HelloWorld/HelloWorld
if [ $? -ne 0 ] 
then
echo "Running release executable failed, exiting out..."
exit 1
fi
