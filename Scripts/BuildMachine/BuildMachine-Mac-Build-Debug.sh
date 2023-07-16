#!/bin/sh

pwd
$PWD
echo "$PWD"

function createlink () 
{
source_file=$1

target_file=$2

if [[ -f $target_file ]]; then
    rm $target_file
fi

ln -s $source_file $target_file

return 0
}

# ==================================
# EXTLIBS
# ==================================
echo "Creating extlibs Symbolic Links"

# FLAC
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/FLAC" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/Current"

# Freetype
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/freetype" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources" 
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/Current"

# Ogg
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/ogg" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/Current"

# OpenAL
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/OpenAL" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/Current"

# Vorbis
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/vorbis" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/Current"

# Vorbisenc
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/vorbisenc" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/Current"

# Vorbisfile
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/vorbisfile" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/Current"

# ==================================
# EXTLIBS
# ==================================
echo "Creating SFML symbolic links"

# Main
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/SFML" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Headers" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/Current"

# Audio
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/sfml-audio" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/Current"

# Graphics
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/sfml-graphics" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/Current"

# Network
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/sfml-network" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/Current"

# System
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/sfml-system" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/Current"

# Window
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/sfml-window" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources"
createLink "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/Current"

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
