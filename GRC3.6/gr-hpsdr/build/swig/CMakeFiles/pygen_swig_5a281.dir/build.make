# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/tom/gr-hpsdr

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tom/gr-hpsdr/build

# Utility rule file for pygen_swig_5a281.

# Include the progress variables for this target.
include swig/CMakeFiles/pygen_swig_5a281.dir/progress.make

swig/CMakeFiles/pygen_swig_5a281: swig/hpsdr_swig.pyc
swig/CMakeFiles/pygen_swig_5a281: swig/hpsdr_swig.pyo

swig/hpsdr_swig.pyc: swig/hpsdr_swig.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating hpsdr_swig.pyc"
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/python /home/tom/gr-hpsdr/build/python_compile_helper.py /home/tom/gr-hpsdr/build/swig/hpsdr_swig.py /home/tom/gr-hpsdr/build/swig/hpsdr_swig.pyc

swig/hpsdr_swig.pyo: swig/hpsdr_swig.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating hpsdr_swig.pyo"
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/python -O /home/tom/gr-hpsdr/build/python_compile_helper.py /home/tom/gr-hpsdr/build/swig/hpsdr_swig.py /home/tom/gr-hpsdr/build/swig/hpsdr_swig.pyo

swig/hpsdr_swigPYTHON_wrap.cxx: ../swig/hpsdr_swig.i
swig/hpsdr_swigPYTHON_wrap.cxx: /usr/local/include/gruel/swig/gruel_common.i
swig/hpsdr_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gnuradio.i
swig/hpsdr_swigPYTHON_wrap.cxx: swig/hpsdr_swig_doc.i
swig/hpsdr_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gr_shared_ptr.i
swig/hpsdr_swigPYTHON_wrap.cxx: swig/hpsdr_swig.tag
swig/hpsdr_swigPYTHON_wrap.cxx: ../swig/hpsdr_swig.i
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/cmake -E make_directory /home/tom/gr-hpsdr/build/swig
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/swig2.0 -python -fvirtual -modern -keyword -w511 -module hpsdr_swig -I/usr/local/include/gnuradio/swig -I/usr/local/include/gruel/swig -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/tom/gr-hpsdr/swig -I/home/tom/gr-hpsdr/build/swig -outdir /home/tom/gr-hpsdr/build/swig -c++ -I/home/tom/gr-hpsdr/include -I/usr/include -I/usr/local/include -I/usr/local/include/gnuradio -I/usr/local/include/gnuradio/swig -I/usr/local/include/gruel/swig -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/tom/gr-hpsdr/swig -I/home/tom/gr-hpsdr/build/swig -o /home/tom/gr-hpsdr/build/swig/hpsdr_swigPYTHON_wrap.cxx /home/tom/gr-hpsdr/swig/hpsdr_swig.i

swig/hpsdr_swig.py: swig/hpsdr_swigPYTHON_wrap.cxx

swig/hpsdr_swig_doc.i: ../swig/../include/metis.h
swig/hpsdr_swig_doc.i: ../swig/../include/hpsdr_hermesNB.h
swig/hpsdr_swig_doc.i: ../swig/../include/HermesProxy.h
swig/hpsdr_swig_doc.i: ../swig/../include/hpsdr_api.h
swig/hpsdr_swig_doc.i: swig/hpsdr_swig_doc_swig_docs/xml/index.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating hpsdr_swig_doc.i"
	cd /home/tom/gr-hpsdr/docs/doxygen && /usr/bin/python -B /home/tom/gr-hpsdr/docs/doxygen/swig_doc.py /home/tom/gr-hpsdr/build/swig/hpsdr_swig_doc_swig_docs/xml /home/tom/gr-hpsdr/build/swig/hpsdr_swig_doc.i

swig/hpsdr_swig.tag: swig/hpsdr_swig_doc.i
swig/hpsdr_swig.tag: swig/_hpsdr_swig_swig_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating hpsdr_swig.tag"
	cd /home/tom/gr-hpsdr/build/swig && ./_hpsdr_swig_swig_tag
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/cmake -E touch /home/tom/gr-hpsdr/build/swig/hpsdr_swig.tag

swig/hpsdr_swig_doc_swig_docs/xml/index.xml: ../swig/../include/metis.h
swig/hpsdr_swig_doc_swig_docs/xml/index.xml: ../swig/../include/hpsdr_hermesNB.h
swig/hpsdr_swig_doc_swig_docs/xml/index.xml: ../swig/../include/HermesProxy.h
swig/hpsdr_swig_doc_swig_docs/xml/index.xml: ../swig/../include/hpsdr_api.h
swig/hpsdr_swig_doc_swig_docs/xml/index.xml: swig/_hpsdr_swig_doc_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/tom/gr-hpsdr/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating doxygen xml for hpsdr_swig_doc docs"
	cd /home/tom/gr-hpsdr/build/swig && ./_hpsdr_swig_doc_tag
	cd /home/tom/gr-hpsdr/build/swig && /usr/bin/doxygen /home/tom/gr-hpsdr/build/swig/hpsdr_swig_doc_swig_docs/Doxyfile

pygen_swig_5a281: swig/CMakeFiles/pygen_swig_5a281
pygen_swig_5a281: swig/hpsdr_swig.pyc
pygen_swig_5a281: swig/hpsdr_swig.pyo
pygen_swig_5a281: swig/hpsdr_swigPYTHON_wrap.cxx
pygen_swig_5a281: swig/hpsdr_swig.py
pygen_swig_5a281: swig/hpsdr_swig_doc.i
pygen_swig_5a281: swig/hpsdr_swig.tag
pygen_swig_5a281: swig/hpsdr_swig_doc_swig_docs/xml/index.xml
pygen_swig_5a281: swig/CMakeFiles/pygen_swig_5a281.dir/build.make
.PHONY : pygen_swig_5a281

# Rule to build all files generated by this target.
swig/CMakeFiles/pygen_swig_5a281.dir/build: pygen_swig_5a281
.PHONY : swig/CMakeFiles/pygen_swig_5a281.dir/build

swig/CMakeFiles/pygen_swig_5a281.dir/clean:
	cd /home/tom/gr-hpsdr/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/pygen_swig_5a281.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/pygen_swig_5a281.dir/clean

swig/CMakeFiles/pygen_swig_5a281.dir/depend:
	cd /home/tom/gr-hpsdr/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tom/gr-hpsdr /home/tom/gr-hpsdr/swig /home/tom/gr-hpsdr/build /home/tom/gr-hpsdr/build/swig /home/tom/gr-hpsdr/build/swig/CMakeFiles/pygen_swig_5a281.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/pygen_swig_5a281.dir/depend

