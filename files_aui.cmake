
# aui
SET( AUI_COMMON_SRCS
	src/aui/auibar.cpp
	src/aui/auibook.cpp
	src/aui/dockart.cpp
	src/aui/floatpane.cpp
	src/aui/framemanager.cpp
	src/aui/tabmdi.cpp
	src/common/dummy.cpp )
SOURCE_GROUP( "Common Sources" FILES ${AUI_COMMON_SRCS} )
SET( AUI_COMMON_HDRS
	include/wx/aui/aui.h
	include/wx/aui/auibar.h
	include/wx/aui/auibook.h
	include/wx/aui/dockart.h
	include/wx/aui/floatpane.h
	include/wx/aui/framemanager.h
	include/wx/aui/tabmdi.h )
SOURCE_GROUP( "Common Headers" FILES ${AUI_COMMON_HDRS} )

IF( WIN32 )

ENDIF( WIN32 )
