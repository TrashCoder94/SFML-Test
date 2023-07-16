include "./ThirdParty/premake/premake_customization/solution_items.lua"

-- Visual Studio Solution
workspace "SFMLTest"
	architecture "x86_64"
	startproject "HelloWorld"
	
	configurations
	{
		"Debug",
		"Release",
		"Distribution"
	}

	if os.is64bit() and not os.host() == "windows" then
		platforms "x86_64"
	else
		platforms { "x86", "x86_64" }
	end

	if not os.host() == "macosx" then
		solution_items { ".editorconfig" }
	end

	flags
	{
		"MultiProcessorCompile"
	}
	
	linkoptions 
	{ 
		"-IGNORE:4006,4099"
	}
	
	defines
	{
		"SFML_STATIC"
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	filter "configurations:Distribution"
		runtime "Release"
		optimize "on"
		
	filter "platforms:x86"
		architecture "x86"
	filter "platforms:x86_64"
		architecture "x86_64"
	filter "system:windows"
		toolset "v143"
		buildoptions { "/Zc:__cplusplus" }
	filter "system:macosx"
		xcodebuildsettings {
			["MACOSX_DEPLOYMENT_TARGET"] = "10.9",
			["ALWAYS_SEARCH_USER_PATHS"] = "YES", -- This is the minimum version of macos we'll be able to run on
		};

-- Folder to put Binaries and Intermediate files into
outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories
IncludeDir = {}
IncludeDir["SFMLWindows"] = "%{wks.location}/ThirdParty/SFML-Binaries-Test/Windows/include"
IncludeDir["SFMLMac"] = "%{wks.location}/ThirdParty/SFML-Binaries-Test/Mac/include"
IncludeDir["ExampleLibraryUsingSFML"] = "%{wks.location}/ExampleLibraryUsingSFML/Source"

function includeAndLinkSFML()
	filter "system:windows"
		includedirs 
		{ 
			"%{IncludeDir.SFMLWindows}"
		}
		libdirs
		{
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Windows/lib"
		}
	filter ""
	
	filter { "system:windows", "configurations:Debug" }
		links
		{
			"sfml-graphics-s-d",
			"sfml-window-s-d",
			"sfml-audio-s-d",
			"sfml-network-s-d",
			"sfml-system-s-d",
			"opengl32",
			"freetype",
			"winmm",
			"gdi32",
			"openal32",
			"flac",
			"vorbisenc",
			"vorbisfile",
			"vorbis",
			"ogg",
			"ws2_32"
		}
	filter {}
	
	filter { "system:windows", "not configurations:Debug" }
		links
		{
			"sfml-graphics-s",
			"sfml-window-s",
			"sfml-audio-s",
			"sfml-network-s",
			"sfml-system-s",
			"opengl32",
			"freetype",
			"winmm",
			"gdi32",
			"openal32",
			"flac",
			"vorbisenc",
			"vorbisfile",
			"vorbis",
			"ogg",
			"ws2_32"
		}
	filter ""
	
	filter "system:macosx"
		includedirs 
		{ 
			"%{IncludeDir.SFMLMac}"
		}
		libdirs
		{
			"%{cfg.targetdir}"
		}
		links
		{
			"QuartzCore.framework", 
			"Metal.framework",
			"Cocoa.framework",
			"IOKit.framework",
			"CoreVideo.framework", 
			"CoreGraphics.framework",
			"OpenAL.framework",
			"FLAC.framework",
			"vorbisenc.framework",
			"vorbisfile.framework",
			"vorbis.framework",
			"ogg.framework",
			"sfml-graphics.framework",
			"sfml-window.framework",
			"sfml-audio.framework",
			"sfml-network.framework",
			"sfml-system.framework"
		}
		
		-- https://stackoverflow.com/questions/29465141/linking-mac-frameworks-using-premake-and-gnu-make
		-- Frameworks appear to need extra options for build/linking since premake doesn't automatically add them to the command line for compiling
		-- So you have to manually add these options in for now...
		-- Using /Library/Frameworks since that seems to be the standard place for all non system frameworks...
		buildoptions 
		{
			"-F %{cfg.targetdir}"
		}
		linkoptions 
		{
			"-F %{cfg.targetdir}"
		}
		prebuildcommands
		{	
			-- ==================================
			-- EXTLIBS
			-- ==================================
			"echo \"Creating extlibs Symbolic Links\"",
			
			-- FLAC
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/FLAC\" \"/ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/FLAC\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/FLAC.framework/Versions/Current\"",
			
			-- Freetype
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/freetype\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/freetype\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/freetype.framework/Versions/Current\"",
			
			-- Ogg
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/ogg\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/ogg\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/ogg.framework/Versions/Current\"",
			
			-- OpenAL
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/OpenAL\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/OpenAL\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/OpenAL.framework/Versions/Current\"",
			
			-- Vorbis
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/vorbis\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/vorbis\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbis.framework/Versions/Current\"",
			
			-- Vorbisenc
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/vorbisenc\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/vorbisenc\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisenc.framework/Versions/Current\"",
			
			-- Vorbisfile
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/vorbisfile\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/vorbisfile\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/A\" \"ThirdParty/SFML-Binaries-Test/Mac/extlibs/vorbisfile.framework/Versions/Current\"",
			
			-- ==================================
			-- EXTLIBS
			-- ==================================
			" echo \"Creating SFML symbolic links\"",
			
			-- Main
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/SFML\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/SFML\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1/Headers\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Headers\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/SFML.framework/Versions/Current\"",
			
			-- Audio
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/sfml-audio\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/sfml-audio\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-audio.framework/Versions/Current\"",
			
			-- Graphics
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/sfml-graphics\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/sfml-graphics\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-graphics.framework/Versions/Current\"",
			
			-- Network
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/sfml-network\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/sfml-network\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-network.framework/Versions/Current\"",
			
			-- System
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/sfml-system\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/sfml-system\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-system.framework/Versions/Current\"",
			
			-- Window
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/sfml-window\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/sfml-window\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1/Resources\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Resources\"",
			"ln -sf \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/2.5.1\" \"ThirdParty/SFML-Binaries-Test/Mac/Frameworks/sfml-window.framework/Versions/Current\"",
			
			"echo \"Finished creating symbolic links\"",
			
			"echo \"Copying frameworks over to the binaries folder...\"",
			"mkdir -p %{cfg.targetdir}",
			"cp -R /ThirdParty/SFML-Binaries-Test/Mac/Frameworks/ %{cfg.targetdir}",
			"cp -R /ThirdParty/SFML-Binaries-Test/Mac/extlibs/ %{cfg.targetdir}",
			
			"echo \"Finished copying frameworks over to the binaries folder...\""
		}
	filter ""
	
	filter "system:linux"
		links
		{
			"sfml-graphics",
			"sfml-window",
			"sfml-audio",
			"sfml-network",
			"sfml-system",
			"dl", 
			"GL", 
			"pthread", 
			"X11"
		}
	filter ""
end

function includeAndLinkExampleLibraryUsingSFML()		
	links
	{
		"ExampleLibraryUsingSFML"
	}
	
	includedirs
	{
		"%{IncludeDir.ExampleLibraryUsingSFML}"
	}
	
	includeAndLinkSFML()
end

-- Other premakes to use
group "Dependencies"
	include "ThirdParty/premake"
group ""

group "Example"
	include "ExampleLibraryUsingSFML"
	include "HelloWorld"
group ""