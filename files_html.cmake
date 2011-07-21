
# html
SET( HTML_COMMON_SRCS
	src/common/dummy.cpp )
SOURCE_GROUP( "Common Sources" FILES ${HTML_COMMON_SRCS} )
SET( HTML_COMMON_HDRS
	include/wx/htmllbox.h
	include/wx/wxhtml.h )
SOURCE_GROUP( "Common Headers" FILES ${HTML_COMMON_HDRS} )

IF( WIN32 )
	SET( HTML_MSW_SRCS
		src/msw/helpbest.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${HTML_MSW_SRCS} )
	SET( HTML_MSW_HDRS
		include/wx/msw/helpbest.h )
	SOURCE_GROUP( "MSW Headers" FILES ${HTML_MSW_HDRS} )
ENDIF( WIN32 )

SET( HTML_GENERIC_SRCS
	src/generic/htmllbox.cpp )
SOURCE_GROUP( "Generic Sources" FILES ${HTML_GENERIC_SRCS} )

SET( wxHTML_SRCS
	src/html/helpctrl.cpp
	src/html/helpdata.cpp
	src/html/helpdlg.cpp
	src/html/helpfrm.cpp
	src/html/helpwnd.cpp
	src/html/htmlcell.cpp
	src/html/htmlfilt.cpp
	src/html/htmlpars.cpp
	src/html/htmltag.cpp
	src/html/htmlwin.cpp
	src/html/htmprint.cpp
	src/html/m_dflist.cpp
	src/html/m_fonts.cpp
	src/html/m_hline.cpp
	src/html/m_image.cpp
	src/html/m_layout.cpp
	src/html/m_links.cpp
	src/html/m_list.cpp
	src/html/m_pre.cpp
	src/html/m_style.cpp
	src/html/m_tables.cpp
	src/html/winpars.cpp )
SOURCE_GROUP( "wxHTML Sources" FILES ${wxHTML_SRCS} )
SET( wxHTML_HDRS
	include/wx/html/helpctrl.h
	include/wx/html/helpdata.h
	include/wx/html/helpdlg.h
	include/wx/html/helpfrm.h
	include/wx/html/helpwnd.h
	include/wx/html/htmlcell.h
	include/wx/html/htmldefs.h
	include/wx/html/htmlfilt.h
	include/wx/html/htmlpars.h
	include/wx/html/htmlproc.h
	include/wx/html/htmltag.h
	include/wx/html/htmlwin.h
	include/wx/html/htmprint.h
	include/wx/html/m_templ.h
	include/wx/html/winpars.h )
SOURCE_GROUP( "wxHTML Headers" FILES ${wxHTML_HDRS} )

