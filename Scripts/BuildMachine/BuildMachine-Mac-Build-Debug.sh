#!/bin/sh

pwd
$PWD
echo "$PWD"

# ==================================
# EXTLIBS
# ==================================
echo "Creating extlibs Symbolic Links"

# FLAC
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/FLAC"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A"

# Freetype
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/freetype"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A"

# Ogg
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/ogg"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A"

# OpenAL
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/OpenAL"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A"

# Vorbis
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/vorbis"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A"

# Vorbisenc
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/vorbisenc"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A"

# Vorbisfile
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/vorbisfile"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A"

# ==================================
# EXTLIBS
# ==================================
echo "Creating SFML symbolic links"

# Main
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/SFML"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Headers"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1"

# Audio
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/sfml-audio"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1"

# Graphics
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/sfml-graphics"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1"

# Network
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/sfml-network"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1"

# System
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/sfml-system"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1"

# Window
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/sfml-window"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/Resources"
sudo ln –sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/Current" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1"

echo "Finished creating symbolic links"

echo "Copying SFML frameworks to /Library/Frameworks"
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks/ /Library/Frameworks/
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs/ /Library/Frameworks/

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make verbose=1 config=debug_x86_64
if [ $? -ne 0 ] 
then
echo "Building debug configuration failed, exiting out..."
exit 1
fi
