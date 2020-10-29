
if( NOT DEFINED _@UPPER_PROJECT_NAME@_CONFIG_CMAKE )
    set( _@UPPER_PROJECT_NAME@_CONFIG_CMAKE TRUE )
    get_filename_component( SELF_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH )
    include(${SELF_DIR}/wxwidgets-config-dependencies.cmake)
    include(${SELF_DIR}/@PROJECT_NAME@-targets-@wxBUILD_FILE_ID@.cmake )
    set(@UPPER_PROJECT_NAME@_FOUND TRUE )
    set(@PROJECT_NAME@_FOUND TRUE )
endif()

get_target_property(wxWidgets_wxrc_EXECUTABLE wxWidgets::wxrc IMPORTED_LOCATION_RELEASE)

#
# WX_SPLIT_ARGUMENTS_ON(<keyword> <left> <right> <arg1> <arg2> ...)
#
# Sets <left> and <right> to contain arguments to the left and right,
# respectively, of <keyword>.
#
# Example usage:
#  function(WXWIDGETS_ADD_RESOURCES outfiles)
#    WX_SPLIT_ARGUMENTS_ON(OPTIONS wxrc_files wxrc_options ${ARGN})
#    ...
#  endfunction()
#
#  WXWIDGETS_ADD_RESOURCES(sources ${xrc_files} OPTIONS -e -o file.C)
#
# NOTE: This is a generic piece of code that should be renamed to
# SPLIT_ARGUMENTS_ON and put in a file serving the same purpose as
# FindPackageStandardArgs.cmake. At the time of this writing
# FindQt4.cmake has a QT4_EXTRACT_OPTIONS, which I basically copied
# here a bit more generalized. So, there are already two find modules
# using this approach.
#
function(WX_SPLIT_ARGUMENTS_ON _keyword _leftvar _rightvar)
  # FIXME: Document that the input variables will be cleared.
  #list(APPEND ${_leftvar}  "")
  #list(APPEND ${_rightvar} "")
  set(${_leftvar}  "")
  set(${_rightvar} "")

  set(_doing_right FALSE)
  foreach(element ${ARGN})
    if("${element}" STREQUAL "${_keyword}")
      set(_doing_right TRUE)
    else()
      if(_doing_right)
        list(APPEND ${_rightvar} "${element}")
      else()
        list(APPEND ${_leftvar} "${element}")
      endif()
    endif()
  endforeach()

  set(${_leftvar}  ${${_leftvar}}  PARENT_SCOPE)
  set(${_rightvar} ${${_rightvar}} PARENT_SCOPE)
endfunction()

#
# WX_GET_DEPENDENCIES_FROM_XML(
#   <depends>
#   <match_pattern>
#   <clean_pattern>
#   <xml_contents>
#   <depends_path>
#   )
#
# FIXME: Add documentation here...
#
function(WX_GET_DEPENDENCIES_FROM_XML
    _depends
    _match_patt
    _clean_patt
    _xml_contents
    _depends_path
    )

  string(REGEX MATCHALL
    ${_match_patt}
    dep_file_list
    "${${_xml_contents}}"
    )
  foreach(dep_file ${dep_file_list})
    string(REGEX REPLACE ${_clean_patt} "" dep_file "${dep_file}")

    # make the file have an absolute path
    if(NOT IS_ABSOLUTE "${dep_file}")
      set(dep_file "${${_depends_path}}/${dep_file}")
    endif()

    # append file to dependency list
    list(APPEND ${_depends} "${dep_file}")
  endforeach()

  set(${_depends} ${${_depends}} PARENT_SCOPE)
endfunction()

