
# gl
SET( GL_COMMON_SRCS
	src/common/glcmn.cpp
	src/common/dummy.cpp )
SOURCE_GROUP( "Common Sources" FILES ${GL_COMMON_SRCS} )
SET( GL_COMMON_HDRS
	include/wx/glcanvas.h )
SOURCE_GROUP( "Common Headers" FILES ${GL_COMMON_HDRS} )
IF( WIN32 )
	SET( GL_MSW_SRCS src/msw/glcanvas.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${GL_MSW_SRCS} )
	SET( GL_MSW_HDRS
		include/wx/msw/glcanvas.h 
		include/wx/msw/genrcdefs.h )
	SOURCE_GROUP( "MSW Headers" FILES ${GL_MSW_HDRS} )
ENDIF( WIN32 )
