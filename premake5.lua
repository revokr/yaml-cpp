project "YAML"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
	    "src/**.h",
        "src/**.cpp",

   	    "include/**.h"
	 }

	includedirs {
	    "include"
        }

	filter "system:windows"
		systemversion "latest"

	defines {
		"YAML_CPP_STATIC_DEFINE"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
