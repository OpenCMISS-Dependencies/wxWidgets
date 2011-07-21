
# gl
SET( GL_COMMON_SRCS
	src/common/dummy.cpp )
SOURCE_GROUP( "Common Sources" FILES ${GL_COMMON_SRCS} )
IF( WIN32 )
	SET( GL_MSW_SRCS src/msw/glcanvas.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${GL_MSW_SRCS} )
	SET( GL_MSW_HDRS include/wx/msw/glcanvas.h )
	SOURCE_GROUP( "MSW Headers" FILES ${GL_MSW_HDRS} )
ENDIF( WIN32 )
