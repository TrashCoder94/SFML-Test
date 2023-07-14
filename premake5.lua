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
			"/Library/Frameworks"
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
			"-F /Library/Frameworks"
		}
		linkoptions 
		{
			"-F /Library/Frameworks"
		}
		postbuildcommands
		{
			"pwd"--,
			--"sudo mkdir -p /%{cfg.targetdir}/Frameworks",
			--"sudo cp -R $(PWD)/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/ /%{cfg.targetdir}/Frameworks/",
			--"sudo cp -R $(PWD)/ThirdParty/SFML-Binaries-Test/Mac/extlibs/ /%{cfg.targetdir}/Frameworks/"
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