
# xml
SET( XML_COMMON_SRCS
	src/common/dummy.cpp
	src/common/xtixml.cpp )
SOURCE_GROUP( "Common Sources" FILES ${XML_COMMON_SRCS} )
SET( XML_COMMON_HDRS
	include/wx/xml/xml.h
	include/wx/xtixml.h )
SOURCE_GROUP( "Common Headers" FILES ${XML_COMMON_HDRS} )
SET( XML_SRCS src/xml/xml.cpp )
