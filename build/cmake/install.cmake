#############################################################################
# Name:        build/cmake/install.cmake
# Purpose:     Install target CMake file
# Author:      Tobias Taschner
# Created:     2016-10-17
# Copyright:   (c) 2016 wxWidgets development team
# Licence:     wxWindows licence
#############################################################################

if(NOT wxBUILD_INSTALL)
    return()
endif()

install(CODE "message(STATUS \"Installing: Headers...\")")
if(MSVC)
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/wx"
        DESTINATION "include")
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/msvc"
        DESTINATION "include/wx")
else()
    wx_install(
        DIRECTORY "${wxSOURCE_DIR}/include/wx"
        DESTINATION "include")
endif()

# setup header and wx-config
if(MSVC)
    message(STATUS "[[[ wxSETUP_HEADER_PATH: ${wxSETUP_HEADER_PATH}")
    string(REPLACE "${wxOUTPUT_DIR}" "" _INSTALL_PATH ${wxSETUP_HEADER_PATH})
    wx_install(
        DIRECTORY "${wxSETUP_HEADER_PATH}/"
        DESTINATION "include/wx${_INSTALL_PATH}")
else()
    wx_install(
        DIRECTORY "${wxSETUP_HEADER_PATH}"
        DESTINATION "include/wx")

    wx_install(
        FILES "${wxOUTPUT_DIR}/wx/config/${wxBUILD_FILE_ID}"
        DESTINATION "include/wx/config"
        PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                    GROUP_EXECUTE GROUP_READ
                    WORLD_EXECUTE WORLD_READ
        )

#    install(DIRECTORY DESTINATION "bin")
endif()

# uninstall target
if(MSVC_IDE)
    set(UNINST_NAME UNINSTALL)
else()
    set(UNINST_NAME uninstall)
endif()

if(NOT TARGET ${UNINST_NAME})
    # these files are not added to the install manifest
    set(WX_EXTRA_UNINSTALL_FILES
        "${CMAKE_INSTALL_PREFIX}/bin/wx-config"
        "${CMAKE_INSTALL_PREFIX}/bin/wxrc-${wxMAJOR_VERSION}.${wxMINOR_VERSION}"
        )

    configure_file(
        "${wxSOURCE_DIR}/build/cmake/uninstall.cmake.in"
        "${wxBINARY_DIR}/uninstall.cmake"
        IMMEDIATE @ONLY)

    add_custom_target(${UNINST_NAME}
        COMMAND ${CMAKE_COMMAND} -P ${wxBINARY_DIR}/uninstall.cmake)
    get_property(PREDEF_FOLDER GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER)
    if(NOT PREDEF_FOLDER)
        set(PREDEF_FOLDER "CMakePredefinedTargets")
    endif()
    set_target_properties(${UNINST_NAME} PROPERTIES FOLDER "${PREDEF_FOLDER}")
endif()
