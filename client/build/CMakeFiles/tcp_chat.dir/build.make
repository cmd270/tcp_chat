# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_SOURCE_DIR = /home/m/code/cpp/sp_coursework/client

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/m/code/cpp/sp_coursework/client/build

# Include any dependencies generated for this target.
include CMakeFiles/tcp_chat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/tcp_chat.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/tcp_chat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tcp_chat.dir/flags.make

CMakeFiles/tcp_chat.dir/src/start_window.cc.o: CMakeFiles/tcp_chat.dir/flags.make
CMakeFiles/tcp_chat.dir/src/start_window.cc.o: /home/m/code/cpp/sp_coursework/client/src/start_window.cc
CMakeFiles/tcp_chat.dir/src/start_window.cc.o: CMakeFiles/tcp_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m/code/cpp/sp_coursework/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tcp_chat.dir/src/start_window.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp_chat.dir/src/start_window.cc.o -MF CMakeFiles/tcp_chat.dir/src/start_window.cc.o.d -o CMakeFiles/tcp_chat.dir/src/start_window.cc.o -c /home/m/code/cpp/sp_coursework/client/src/start_window.cc

CMakeFiles/tcp_chat.dir/src/start_window.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_chat.dir/src/start_window.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/m/code/cpp/sp_coursework/client/src/start_window.cc > CMakeFiles/tcp_chat.dir/src/start_window.cc.i

CMakeFiles/tcp_chat.dir/src/start_window.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_chat.dir/src/start_window.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/m/code/cpp/sp_coursework/client/src/start_window.cc -o CMakeFiles/tcp_chat.dir/src/start_window.cc.s

CMakeFiles/tcp_chat.dir/src/chat_window.cc.o: CMakeFiles/tcp_chat.dir/flags.make
CMakeFiles/tcp_chat.dir/src/chat_window.cc.o: /home/m/code/cpp/sp_coursework/client/src/chat_window.cc
CMakeFiles/tcp_chat.dir/src/chat_window.cc.o: CMakeFiles/tcp_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m/code/cpp/sp_coursework/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tcp_chat.dir/src/chat_window.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp_chat.dir/src/chat_window.cc.o -MF CMakeFiles/tcp_chat.dir/src/chat_window.cc.o.d -o CMakeFiles/tcp_chat.dir/src/chat_window.cc.o -c /home/m/code/cpp/sp_coursework/client/src/chat_window.cc

CMakeFiles/tcp_chat.dir/src/chat_window.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_chat.dir/src/chat_window.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/m/code/cpp/sp_coursework/client/src/chat_window.cc > CMakeFiles/tcp_chat.dir/src/chat_window.cc.i

CMakeFiles/tcp_chat.dir/src/chat_window.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_chat.dir/src/chat_window.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/m/code/cpp/sp_coursework/client/src/chat_window.cc -o CMakeFiles/tcp_chat.dir/src/chat_window.cc.s

CMakeFiles/tcp_chat.dir/src/main.cc.o: CMakeFiles/tcp_chat.dir/flags.make
CMakeFiles/tcp_chat.dir/src/main.cc.o: /home/m/code/cpp/sp_coursework/client/src/main.cc
CMakeFiles/tcp_chat.dir/src/main.cc.o: CMakeFiles/tcp_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m/code/cpp/sp_coursework/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tcp_chat.dir/src/main.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp_chat.dir/src/main.cc.o -MF CMakeFiles/tcp_chat.dir/src/main.cc.o.d -o CMakeFiles/tcp_chat.dir/src/main.cc.o -c /home/m/code/cpp/sp_coursework/client/src/main.cc

CMakeFiles/tcp_chat.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_chat.dir/src/main.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/m/code/cpp/sp_coursework/client/src/main.cc > CMakeFiles/tcp_chat.dir/src/main.cc.i

CMakeFiles/tcp_chat.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_chat.dir/src/main.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/m/code/cpp/sp_coursework/client/src/main.cc -o CMakeFiles/tcp_chat.dir/src/main.cc.s

CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o: CMakeFiles/tcp_chat.dir/flags.make
CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o: /home/m/code/cpp/sp_coursework/client/src/tcp_client.cc
CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o: CMakeFiles/tcp_chat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/m/code/cpp/sp_coursework/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o -MF CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o.d -o CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o -c /home/m/code/cpp/sp_coursework/client/src/tcp_client.cc

CMakeFiles/tcp_chat.dir/src/tcp_client.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tcp_chat.dir/src/tcp_client.cc.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/m/code/cpp/sp_coursework/client/src/tcp_client.cc > CMakeFiles/tcp_chat.dir/src/tcp_client.cc.i

CMakeFiles/tcp_chat.dir/src/tcp_client.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tcp_chat.dir/src/tcp_client.cc.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/m/code/cpp/sp_coursework/client/src/tcp_client.cc -o CMakeFiles/tcp_chat.dir/src/tcp_client.cc.s

# Object files for target tcp_chat
tcp_chat_OBJECTS = \
"CMakeFiles/tcp_chat.dir/src/start_window.cc.o" \
"CMakeFiles/tcp_chat.dir/src/chat_window.cc.o" \
"CMakeFiles/tcp_chat.dir/src/main.cc.o" \
"CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o"

# External object files for target tcp_chat
tcp_chat_EXTERNAL_OBJECTS =

tcp_chat: CMakeFiles/tcp_chat.dir/src/start_window.cc.o
tcp_chat: CMakeFiles/tcp_chat.dir/src/chat_window.cc.o
tcp_chat: CMakeFiles/tcp_chat.dir/src/main.cc.o
tcp_chat: CMakeFiles/tcp_chat.dir/src/tcp_client.cc.o
tcp_chat: CMakeFiles/tcp_chat.dir/build.make
tcp_chat: CMakeFiles/tcp_chat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/m/code/cpp/sp_coursework/client/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable tcp_chat"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tcp_chat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tcp_chat.dir/build: tcp_chat
.PHONY : CMakeFiles/tcp_chat.dir/build

CMakeFiles/tcp_chat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tcp_chat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tcp_chat.dir/clean

CMakeFiles/tcp_chat.dir/depend:
	cd /home/m/code/cpp/sp_coursework/client/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/m/code/cpp/sp_coursework/client /home/m/code/cpp/sp_coursework/client /home/m/code/cpp/sp_coursework/client/build /home/m/code/cpp/sp_coursework/client/build /home/m/code/cpp/sp_coursework/client/build/CMakeFiles/tcp_chat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tcp_chat.dir/depend
