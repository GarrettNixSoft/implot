project "ImPlot"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files {
		"implot.h",
		"implot.cpp",
		"implot_demo.cpp",
		"implot_internal.h",
		"implot_items.cpp"
	}

	filter "system:windows"
	systemversion "latest"
	cppdialect "C++17"
	staticruntime "On"

	filter { "system:windows", "configurations:Release" }
		buildoptions "/MT"