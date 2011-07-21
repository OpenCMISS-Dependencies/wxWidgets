
# adv
SET( ADV_COMMON_SRCS
	src/common/animatecmn.cpp
	src/common/datavcmn.cpp
	src/common/dummy.cpp
	src/common/taskbarcmn.cpp )
SOURCE_GROUP( "Common Sources" FILES ${ADV_COMMON_SRCS} )
SET( ADV_COMMON_HDRS
	include/wx/aboutdlg.h
	include/wx/animate.h
	include/wx/animdecod.h
	include/wx/bmpcbox.h
	include/wx/calctrl.h
	include/wx/dataview.h
	include/wx/datectrl.h
	include/wx/dateevt.h
	include/wx/dcbuffer.h
	include/wx/grid.h
	include/wx/hyperlink.h
	include/wx/joystick.h
	include/wx/laywin.h
	include/wx/odcombo.h
	include/wx/propdlg.h
	include/wx/sashwin.h
	include/wx/sound.h
	include/wx/splash.h
	include/wx/taskbar.h
	include/wx/tipdlg.h
	include/wx/wave.h
	include/wx/wizard.h )
SOURCE_GROUP( "Common Headers" FILES ${ADV_COMMON_HDRS} )

IF( WIN32 )
	SET( ADV_MSW_SRCS
		src/msw/aboutdlg.cpp
		src/msw/datectrl.cpp
		src/msw/joystick.cpp
		src/msw/sound.cpp
		src/msw/taskbar.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${ADV_MSW_SRCS} )
	SET( ADV_MSW_HDRS
		include/wx/msw/datectrl.h
		include/wx/msw/joystick.h
		include/wx/msw/sound.h
		include/wx/msw/taskbar.h )
	SOURCE_GROUP( "MSW Headers" FILES ${ADV_MSW_HDRS} )
ENDIF( WIN32 )
SET( ADV_GENERIC_SRCS
	src/generic/aboutdlgg.cpp
	src/generic/animateg.cpp
	src/generic/bmpcboxg.cpp
	src/generic/calctrl.cpp
	src/generic/datavgen.cpp
	src/generic/datectlg.cpp
	src/generic/grid.cpp
	src/generic/gridctrl.cpp
	src/generic/gridsel.cpp
	src/generic/helpext.cpp
	src/generic/hyperlink.cpp
	src/generic/laywin.cpp
	src/generic/odcombo.cpp
	src/generic/propdlg.cpp
	src/generic/sashwin.cpp
	src/generic/splash.cpp
	src/generic/tipdlg.cpp
	src/generic/wizard.cpp )
SOURCE_GROUP( "Generic Sources" FILES ${ADV_GENERIC_SRCS} )
SET( ADV_GENERIC_HDRS
	include/wx/generic/aboutdlgg.h
	include/wx/generic/animate.h
	include/wx/generic/bmpcbox.h
	include/wx/generic/calctrl.h
	include/wx/generic/dataview.h
	include/wx/generic/datectrl.h
	include/wx/generic/grid.h
	include/wx/generic/gridctrl.h
	include/wx/generic/gridsel.h
	include/wx/generic/helpext.h
	include/wx/generic/laywin.h
	include/wx/generic/propdlg.h
	include/wx/generic/sashwin.h
	include/wx/generic/splash.h
	include/wx/generic/wizard.h )
SOURCE_GROUP( "Generic Headers" FILES ${ADV_GENERIC_HDRS} )
