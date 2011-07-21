
# icon resources

IF( WIN32 )
	FILE( GLOB ICON_RESOURCES include/wx/msw/*.ico )
	FILE( GLOB CUR_RESOURCES include/wx/msw/*.cur )
	FILE( GLOB BMP_RESOURCES include/wx/msw/*.bmp )
	FILE( GLOB RC_RESOURCES include/wx/msw/*.rc )
ENDIF( WIN32 )
