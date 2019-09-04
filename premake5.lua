workspace "TricksEngine"
    architecture "x64"
    configurations { "Debug", "Release" }

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

IncludeDir = {}
IncludeDir["GLFW"] = "%{wks.location}/libs/glfw-3.3/include"
IncludeDir["Glad"] = "%{wks.location}/libs/glad/include"
IncludeDir["spdlog"] = "%{wks.location}/libs/spdlog-1.x/include"
-- IncludeDir["stb_image"] = "Hazel/vendor/stb_image"

group "Dependencies"
    include "libs/glfw-3.3"
    include "libs/glad"
    include "libs/spdlog-1.x"
    include "TemplateProject"
    

