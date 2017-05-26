
# aui
SET( AUI_COMMON_SRCS
	src/common/dummy.cpp
    src/aui/auibar.cpp
    src/aui/auibook.cpp
    src/aui/dockart.cpp
    src/aui/floatpane.cpp
    src/aui/framemanager.cpp
    src/aui/tabart.cpp
    src/aui/tabmdi.cpp
    src/xrc/xh_auinotbk.cpp
    src/xrc/xh_auitoolb.cpp
    src/aui/tabartmsw.cpp
    src/aui/barartmsw.cpp)
SOURCE_GROUP( "Common Sources" FILES ${AUI_COMMON_SRCS} )
SET( AUI_COMMON_HDRS
    include/wx/aui/aui.h
    include/wx/aui/auibar.h
    include/wx/aui/auibook.h
    include/wx/aui/dockart.h
    include/wx/aui/floatpane.h
    include/wx/aui/framemanager.h
    include/wx/aui/tabart.h
    include/wx/aui/tabmdi.h
    include/wx/xrc/xh_auinotbk.h
    include/wx/xrc/xh_auitoolb.h
    include/wx/aui/tabartmsw.h
    include/wx/aui/barartmsw.h )
SOURCE_GROUP( "Common Headers" FILES ${AUI_COMMON_HDRS} )
