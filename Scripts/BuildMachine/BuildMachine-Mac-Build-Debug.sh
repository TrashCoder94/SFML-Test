#!/bin/sh

echo "Creating SFML Symbolic Links"

# ==================================
# SFML
# ==================================
# Main
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/SFML
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Resources
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Headers

# Audio
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/sfml-audio
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/Resources

# Graphics
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/sfml-graphics
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/Resources

# Network
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/sfml-network
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/Resources

# System
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/sfml-system
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/Resources

# Window
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/sfml-window
ln –s /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/Resources

echo "Creating extlibs Symbolic Links"

# ==================================
# EXTLIBS
# ==================================
# FLAC
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC /ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/FLAC
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/Resources

# Freetype
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype /ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/freetype
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/Resources

# Ogg
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg /ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/ogg
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/Resources

# OpenAL
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL /ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/OpenAL
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/Resources

# Vorbis
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/vorbis
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/Resources

# Vorbisenc
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/vorbisenc
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/Resources

# Vorbisfile
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/vorbisfile
ln –s /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources /ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/Resources


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
