#!/bin/sh

pwd

# ==================================
# EXTLIBS
# ==================================
echo "Creating extlibs Symbolic Links"

# FLAC
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC" "Versions/A/FLAC"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/Current" "A"

# Freetype
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype" "Versions/A/freetype"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/Current" "A"

# Ogg
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg" "Versions/A/ogg"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/Current" "A"

# OpenAL
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL" "Versions/A/OpenAL"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/Current" "A"

# Vorbis
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis" "Versions/A/vorbis"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/Current" "A"

# Vorbisenc
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc" "Versions/A/vorbisenc"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/Current" "A"

# Vorbisfile
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile" "Versions/A/vorbisfile"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources" "Versions/A/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/Current" "A"

# ==================================
# EXTLIBS
# ==================================
echo "Creating SFML symbolic links"

# Main
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML" "Versions/2.5.1/SFML"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers" "Versions/2.5.1/Headers"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/Current" "2.5.1"

# Audio
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio" "Versions/2.5.1/sfml-audio"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/Current" "2.5.1"

# Graphics
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics" "Versions/2.5.1/sfml-graphics"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/Current" "2.5.1"

# Network
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network" "Versions/2.5.1/sfml-network"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/Current" "2.5.1"

# System
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system" "Versions/2.5.1/sfml-system"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/Current" "2.5.1"

# Window
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window" "Versions/2.5.1/sfml-window"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources" "Versions/2.5.1/Resources"
sudo ln –sf "/Users/runner/work/SFML-Test/SFML-Test/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/Current" "2.5.1"

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
