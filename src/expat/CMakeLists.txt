
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

PROJECT( expat )

SET( EXPAT_MAJOR_VERSION "2" )
SET( EXPAT_MINOR_VERSION "8" )
SET( EXPAT_PATCH_VERSION "10" )

# Set up build options
IF( NOT DEFINED EXPAT_BUILD_TYPE )
	SET( EXPAT_BUILD_TYPE "Release" )
ENDIF( NOT DEFINED EXPAT_BUILD_TYPE )

IF( NOT DEFINED EXPAT_INSTALL_PREFIX )
	IF(WIN32)
		SET( EXPAT_INSTALL_PREFIX c:/EXPAT-${EXPAT_MAJOR_VERSION}.${EXPAT_MINOR_VERSION}.${EXPAT_PATCH_VERSION} )
	ELSE(WIN32)
		SET( EXPAT_INSTALL_PREFIX /usr/local )
	ENDIF(WIN32)
ENDIF( NOT DEFINED EXPAT_INSTALL_PREFIX )

SET( LIBRARY_TYPE_STRING "STATIC" )
IF( DEFINED EXPAT_LIBRARY_TYPE )
	SET( LIBRARY_TYPE_STRING ${EXPAT_LIBRARY_TYPE} )
ENDIF( DEFINED EXPAT_LIBRARY_TYPE )
SET( EXPAT_LIBRARY_TYPE ${LIBRARY_TYPE_STRING} CACHE STRING "What type of library is required [SHARED | STATIC | MODULE ]" )

SET( EXPAT_BUILD_TYPE ${EXPAT_BUILD_TYPE} CACHE STRING "What configuration do you want to build: Debug, Release, MinSizeRel, RelWithDebugInfo" )
SET( CMAKE_BUILD_TYPE ${EXPAT_BUILD_TYPE} CACHE INTERNAL "Internalise CMAKE_BUILD_TYPE, manipulate via EXPAT_BUILD_TYPE" FORCE )
SET( EXPAT_INSTALL_PREFIX ${EXPAT_INSTALL_PREFIX} CACHE PATH "Where are your Cmgui dependent libraries installed?" )
SET( CMAKE_INSTALL_PREFIX ${EXPAT_INSTALL_PREFIX} CACHE INTERNAL "Internalise CMAKE_INSTALL_PREFIX, manipulate via EXPAT_INSTALL_PREFIX" FORCE )

INCLUDE( CheckSymbolExists )
INCLUDE( CheckFunctionExists )
INCLUDE( CheckIncludeFile )
INCLUDE( CheckIncludeFiles )
INCLUDE( CheckTypeSize )
INCLUDE( TestBigEndian )

CHECK_INCLUDE_FILE( dlfcn.h HAVE_DLFCN_H )
CHECK_INCLUDE_FILE( fcntl.h HAVE_FCNTL_H )
CHECK_INCLUDE_FILE( inttypes.h HAVE_INTTYPES_H )
CHECK_INCLUDE_FILE( memory.h HAVE_MEMORY_H )
CHECK_INCLUDE_FILE( stdarg.h HAVE_STDARG_H )
CHECK_INCLUDE_FILE( stdint.h HAVE_STDINT_H )
CHECK_INCLUDE_FILE( stdlib.h HAVE_STDLIB_H )
CHECK_INCLUDE_FILE( string.h HAVE_STRING_H )
CHECK_INCLUDE_FILE( strings.h HAVE_STRINGS_H )
CHECK_INCLUDE_FILE( sys/stat.h HAVE_SYS_STAT_H )
CHECK_INCLUDE_FILE( sys/types.h HAVE_SYS_TYPES_H )
CHECK_INCLUDE_FILE( unistd.h HAVE_UNISTD_H )
CHECK_INCLUDE_FILES( "dlfcn.h;stdint.h;stddef.h;inttypes.h;stdlib.h;strings.h;string.h;float.h" StandardHeadersExist )
IF( StandardHeadersExist )
	CHECK_SYMBOL_EXISTS( memchr string.h memchrExists )
	IF( memchrExists )
		CHECK_SYMBOL_EXISTS( free stdlib.h STDC_HEADERS )
	ENDIF( memchrExists )
