# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yoshida/Dokumenty/Studia/SW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yoshida/Dokumenty/Studia/SW/build

# Include any dependencies generated for this target.
include CMakeFiles/pihomi.bin.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/pihomi.bin.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/pihomi.bin.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pihomi.bin.dir/flags.make

CMakeFiles/pihomi.bin.dir/src/server.cpp.o: CMakeFiles/pihomi.bin.dir/flags.make
CMakeFiles/pihomi.bin.dir/src/server.cpp.o: /home/yoshida/Dokumenty/Studia/SW/src/server.cpp
CMakeFiles/pihomi.bin.dir/src/server.cpp.o: CMakeFiles/pihomi.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pihomi.bin.dir/src/server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pihomi.bin.dir/src/server.cpp.o -MF CMakeFiles/pihomi.bin.dir/src/server.cpp.o.d -o CMakeFiles/pihomi.bin.dir/src/server.cpp.o -c /home/yoshida/Dokumenty/Studia/SW/src/server.cpp

CMakeFiles/pihomi.bin.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pihomi.bin.dir/src/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshida/Dokumenty/Studia/SW/src/server.cpp > CMakeFiles/pihomi.bin.dir/src/server.cpp.i

CMakeFiles/pihomi.bin.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pihomi.bin.dir/src/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshida/Dokumenty/Studia/SW/src/server.cpp -o CMakeFiles/pihomi.bin.dir/src/server.cpp.s

CMakeFiles/pihomi.bin.dir/src/main.cpp.o: CMakeFiles/pihomi.bin.dir/flags.make
CMakeFiles/pihomi.bin.dir/src/main.cpp.o: /home/yoshida/Dokumenty/Studia/SW/src/main.cpp
CMakeFiles/pihomi.bin.dir/src/main.cpp.o: CMakeFiles/pihomi.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/pihomi.bin.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pihomi.bin.dir/src/main.cpp.o -MF CMakeFiles/pihomi.bin.dir/src/main.cpp.o.d -o CMakeFiles/pihomi.bin.dir/src/main.cpp.o -c /home/yoshida/Dokumenty/Studia/SW/src/main.cpp

CMakeFiles/pihomi.bin.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pihomi.bin.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshida/Dokumenty/Studia/SW/src/main.cpp > CMakeFiles/pihomi.bin.dir/src/main.cpp.i

CMakeFiles/pihomi.bin.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pihomi.bin.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshida/Dokumenty/Studia/SW/src/main.cpp -o CMakeFiles/pihomi.bin.dir/src/main.cpp.s

CMakeFiles/pihomi.bin.dir/src/devices.cpp.o: CMakeFiles/pihomi.bin.dir/flags.make
CMakeFiles/pihomi.bin.dir/src/devices.cpp.o: /home/yoshida/Dokumenty/Studia/SW/src/devices.cpp
CMakeFiles/pihomi.bin.dir/src/devices.cpp.o: CMakeFiles/pihomi.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/pihomi.bin.dir/src/devices.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pihomi.bin.dir/src/devices.cpp.o -MF CMakeFiles/pihomi.bin.dir/src/devices.cpp.o.d -o CMakeFiles/pihomi.bin.dir/src/devices.cpp.o -c /home/yoshida/Dokumenty/Studia/SW/src/devices.cpp

CMakeFiles/pihomi.bin.dir/src/devices.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pihomi.bin.dir/src/devices.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshida/Dokumenty/Studia/SW/src/devices.cpp > CMakeFiles/pihomi.bin.dir/src/devices.cpp.i

CMakeFiles/pihomi.bin.dir/src/devices.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pihomi.bin.dir/src/devices.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshida/Dokumenty/Studia/SW/src/devices.cpp -o CMakeFiles/pihomi.bin.dir/src/devices.cpp.s

CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o: CMakeFiles/pihomi.bin.dir/flags.make
CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o: /home/yoshida/Dokumenty/Studia/SW/src/NTPClient.cpp
CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o: CMakeFiles/pihomi.bin.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o -MF CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o.d -o CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o -c /home/yoshida/Dokumenty/Studia/SW/src/NTPClient.cpp

CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yoshida/Dokumenty/Studia/SW/src/NTPClient.cpp > CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.i

CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yoshida/Dokumenty/Studia/SW/src/NTPClient.cpp -o CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.s

# Object files for target pihomi.bin
pihomi_bin_OBJECTS = \
"CMakeFiles/pihomi.bin.dir/src/server.cpp.o" \
"CMakeFiles/pihomi.bin.dir/src/main.cpp.o" \
"CMakeFiles/pihomi.bin.dir/src/devices.cpp.o" \
"CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o"

# External object files for target pihomi.bin
pihomi_bin_EXTERNAL_OBJECTS =

pihomi.bin: CMakeFiles/pihomi.bin.dir/src/server.cpp.o
pihomi.bin: CMakeFiles/pihomi.bin.dir/src/main.cpp.o
pihomi.bin: CMakeFiles/pihomi.bin.dir/src/devices.cpp.o
pihomi.bin: CMakeFiles/pihomi.bin.dir/src/NTPClient.cpp.o
pihomi.bin: CMakeFiles/pihomi.bin.dir/build.make
pihomi.bin: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.83.0
pihomi.bin: CMakeFiles/pihomi.bin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable pihomi.bin"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pihomi.bin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pihomi.bin.dir/build: pihomi.bin
.PHONY : CMakeFiles/pihomi.bin.dir/build

CMakeFiles/pihomi.bin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pihomi.bin.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pihomi.bin.dir/clean

CMakeFiles/pihomi.bin.dir/depend:
	cd /home/yoshida/Dokumenty/Studia/SW/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yoshida/Dokumenty/Studia/SW /home/yoshida/Dokumenty/Studia/SW /home/yoshida/Dokumenty/Studia/SW/build /home/yoshida/Dokumenty/Studia/SW/build /home/yoshida/Dokumenty/Studia/SW/build/CMakeFiles/pihomi.bin.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/pihomi.bin.dir/depend

