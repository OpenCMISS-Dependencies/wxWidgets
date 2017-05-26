
# adv
SET( ADV_COMMON_SRCS
    src/common/animatecmn.cpp
    src/common/bmpcboxcmn.cpp
    src/common/calctrlcmn.cpp
    src/common/datavcmn.cpp
    src/common/dummy.cpp
    src/common/gridcmn.cpp
    src/common/hyperlnkcmn.cpp
    src/common/notifmsgcmn.cpp
    src/common/odcombocmn.cpp
    src/common/richtooltipcmn.cpp
    src/common/taskbarcmn.cpp
    src/common/addremovectrl.cpp )
SOURCE_GROUP( "Common Sources" FILES ${ADV_COMMON_SRCS} )
SET( ADV_COMMON_HDRS
    include/wx/aboutdlg.h
    include/wx/animate.h
    include/wx/bannerwindow.h
    include/wx/bmpcbox.h
    include/wx/calctrl.h
    include/wx/commandlinkbutton.h
    include/wx/dataview.h
    include/wx/datectrl.h
    include/wx/dateevt.h
    include/wx/datetimectrl.h
    include/wx/dcbuffer.h
    include/wx/dvrenderers.h
    include/wx/editlbox.h
    include/wx/grid.h
    include/wx/hyperlink.h
    include/wx/joystick.h
    include/wx/laywin.h
    include/wx/notifmsg.h
    include/wx/odcombo.h
    include/wx/propdlg.h
    include/wx/richtooltip.h
    include/wx/sashwin.h
    include/wx/sound.h
    include/wx/splash.h
    include/wx/taskbar.h
    include/wx/timectrl.h
    include/wx/tipdlg.h
    include/wx/treelist.h
    include/wx/wizard.h
    include/wx/addremovectrl.h
    include/wx/activityindicator.h
    include/wx/generic/activityindicator.h )
SOURCE_GROUP( "Common Headers" FILES ${ADV_COMMON_HDRS} )

IF( WIN32 )
	SET( ADV_MSW_SRCS
	    src/msw/aboutdlg.cpp
	    src/msw/bmpcbox.cpp
	    src/msw/calctrl.cpp
	    src/msw/commandlinkbutton.cpp
	    src/msw/datecontrols.cpp
	    src/msw/datectrl.cpp
	    src/msw/datetimectrl.cpp
	    src/msw/hyperlink.cpp
	    src/msw/joystick.cpp
	    src/msw/notifmsg.cpp
	    src/msw/richtooltip.cpp
	    src/msw/sound.cpp
	    src/msw/taskbar.cpp
	    src/msw/timectrl.cpp
	    src/msw/rt/notifmsgrt.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${ADV_MSW_SRCS} )
	SET( ADV_MSW_HDRS
	    include/wx/msw/bmpcbox.h
	    include/wx/msw/calctrl.h
	    include/wx/msw/commandlinkbutton.h
	    include/wx/msw/datectrl.h
	    include/wx/msw/datetimectrl.h
	    include/wx/msw/genrcdefs.h
	    include/wx/msw/hyperlink.h
	    include/wx/msw/joystick.h
	    include/wx/msw/sound.h
	    include/wx/msw/taskbar.h
	    include/wx/msw/timectrl.h )
	SOURCE_GROUP( "MSW Headers" FILES ${ADV_MSW_HDRS} )
ENDIF( WIN32 )
SET( ADV_GENERIC_SRCS
    src/generic/aboutdlgg.cpp
    src/generic/animateg.cpp
    src/generic/bannerwindow.cpp
    src/generic/bmpcboxg.cpp
    src/generic/calctrlg.cpp
    src/generic/commandlinkbuttong.cpp
    src/generic/datavgen.cpp
    src/generic/datectlg.cpp
    src/generic/editlbox.cpp
    src/generic/grid.cpp
    src/generic/gridctrl.cpp
    src/generic/grideditors.cpp
    src/generic/gridsel.cpp
    src/generic/helpext.cpp
    src/generic/hyperlinkg.cpp
    src/generic/laywin.cpp
    src/generic/notifmsgg.cpp
    src/generic/odcombo.cpp
    src/generic/propdlg.cpp
    src/generic/richtooltipg.cpp
    src/generic/sashwin.cpp
    src/generic/splash.cpp
    src/generic/timectrlg.cpp
    src/generic/tipdlg.cpp
    src/generic/treelist.cpp
    src/generic/wizard.cpp
    src/generic/activityindicator.cpp )
SOURCE_GROUP( "Generic Sources" FILES ${ADV_GENERIC_SRCS} )
SET( ADV_GENERIC_HDRS
    include/wx/generic/aboutdlgg.h
    include/wx/generic/animate.h
    include/wx/generic/bmpcbox.h
    include/wx/generic/calctrlg.h
    include/wx/generic/dataview.h
    include/wx/generic/datectrl.h
    include/wx/generic/dvrenderer.h
    include/wx/generic/dvrenderers.h
    include/wx/generic/grid.h
    include/wx/generic/gridctrl.h
    include/wx/generic/grideditors.h
    include/wx/generic/gridsel.h
    include/wx/generic/helpext.h
    include/wx/generic/hyperlink.h
    include/wx/generic/laywin.h
    include/wx/generic/notifmsg.h
    include/wx/generic/propdlg.h
    include/wx/generic/sashwin.h
    include/wx/generic/splash.h
    include/wx/generic/timectrl.h
    include/wx/generic/wizard.h )
SOURCE_GROUP( "Generic Headers" FILES ${ADV_GENERIC_HDRS} )
