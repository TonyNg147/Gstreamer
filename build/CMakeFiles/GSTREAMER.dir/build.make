# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tony/Desktop/CPP/Gstreamer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tony/Desktop/CPP/Gstreamer/build

# Include any dependencies generated for this target.
include CMakeFiles/GSTREAMER.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GSTREAMER.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GSTREAMER.dir/flags.make

CMakeFiles/GSTREAMER.dir/main.o: CMakeFiles/GSTREAMER.dir/flags.make
CMakeFiles/GSTREAMER.dir/main.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tony/Desktop/CPP/Gstreamer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GSTREAMER.dir/main.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GSTREAMER.dir/main.o -c /home/tony/Desktop/CPP/Gstreamer/main.cpp

CMakeFiles/GSTREAMER.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GSTREAMER.dir/main.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tony/Desktop/CPP/Gstreamer/main.cpp > CMakeFiles/GSTREAMER.dir/main.i

CMakeFiles/GSTREAMER.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GSTREAMER.dir/main.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tony/Desktop/CPP/Gstreamer/main.cpp -o CMakeFiles/GSTREAMER.dir/main.s

# Object files for target GSTREAMER
GSTREAMER_OBJECTS = \
"CMakeFiles/GSTREAMER.dir/main.o"

# External object files for target GSTREAMER
GSTREAMER_EXTERNAL_OBJECTS =

GSTREAMER: CMakeFiles/GSTREAMER.dir/main.o
GSTREAMER: CMakeFiles/GSTREAMER.dir/build.make
GSTREAMER: CMakeFiles/GSTREAMER.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tony/Desktop/CPP/Gstreamer/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable GSTREAMER"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GSTREAMER.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GSTREAMER.dir/build: GSTREAMER

.PHONY : CMakeFiles/GSTREAMER.dir/build

CMakeFiles/GSTREAMER.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GSTREAMER.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GSTREAMER.dir/clean

CMakeFiles/GSTREAMER.dir/depend:
	cd /home/tony/Desktop/CPP/Gstreamer/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tony/Desktop/CPP/Gstreamer /home/tony/Desktop/CPP/Gstreamer /home/tony/Desktop/CPP/Gstreamer/build /home/tony/Desktop/CPP/Gstreamer/build /home/tony/Desktop/CPP/Gstreamer/build/CMakeFiles/GSTREAMER.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/GSTREAMER.dir/depend
