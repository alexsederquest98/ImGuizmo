project "ImGuizmo"
    kind "StaticLib"
    language "C++"
    staticruntime "off"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "ImGuizmo.h",
        "ImGuizmo.cpp",
        "ImSequencer.h",
        "ImSequencer.cpp",
        "ImZoomSlider.h",
        "ImGradient.h",
        "ImGradient.cpp",
        "ImCurveEdit.h",
        "ImCurveEdit.cpp",
        "GraphEditor.h",
        "GraphEditor.cpp",
    }

    includedirs
    {
        "../imgui"
    }

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++20"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"