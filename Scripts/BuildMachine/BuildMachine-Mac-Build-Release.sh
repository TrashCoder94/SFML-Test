#!/bin/sh


# ==================================
# EXTLIBS
# ==================================
echo "Creating extlibs Symbolic Links"

# FLAC
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/FLAC" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/Current"

# Freetype
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/freetype" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources" 
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/Current"

# Ogg
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/ogg" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/Current"

# OpenAL
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/OpenAL" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/Current"

# Vorbis
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/vorbis" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/Current"

# Vorbisenc
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/vorbisenc" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/Current"

# Vorbisfile
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/vorbisfile" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/Current"

# ==================================
# EXTLIBS
# ==================================
echo "Creating SFML symbolic links"

# Main
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/SFML" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Headers" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/Current"

# Audio
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/sfml-audio" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/Current"

# Graphics
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/sfml-graphics" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/Current"

# Network
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/sfml-network" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/Current"

# System
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/sfml-system" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/Current"

# Window
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/sfml-window" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/Resources" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources"
ln -sf "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1" "$PWD/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/Current"

echo "Finished creating symbolic links"

echo "Copying SFML frameworks to /Library/Frameworks"
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/Frameworks/ /Library/Frameworks/
sudo cp -R ./ThirdParty/SFML-Binaries-Test/Mac/extlibs/ /Library/Frameworks/

echo "Generating Project with Premake!"
chmod +x ThirdParty/premake/Binaries/premake5_mac
ThirdParty/premake/Binaries/premake5_mac --file=premake5.lua gmake2

make config=release_x86_64
if [ $? -ne 0 ] 
then
echo "Building release configuration failed, exiting out..."
exit 1
fi
