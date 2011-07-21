
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

PROJECT( regex )

SET( REGEX_MAJOR_VERSION "2" )
SET( REGEX_MINOR_VERSION "8" )
SET( REGEX_PATCH_VERSION "10" )

# Set up build options
IF( NOT DEFINED REGEX_BUILD_TYPE )
	SET( REGEX_BUILD_TYPE "Release" )
ENDIF( NOT DEFINED REGEX_BUILD_TYPE )

IF( NOT DEFINED REGEX_INSTALL_PREFIX )
	IF(WIN32)
		SET( REGEX_INSTALL_PREFIX c:/REGEX-${REGEX_MAJOR_VERSION}.${REGEX_MINOR_VERSION}.${REGEX_PATCH_VERSION} )
	ELSE(WIN32)
		SET( REGEX_INSTALL_PREFIX /usr/local )
	ENDIF(WIN32)
ENDIF( NOT DEFINED REGEX_INSTALL_PREFIX )

SET( LIBRARY_TYPE_STRING "STATIC" )
IF( DEFINED REGEX_LIBRARY_TYPE )
	SET( LIBRARY_TYPE_STRING ${REGEX_LIBRARY_TYPE} )
ENDIF( DEFINED REGEX_LIBRARY_TYPE )
SET( REGEX_LIBRARY_TYPE ${LIBRARY_TYPE_STRING} CACHE STRING "What type of library is required [SHARED | STATIC | MODULE ]" )

SET( REGEX_BUILD_TYPE ${REGEX_BUILD_TYPE} CACHE STRING "What configuration do you want to build: Debug, Release, MinSizeRel, RelWithDebugInfo" )
SET( CMAKE_BUILD_TYPE ${REGEX_BUILD_TYPE} CACHE INTERNAL "Internalise CMAKE_BUILD_TYPE, manipulate via REGEX_BUILD_TYPE" FORCE )
SET( REGEX_INSTALL_PREFIX ${REGEX_INSTALL_PREFIX} CACHE PATH "Where are your Cmgui dependent libraries installed?" )
SET( CMAKE_INSTALL_PREFIX ${REGEX_INSTALL_PREFIX} CACHE INTERNAL "Internalise CMAKE_INSTALL_PREFIX, manipulate via REGEX_INSTALL_PREFIX" FORCE )

# Set debug postfix
SET( CMAKE_DEBUG_POSTFIX "d" )

SET( REGEX_SRCS regcomp.c
	regerror.c
	regexec.c
	regfree.c )
SET( REGEX_PRIVATE_HDRS
	regcustom.h
	regerrs.h
	regex.h
	regguts.h )
SET( REGEX_PUBLIC_HDRS
	regex.h )

ADD_LIBRARY( wxregex ${REGEX_LIBRARY_TYPE}
	${REGEX_SRCS} ${REGEX_PRIVATE_HDRS} ${REGEX_PUBLIC_HDRS} )