ENDIF( StandardHeadersExist )
CHECK_FUNCTION_EXISTS( bcopy HAVE_BCOPY )
CHECK_FUNCTION_EXISTS( getpagesize HAVE_GETPAGESIZE )
CHECK_FUNCTION_EXISTS( memmove HAVE_MEMMOVE )
CHECK_FUNCTION_EXISTS( mmap HAVE_MMAP )
CHECK_TYPE_SIZE( off_t SIZEOF_OFF_T )
IF( NOT SIZEOF_OFF_T )
	SET( off_t long )
ENDIF( NOT SIZEOF_OFF_T )
CHECK_TYPE_SIZE( size_t SIZEOF_SIZE_T )
IF( NOT SIZEOF_SIZE_T )
	SET( size_t unsigned )
ENDIF( NOT SIZEOF_SIZE_T )
TEST_BIG_ENDIAN( WORDS_BIGENDIAN )
IF( WORDS_BIGENDIAN )
	SET( BYTEORDER 4321 )
ELSE( WORDS_BIGENDIAN )
	SET( BYTEORDER 1234 )
ENDIF( WORDS_BIGENDIAN )
SET( XML_CONTEXT_BYTES 1024 )
SET( XML_DTD TRUE )
SET( XML_NS 1 )

SET( PACKAGE_BUGREPORT \"here\" )
SET( PACKAGE_NAME \"expat\" )
SET( PACKAGE_STRING \"expat\" )
SET( PACKAGE_TARNAME \"expat\" )
SET( PACKAGE_VERSION \"0.0.0\" )

CONFIGURE_FILE( expat_config.h.cmake
	${PROJECT_BINARY_DIR}/include/expat_config.h )

INCLUDE_DIRECTORIES( ${PROJECT_BINARY_DIR}/include )
INCLUDE_DIRECTORIES( lib )

SET( EXPAT_SRCS
	lib/xmlparse.c
	lib/xmlrole.c
	lib/xmltok.c )
SET( EXPAT_PRIVATE_HDRS
	lib/ascii.h
	lib/asciitab.h
#	lib/dosconfig.h
	lib/iasciitab.h
	lib/internal.h
	lib/latin1tab.h
#	lib/macconfig.h
	lib/nametab.h
#	lib/os2config.h
	lib/utf8tab.h
#	lib/winconfig.h
	lib/xmlrole.h
	lib/xmltok.h )
SET( EXPAT_PUBLIC_HDRS
	lib/expat.h
	${PROJECT_BINARY_DIR}/include/expat_config.h )

SET( wxexpat_TARGET wxexpat )
ADD_LIBRARY( ${wxexpat_TARGET} ${EXPAT_LIBRARY_TYPE}
	${EXPAT_SRCS} ${EXPAT_PRIVATE_HDRS} ${EXPAT_PUBLIC_HDRS} )
SET_TARGET_PROPERTIES( ${wxexpat_TARGET} PROPERTIES PROJECT_LABEL xrc
	COMPILE_DEFINITIONS_DEBUG "__WXDEBUG__" 
	OUTPUT_NAME_DEBUG ${wxexpat_TARGET}d )
INSTALL( TARGETS ${wxexpat_TARGET} EXPORT wxWidgets-targets ${INSTALL_LIBRARY_TYPE}
	DESTINATION lib )
INSTALL( FILES ${EXPAT_PUBLIC_HDRS} DESTINATION include )
IF( WIN32 )
	GET_TARGET_PROPERTY( LIBRARY_OUTPUT_NAME_DEBUG ${wxexpat_TARGET} OUTPUT_NAME_DEBUG )
	IF( "${CMAKE_GENERATOR}" STREQUAL "NMake Makefiles" )
		SET( DEBUG_DATABASE_FILE ${CMAKE_CURRENT_BINARY_DIR}/${LIBRARY_OUTPUT_NAME_DEBUG}.pdb )
	ELSE( "${CMAKE_GENERATOR}" STREQUAL "NMake Makefiles" )
		SET( DEBUG_DATABASE_FILE ${CMAKE_CURRENT_BINARY_DIR}/Debug/${LIBRARY_OUTPUT_NAME_DEBUG}.pdb )
	ENDIF( "${CMAKE_GENERATOR}" STREQUAL "NMake Makefiles" )
	INSTALL( FILES ${DEBUG_DATABASE_FILE} 
		DESTINATION lib 
		CONFIGURATIONS Debug )
ENDIF( WIN32 )
