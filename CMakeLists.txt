project(GSTREAMER)
set(SOURCES main.cpp
            Controller/Controller.cpp
)
add_executable(${PROJECT_NAME} ${SOURCES})
find_package(PkgConfig REQUIRED)
if(PKGCONFIG_FOUND)
    pkg_search_module(GST REQUIRED gstreamer-1.0)
    target_include_directories(${PROJECT_NAME} PRIVATE ${GST_INCLUDE_DIRS})
    target_link_libraries(${PROJECT_NAME} PRIVATE ${GST_LIBRARIES})
else()
    message(FATAL_ERROR "Cannot locate pkg-config")
endif()


