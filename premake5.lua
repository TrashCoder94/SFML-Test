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
		"-IGNORE:4006"
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
IncludeDir["SFMLLinux"] = "%{wks.location}/ThirdParty/SFML-Binaries-Test/Linux/include"

function includeAndLinkSFML()
	filter "system:windows"
		includedirs 
		{ 
			"%{IncludeDir.SFMLWindows}"
		}
		libdirs
		{
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Windows/lib",
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Windows/lib/**"
		}
	filter ""
	
	filter { "system:windows", "configurations:Debug" }
		links
		{
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
			"ws2_32",
			"sfml-window-s-d",
			"sfml-system-s-d",
			"sfml-graphics-s-d",
			"sfml-audio-s-d"
		}
	filter {}
	
	filter { "system:windows", "not configurations:Debug" }
		links
		{
			"sfml-window-s",
			"sfml-system-s",
			"opengl32",
			"freetype",
			"sfml-graphics-s",
			"winmm",
			"gdi32",
			"openal32",
			"flac",
			"vorbisenc",
			"vorbisfile",
			"vorbis",
			"ogg",
			"sfml-audio-s",
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
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Mac/Frameworks/**"
		}
		links
		{
			"QuartzCore.framework", 
			"Metal.framework", 
			"Cocoa.framework", 
			"IOKit.framework", 
			"CoreVideo.framework", 
			"CoreGraphics.framework",
			"sfml-audio.framework",
			"sfml-graphics.framework",
			"sfml-network.framework",
			"sfml-system.framework",
			"sfml-window.framework"
		}
	filter ""
	
	filter "system:linux"
		includedirs 
		{ 
			"%{IncludeDir.SFMLLinux}"
		}
		libdirs
		{
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Linux/lib/**"
		}
		links
		{
			"dl", 
			"GL", 
			"pthread", 
			"X11"
		}
	filter ""
	
	filter { "system:linux", "configurations:Debug" }
		links
		{
			"sfml-window-d",
			"sfml-system-d",
			"sfml-graphics-d",
			"sfml-audio-d"
		}
	filter {}
	
	filter { "system:linux", "not configurations:Debug" }
		links
		{
			"sfml-window",
			"sfml-system",
			"sfml-graphics",
			"sfml-audio"
		}
	filter {}
end

-- Other premakes to use
group "Dependencies"
	include "ThirdParty/premake"
group ""

group "Example"
	include "HelloWorld"
group ""