#
# WXWIDGETS_ADD_RESOURCES(<sources> <xrc_files>
#                         OPTIONS <options> [NO_CPP_CODE])
#
# Adds a custom command for resource file compilation of the
# <xrc_files> and appends the output files to <sources>.
#
# Example usages:
#   WXWIDGETS_ADD_RESOURCES(sources xrc/main_frame.xrc)
#   WXWIDGETS_ADD_RESOURCES(sources ${xrc_files} OPTIONS -e -o altname.cxx)
#
function(WXWIDGETS_ADD_RESOURCES _outfiles)
  WX_SPLIT_ARGUMENTS_ON(OPTIONS rc_file_list rc_options ${ARGN})

  # Parse files for dependencies.
  set(rc_file_list_abs "")
  set(rc_depends       "")
  foreach(rc_file ${rc_file_list})
    get_filename_component(depends_path ${rc_file} PATH)

    get_filename_component(rc_file_abs ${rc_file} ABSOLUTE)
    list(APPEND rc_file_list_abs "${rc_file_abs}")

    # All files have absolute paths or paths relative to the location
    # of the rc file.
    file(READ "${rc_file_abs}" rc_file_contents)

    # get bitmap/bitmap2 files
    WX_GET_DEPENDENCIES_FROM_XML(
      rc_depends
      "<bitmap[^<]+"
      "^<bitmap[^>]*>"
      rc_file_contents
      depends_path
      )

    # get url files
    WX_GET_DEPENDENCIES_FROM_XML(
      rc_depends
      "<url[^<]+"
      "^<url[^>]*>"
      rc_file_contents
      depends_path
      )

    # get wxIcon files
    WX_GET_DEPENDENCIES_FROM_XML(
      rc_depends
      "<object[^>]*class=\"wxIcon\"[^<]+"
      "^<object[^>]*>"
      rc_file_contents
      depends_path
      )
  endforeach()

  #
  # Parse options.
  #
  # If NO_CPP_CODE option specified, then produce .xrs file rather
  # than a .cpp file (i.e., don't add the default --cpp-code option).
  list(FIND rc_options NO_CPP_CODE index)
  if(index EQUAL -1)
    list(APPEND rc_options --cpp-code)
    # wxrc's default output filename for cpp code.
    set(outfile resource.cpp)
  else()
    list(REMOVE_AT rc_options ${index})
    # wxrc's default output filename for xrs file.
    set(outfile resource.xrs)
  endif()

  # Get output name for use in ADD_CUSTOM_COMMAND.
  # - short option scanning
  list(FIND rc_options -o index)
  if(NOT index EQUAL -1)
    math(EXPR filename_index "${index} + 1")
    list(GET rc_options ${filename_index} outfile)
    #list(REMOVE_AT rc_options ${index} ${filename_index})
  endif()
  # - long option scanning
  string(REGEX MATCH "--output=[^;]*" outfile_opt "${rc_options}")
  if(outfile_opt)
    string(REPLACE "--output=" "" outfile "${outfile_opt}")
  endif()
  #string(REGEX REPLACE "--output=[^;]*;?" "" rc_options "${rc_options}")
  #string(REGEX REPLACE ";$" "" rc_options "${rc_options}")

  if(NOT IS_ABSOLUTE "${outfile}")
    set(outfile "${CMAKE_CURRENT_BINARY_DIR}/${outfile}")
  endif()
  add_custom_command(
    OUTPUT "${outfile}"
    COMMAND ${wxWidgets_wxrc_EXECUTABLE} ${rc_options} ${rc_file_list_abs}
    DEPENDS ${rc_file_list_abs} ${rc_depends}
    )

  # Add generated header to output file list.
  list(FIND rc_options -e short_index)
  list(FIND rc_options --extra-cpp-code long_index)
  if(NOT short_index EQUAL -1 OR NOT long_index EQUAL -1)
    get_filename_component(outfile_ext ${outfile} EXT)
    string(REPLACE "${outfile_ext}" ".h" outfile_header "${outfile}")
    list(APPEND ${_outfiles} "${outfile_header}")
    set_source_files_properties(
      "${outfile_header}" PROPERTIES GENERATED TRUE
      )
  endif()

  # Add generated file to output file list.
  list(APPEND ${_outfiles} "${outfile}")

  set(${_outfiles} ${${_outfiles}} PARENT_SCOPE)
endfunction()

