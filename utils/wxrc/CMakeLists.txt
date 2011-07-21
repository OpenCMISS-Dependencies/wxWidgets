
 # ***** BEGIN LICENSE BLOCK *****
 # Version: MPL 1.1/GPL 2.0/LGPL 2.1
 #
 # The contents of this file are subject to the Mozilla Public License Version
 # 1.1 (the "License"); you may not use this file except in compliance with
 # the License. You may obtain a copy of the License at
 # http://www.mozilla.org/MPL/
 #
 # Software distributed under the License is distributed on an "AS IS" basis,
 # WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 # for the specific language governing rights and limitations under the
 # License.
 #
 # The Original Code is cmgui
 #
 # The Initial Developer of the Original Code is
 # Auckland Uniservices Ltd, Auckland, New Zealand.
 # Portions created by the Initial Developer are Copyright (C) 2005
 # the Initial Developer. All Rights Reserved.
 #
 # Contributor(s): 
 #
 # Alternatively, the contents of this file may be used under the terms of
 # either the GNU General Public License Version 2 or later (the "GPL"), or
 # the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 # in which case the provisions of the GPL or the LGPL are applicable instead
 # of those above. If you wish to allow use of your version of this file only
 # under the terms of either the GPL or the LGPL, and not to allow others to
 # use your version of this file under the terms of the MPL, indicate your
 # decision by deleting the provisions above and replace them with the notice
 # and other provisions required by the GPL or the LGPL. If you do not delete
 # the provisions above, a recipient may use your version of this file under
 # the terms of any one of the MPL, the GPL or the LGPL.
 #
 # ***** END LICENSE BLOCK ***** */

# Set the minimum version of cmake required to 2.6
CMAKE_MINIMUM_REQUIRED( VERSION 2.6 )

PROJECT( wxrc_exe )

SET( WXRC_MAJOR_VERSION "2" )
SET( WXRC_MINOR_VERSION "8" )
SET( WXRC_PATCH_VERSION "10" )

# Set up build options
IF( NOT DEFINED WXRC_BUILD_TYPE )
	SET( WXRC_BUILD_TYPE "Release" )
ENDIF( NOT DEFINED WXRC_BUILD_TYPE )

IF( NOT DEFINED WXRC_INSTALL_PREFIX )
	IF(WIN32)
		SET( WXRC_INSTALL_PREFIX c:/WXRC-${WXRC_MAJOR_VERSION}.${WXRC_MINOR_VERSION}.${WXRC_PATCH_VERSION} )
	ELSE(WIN32)
		SET( WXRC_INSTALL_PREFIX /usr/local )
	ENDIF(WIN32)
ENDIF( NOT DEFINED WXRC_INSTALL_PREFIX )

SET( WXRC_BUILD_TYPE ${WXRC_BUILD_TYPE} CACHE STRING "What configuration do you want to build: Debug, Release, MinSizeRel, RelWithDebugInfo" )
SET( CMAKE_BUILD_TYPE ${WXRC_BUILD_TYPE} CACHE INTERNAL "Internalise CMAKE_BUILD_TYPE, manipulate via WXRC_BUILD_TYPE" FORCE )
SET( WXRC_INSTALL_PREFIX ${WXRC_INSTALL_PREFIX} CACHE PATH "Where are your Cmgui dependent libraries installed?" )
SET( CMAKE_INSTALL_PREFIX ${WXRC_INSTALL_PREFIX} CACHE INTERNAL "Internalise CMAKE_INSTALL_PREFIX, manipulate via WXRC_INSTALL_PREFIX" FORCE )

# Set debug postfix
SET( CMAKE_DEBUG_POSTFIX "d" )

# Configure setup header file
#IF( WXWIDGETS_UNIVERSAL )
#	SET( SETUP_HDR ${CMAKE_CURRENT_SOURCE_DIR}/../../include/wx/univ/setup.h )
#ELSE( WXWIDGETS_UNIVERSAL )
#	IF( WIN32 )
#		SET( SETUP_HDR ${CMAKE_CURRENT_SOURCE_DIR}/../../include/wx/msw/setup.h )
#	ENDIF( WIN32 )
#ENDIF( WXWIDGETS_UNIVERSAL )
#SOURCE_GROUP( "Setup Headers" FILES ${SETUP_HDR} )

#CONFIGURE_FILE( ${SETUP_HDR}
#	${CMAKE_CURRENT_BINARY_DIR}/include/wx/setup.h COPYONLY )

#MESSAGE( STATUS "SD ${CMAKE_CURRENT_SOURCE_DIR}" )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_SOURCE_DIR}/../../include )
INCLUDE_DIRECTORIES( ${CMAKE_CURRENT_BINARY_DIR}/include )

IF( WIN32 AND MSVC )
	# Not so good these resources for vis studio 2008
	#SET( WXRC_MSVC_RES wxrc.rc )
ENDIF( WIN32 AND MSVC )

SET( WXRC_SRCS wxrc.cpp )

ADD_DEFINITIONS( -D__WXMSW__ )

SET( wxrc_TARGET wxrc )
ADD_EXECUTABLE( ${wxrc_TARGET} ${WXRC_SRCS} ${WXRC_MSVC_RES} )

SET_TARGET_PROPERTIES( ${wxrc_TARGET} PROPERTIES 
	COMPILE_DEFINITIONS_DEBUG __WXDEBUG__ )

TARGET_LINK_LIBRARIES( ${wxrc_TARGET} wxbase28 wxbase28_xml wxexpat )

INSTALL( TARGETS ${wxrc_TARGET} DESTINATION bin )

