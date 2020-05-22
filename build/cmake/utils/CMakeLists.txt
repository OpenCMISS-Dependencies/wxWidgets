#############################################################################
# Name:        build/cmake/utils/CMakeLists.txt
# Purpose:     CMake script for utilities
# Author:      Tobias Taschner
# Created:     2016-10-21
# Copyright:   (c) 2016 wxWidgets development team
# Licence:     wxWindows licence
#############################################################################

if(wxUSE_XRC)
    add_executable(wxrc "${wxSOURCE_DIR}/utils/wxrc/wxrc.cpp")
    wx_set_common_target_properties(wxrc)
    if(wxBUILD_SHARED)
        target_compile_definitions(wxrc PRIVATE WXUSINGDLL)
    endif()
    if(wxUSE_XML)
        wx_exe_link_libraries(wxrc xml)
    endif()
    wx_exe_link_libraries(wxrc base)

    set_target_properties(wxrc PROPERTIES FOLDER "Utilities" OUTPUT_NAME wxrc-${wxMAJOR_VERSION}.${wxMINOR_VERSION})

    wx_install(TARGETS wxrc EXPORT ${wxWidgets_EXPORT_SET_NAME} RUNTIME DESTINATION bin)
    if(NOT MSVC)
        install(CODE "execute_process( \
            COMMAND ${CMAKE_COMMAND} -E create_symlink \
            ${wxINSTALL_PREFIX}/bin/wxrc-${wxMAJOR_VERSION}.${wxMINOR_VERSION}${CMAKE_EXECUTABLE_SUFFIX} \
            ${wxINSTALL_PREFIX}/bin/wxrc${CMAKE_EXECUTABLE_SUFFIX} \
            )"
        )
    endif()
endif()

# TODO: build targets for other utils
