project "HelloWorld"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++14"

	targetdir ("%{wks.location}/Binaries/" .. outputdir .. "/%{prj.name}")
	objdir ("%{wks.location}/Intermediate/" .. outputdir .. "/%{prj.name}")

	files
	{
		"Source/**.h",
		"Source/**.cpp"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS"
	}

	includedirs
	{
		"Source"
	}

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
			"%{wks.location}/ThirdParty/SFML-Binaries-Test/Mac/lib/**"
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
	filter ""
