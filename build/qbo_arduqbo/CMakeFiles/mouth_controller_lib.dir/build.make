# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_SOURCE_DIR = /home/qbo/Desktop/melodia/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qbo/Desktop/melodia/build

# Include any dependencies generated for this target.
include qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/depend.make

# Include the progress variables for this target.
include qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/progress.make

# Include the compile flags for this target's objects.
include qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/flags.make

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/flags.make
qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o: /home/qbo/Desktop/melodia/src/qbo_arduqbo/src/controllers/mouth_controller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qbo/Desktop/melodia/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o"
	cd /home/qbo/Desktop/melodia/build/qbo_arduqbo && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o -c /home/qbo/Desktop/melodia/src/qbo_arduqbo/src/controllers/mouth_controller.cpp

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.i"
	cd /home/qbo/Desktop/melodia/build/qbo_arduqbo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qbo/Desktop/melodia/src/qbo_arduqbo/src/controllers/mouth_controller.cpp > CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.i

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.s"
	cd /home/qbo/Desktop/melodia/build/qbo_arduqbo && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qbo/Desktop/melodia/src/qbo_arduqbo/src/controllers/mouth_controller.cpp -o CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.s

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.requires:

.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.requires

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.provides: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.requires
	$(MAKE) -f qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/build.make qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.provides.build
.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.provides

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.provides.build: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o


# Object files for target mouth_controller_lib
mouth_controller_lib_OBJECTS = \
"CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o"

# External object files for target mouth_controller_lib
mouth_controller_lib_EXTERNAL_OBJECTS =

/home/qbo/Desktop/melodia/devel/lib/libmouth_controller_lib.so: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o
/home/qbo/Desktop/melodia/devel/lib/libmouth_controller_lib.so: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/build.make
/home/qbo/Desktop/melodia/devel/lib/libmouth_controller_lib.so: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qbo/Desktop/melodia/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library /home/qbo/Desktop/melodia/devel/lib/libmouth_controller_lib.so"
	cd /home/qbo/Desktop/melodia/build/qbo_arduqbo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mouth_controller_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/build: /home/qbo/Desktop/melodia/devel/lib/libmouth_controller_lib.so

.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/build

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/requires: qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/src/controllers/mouth_controller.cpp.o.requires

.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/requires

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/clean:
	cd /home/qbo/Desktop/melodia/build/qbo_arduqbo && $(CMAKE_COMMAND) -P CMakeFiles/mouth_controller_lib.dir/cmake_clean.cmake
.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/clean

qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/depend:
	cd /home/qbo/Desktop/melodia/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qbo/Desktop/melodia/src /home/qbo/Desktop/melodia/src/qbo_arduqbo /home/qbo/Desktop/melodia/build /home/qbo/Desktop/melodia/build/qbo_arduqbo /home/qbo/Desktop/melodia/build/qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : qbo_arduqbo/CMakeFiles/mouth_controller_lib.dir/depend

