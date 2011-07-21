
# core
SET( CORE_COMMON_SRCS
	src/common/accesscmn.cpp
	src/common/anidecod.cpp
	src/common/appcmn.cpp
	src/common/artprov.cpp
	src/common/artstd.cpp
	src/common/bmpbase.cpp
	src/common/bookctrl.cpp
	src/common/choiccmn.cpp
	src/common/clipcmn.cpp
	src/common/clrpickercmn.cpp
	src/common/cmdproc.cpp
	src/common/cmndata.cpp
	src/common/colourcmn.cpp
	src/common/combocmn.cpp
	src/common/containr.cpp
	src/common/cshelp.cpp
	src/common/ctrlcmn.cpp
	src/common/ctrlsub.cpp
	src/common/datacmn.cpp
	src/common/dcbase.cpp
	src/common/dcbufcmn.cpp
	src/common/dcgraph.cpp
	src/common/dlgcmn.cpp
	src/common/dndcmn.cpp
	src/common/dobjcmn.cpp
	src/common/docmdi.cpp
	src/common/docview.cpp
	src/common/dpycmn.cpp
	src/common/dseldlg.cpp
	src/common/dummy.cpp
	src/common/effects.cpp
	src/common/event.cpp
	src/common/evtloopcmn.cpp
	src/common/fddlgcmn.cpp
	src/common/filepickercmn.cpp
	src/common/fldlgcmn.cpp
	src/common/fontcmn.cpp
	src/common/fontenumcmn.cpp
	src/common/fontmap.cpp
	src/common/fontpickercmn.cpp
	src/common/framecmn.cpp
	src/common/fs_mem.cpp
	src/common/gaugecmn.cpp
	src/common/gbsizer.cpp
	src/common/gdicmn.cpp
	src/common/geometry.cpp
	src/common/gifdecod.cpp
	src/common/graphcmn.cpp
	src/common/helpbase.cpp
	src/common/iconbndl.cpp
	src/common/imagall.cpp
	src/common/imagbmp.cpp
	src/common/image.cpp
	src/common/imagfill.cpp
	src/common/imaggif.cpp
	src/common/imagiff.cpp
	src/common/imagjpeg.cpp
	src/common/imagpcx.cpp
	src/common/imagpng.cpp
	src/common/imagpnm.cpp
	src/common/imagtga.cpp
	src/common/imagtiff.cpp
	src/common/imagxpm.cpp
	src/common/layout.cpp
	src/common/lboxcmn.cpp
	src/common/listctrlcmn.cpp
	src/common/matrix.cpp
	src/common/menucmn.cpp
	src/common/msgout.cpp
	src/common/nbkbase.cpp
	src/common/overlaycmn.cpp
	src/common/paper.cpp
	src/common/pickerbase.cpp
	src/common/popupcmn.cpp
	src/common/prntbase.cpp
	src/common/quantize.cpp
	src/common/radiocmn.cpp
	src/common/rendcmn.cpp
	src/common/rgncmn.cpp
	src/common/settcmn.cpp
	src/common/sizer.cpp
	src/common/srchcmn.cpp
	src/common/statbar.cpp
	src/common/stockitem.cpp
	src/common/tbarbase.cpp
	src/common/textcmn.cpp
	src/common/timercmn.cpp
	src/common/toplvcmn.cpp
	src/common/treebase.cpp
	src/common/utilscmn.cpp
	src/common/valgen.cpp
	src/common/validate.cpp
	src/common/valtext.cpp
	src/common/wincmn.cpp
	src/common/xpmdecod.cpp )
SOURCE_GROUP( "Common Sources" FILES ${CORE_COMMON_SRCS} )
SET( CORE_COMMON_HDRS
	include/wx/aboutdlg.h
	include/wx/accel.h
	include/wx/access.h
	include/wx/anidecod.h
	include/wx/animate.h
	include/wx/animdecod.h
	include/wx/artprov.h
	# include/wx/aui/aui.h
	# include/wx/aui/auibar.h
	# include/wx/aui/auibook.h
	include/wx/bitmap.h
	include/wx/bmpbuttn.h
	include/wx/bmpcbox.h
	include/wx/bookctrl.h
	include/wx/brush.h
	include/wx/busyinfo.h
	include/wx/button.h
	include/wx/calctrl.h
	include/wx/caret.h
	include/wx/checkbox.h
	include/wx/checklst.h
	include/wx/choicdlg.h
	include/wx/choice.h
	include/wx/choicebk.h
	include/wx/clipbrd.h
	include/wx/clrpicker.h
	include/wx/cmdproc.h
	include/wx/cmndata.h
	include/wx/collpane.h
	include/wx/colordlg.h
	include/wx/colour.h
	include/wx/combo.h
	include/wx/combobox.h
	include/wx/control.h
	include/wx/cshelp.h
	include/wx/ctrlsub.h
	include/wx/cursor.h
	include/wx/dataobj.h
	include/wx/dataview.h
	include/wx/datectrl.h
	include/wx/dateevt.h
	include/wx/dbgrid.h
	include/wx/dc.h
	include/wx/dcbuffer.h
	include/wx/dcclient.h
	include/wx/dcgraph.h
	include/wx/dcmemory.h
	include/wx/dcmirror.h
	include/wx/dcprint.h
	include/wx/dcps.h
	include/wx/dcscreen.h
	include/wx/debugrpt.h
	include/wx/dialog.h
	include/wx/dialup.h
	include/wx/dirctrl.h
	include/wx/dirdlg.h
	include/wx/display.h
	include/wx/display_impl.h
	include/wx/dnd.h
	# include/wx/aui/dockart.h
	include/wx/docmdi.h
	include/wx/docview.h
	include/wx/dragimag.h
	include/wx/effects.h
	include/wx/encinfo.h
	include/wx/evtloop.h
	include/wx/fdrepdlg.h
	include/wx/filedlg.h
	include/wx/filepicker.h
	# include/wx/aui/floatpane.h
	include/wx/fmappriv.h
	include/wx/font.h
	include/wx/fontdlg.h
	include/wx/fontenum.h
	include/wx/fontpicker.h
	include/wx/fontutil.h
	include/wx/frame.h
	# include/wx/aui/framemanager.h
	include/wx/gauge.h
	include/wx/gbsizer.h
	include/wx/gdicmn.h
	include/wx/gdiobj.h
	include/wx/geometry.h
	include/wx/gifdecod.h
	include/wx/glcanvas.h
	include/wx/graphics.h
	include/wx/grid.h
	include/wx/help.h
	include/wx/helpbase.h
	include/wx/helphtml.h
	include/wx/helpwin.h
	include/wx/htmllbox.h
	include/wx/hyperlink.h
	include/wx/icon.h
	include/wx/iconbndl.h
	include/wx/imagbmp.h
	include/wx/image.h
	include/wx/imaggif.h
	include/wx/imagiff.h
	include/wx/imagjpeg.h
	include/wx/imaglist.h
	include/wx/imagpcx.h
	include/wx/imagpng.h
	include/wx/imagpnm.h
	include/wx/imagtga.h
	include/wx/imagtiff.h
	include/wx/imagxpm.h
	include/wx/joystick.h
	include/wx/layout.h
	include/wx/laywin.h
	include/wx/listbase.h
	include/wx/listbook.h
	include/wx/listbox.h
	include/wx/listctrl.h
	include/wx/matrix.h
	include/wx/mdi.h
	include/wx/mediactrl.h
	include/wx/menu.h
	include/wx/menuitem.h
	include/wx/metafile.h
	include/wx/minifram.h
	include/wx/msgdlg.h
	include/wx/notebook.h
	include/wx/numdlg.h
	include/wx/odcombo.h
	include/wx/overlay.h
	include/wx/ownerdrw.h
	include/wx/palette.h
	include/wx/panel.h
	include/wx/paper.h
	include/wx/pen.h
	include/wx/pickerbase.h
	include/wx/popupwin.h
	include/wx/print.h
	include/wx/printdlg.h
	include/wx/prntbase.h
	include/wx/progdlg.h
	include/wx/propdlg.h
	include/wx/ptr_scpd.h
	include/wx/quantize.h
	include/wx/radiobox.h
	include/wx/radiobut.h
	include/wx/rawbmp.h
	include/wx/region.h
	include/wx/renderer.h
	# include/wx/richtext/richtextbuffer.h
	# include/wx/richtext/richtextctrl.h
	# include/wx/richtext/richtextformatdlg.h
	# include/wx/richtext/richtexthtml.h
	# include/wx/richtext/richtextprint.h
	# include/wx/richtext/richtextstyledlg.h
	# include/wx/richtext/richtextstyles.h
	# include/wx/richtext/richtextsymboldlg.h
	# include/wx/richtext/richtextxml.h
	include/wx/sashwin.h
	include/wx/scopeguard.h
	include/wx/scrolbar.h
	include/wx/scrolwin.h
	include/wx/selstore.h
	include/wx/settings.h
	include/wx/sizer.h
	include/wx/slider.h
	include/wx/sound.h
	include/wx/spinbutt.h
	include/wx/spinctrl.h
	include/wx/splash.h
	include/wx/splitter.h
	include/wx/srchctrl.h
	include/wx/statbmp.h
	include/wx/statbox.h
	include/wx/statline.h
	include/wx/stattext.h
	include/wx/statusbr.h
	include/wx/tab.h
	include/wx/tabctrl.h
	# include/wx/aui/tabmdi.h
	include/wx/taskbar.h
	include/wx/tbarbase.h
	include/wx/textctrl.h
	include/wx/textdlg.h
	include/wx/tglbtn.h
	include/wx/tipdlg.h
	include/wx/tipwin.h
	include/wx/toolbar.h
	include/wx/toolbook.h
	include/wx/tooltip.h
	include/wx/toplevel.h
	include/wx/treebase.h
	include/wx/treebook.h
	include/wx/treectrl.h
	include/wx/valgen.h
	include/wx/validate.h
	include/wx/valtext.h
	include/wx/vidmode.h
	include/wx/vlbox.h
	include/wx/vms_x_fix.h
	include/wx/vscroll.h
	include/wx/wave.h
	include/wx/window.h
	include/wx/wizard.h
	include/wx/wupdlock.h
	include/wx/wxhtml.h
	# include/wx/xrc/xh_all.h
	# include/wx/xrc/xh_animatctrl.h
	# include/wx/xrc/xh_bmp.h
	# include/wx/xrc/xh_bmpbt.h
	# include/wx/xrc/xh_bmpcbox.h
	# include/wx/xrc/xh_bttn.h
	# include/wx/xrc/xh_cald.h
	# include/wx/xrc/xh_chckb.h
	# include/wx/xrc/xh_chckl.h
	# include/wx/xrc/xh_choic.h
	# include/wx/xrc/xh_choicbk.h
	# include/wx/xrc/xh_clrpicker.h
	# include/wx/xrc/xh_collpane.h
	# include/wx/xrc/xh_combo.h
	# include/wx/xrc/xh_datectrl.h
	# include/wx/xrc/xh_dirpicker.h
	# include/wx/xrc/xh_dlg.h
	# include/wx/xrc/xh_filepicker.h
	# include/wx/xrc/xh_fontpicker.h
	# include/wx/xrc/xh_frame.h
	# include/wx/xrc/xh_gauge.h
	# include/wx/xrc/xh_gdctl.h
	# include/wx/xrc/xh_grid.h
	# include/wx/xrc/xh_html.h
	# include/wx/xrc/xh_htmllbox.h
	# include/wx/xrc/xh_hyperlink.h
	# include/wx/xrc/xh_listb.h
	# include/wx/xrc/xh_listbk.h
	# include/wx/xrc/xh_listc.h
	# include/wx/xrc/xh_mdi.h
	# include/wx/xrc/xh_menu.h
	# include/wx/xrc/xh_notbk.h
	# include/wx/xrc/xh_odcombo.h
	# include/wx/xrc/xh_panel.h
	# include/wx/xrc/xh_propdlg.h
	# include/wx/xrc/xh_radbt.h
	# include/wx/xrc/xh_radbx.h
	# include/wx/xrc/xh_scrol.h
	# include/wx/xrc/xh_scwin.h
	# include/wx/xrc/xh_sizer.h
	# include/wx/xrc/xh_slidr.h
	# include/wx/xrc/xh_spin.h
	# include/wx/xrc/xh_split.h
	# include/wx/xrc/xh_statbar.h
	# include/wx/xrc/xh_stbmp.h
	# include/wx/xrc/xh_stbox.h
	# include/wx/xrc/xh_stlin.h
	# include/wx/xrc/xh_sttxt.h
	# include/wx/xrc/xh_text.h
	# include/wx/xrc/xh_tglbtn.h
	# include/wx/xrc/xh_toolb.h
	# include/wx/xrc/xh_tree.h
	# include/wx/xrc/xh_treebk.h
	# include/wx/xrc/xh_unkwn.h
	# include/wx/xrc/xh_wizrd.h
	# include/wx/xrc/xmlres.h
	include/wx/xpmdecod.h
	include/wx/xpmhand.h )
SOURCE_GROUP( "Common Headers" FILES ${CORE_COMMON_HDRS} )
IF( WIN32 )
	SET( CORE_MSW_SRCS
		src/msw/accel.cpp
		src/msw/ole/access.cpp
		src/msw/app.cpp
		src/msw/ole/automtn.cpp
		src/msw/bitmap.cpp
		src/msw/bmpbuttn.cpp
		src/msw/brush.cpp
		src/msw/button.cpp
		src/msw/caret.cpp
		src/msw/checkbox.cpp
		src/msw/checklst.cpp
		src/msw/choice.cpp
		src/msw/clipbrd.cpp
		src/msw/colordlg.cpp
		src/msw/colour.cpp
		src/msw/combo.cpp
		src/msw/combobox.cpp
		src/msw/control.cpp
		src/msw/cursor.cpp
		src/msw/data.cpp
		src/msw/ole/dataobj.cpp
		src/msw/dc.cpp
		src/msw/dcclient.cpp
		src/msw/dcmemory.cpp
		src/msw/dcprint.cpp
		src/msw/dcscreen.cpp
		src/msw/dialog.cpp
		src/msw/dialup.cpp
		src/msw/dib.cpp
		src/msw/dirdlg.cpp
		src/msw/display.cpp
		src/msw/dragimag.cpp
		src/msw/ole/dropsrc.cpp
		src/msw/ole/droptgt.cpp
		src/msw/enhmeta.cpp
		src/msw/evtloop.cpp
		src/msw/fdrepdlg.cpp
		src/msw/filedlg.cpp
		src/msw/font.cpp
		src/msw/fontdlg.cpp
		src/msw/fontenum.cpp
		src/msw/fontutil.cpp
		src/msw/frame.cpp
		src/msw/gauge95.cpp
		src/msw/gdiimage.cpp
		src/msw/gdiobj.cpp
		src/msw/graphics.cpp
		src/msw/gsockmsw.cpp
		src/msw/helpchm.cpp
		src/msw/helpwin.cpp
		src/msw/icon.cpp
		src/msw/imaglist.cpp
		src/msw/iniconf.cpp
		src/msw/listbox.cpp
		src/msw/listctrl.cpp
		src/msw/main.cpp
		src/msw/mdi.cpp
		src/msw/menu.cpp
		src/msw/menuitem.cpp
		src/msw/metafile.cpp
		src/msw/minifram.cpp
		src/msw/msgdlg.cpp
		src/msw/mslu.cpp
		src/msw/nativdlg.cpp
		src/msw/notebook.cpp
		src/msw/ole/oleutils.cpp
		src/msw/ownerdrw.cpp
		src/msw/palette.cpp
		src/msw/pen.cpp
		src/msw/popupwin.cpp
		src/msw/printdlg.cpp
		src/msw/printwin.cpp
		src/msw/radiobox.cpp
		src/msw/radiobut.cpp
		src/msw/region.cpp
		src/msw/renderer.cpp
		src/msw/scrolbar.cpp
		src/msw/settings.cpp
		src/msw/slider95.cpp
		src/msw/spinbutt.cpp
		src/msw/spinctrl.cpp
		src/msw/statbmp.cpp
		src/msw/statbox.cpp
		src/msw/statbr95.cpp
		src/msw/statline.cpp
		src/msw/stattext.cpp
		src/msw/tabctrl.cpp
		src/msw/tbar95.cpp
		src/msw/textctrl.cpp
		src/msw/tglbtn.cpp
		src/msw/timer.cpp
		src/msw/tooltip.cpp
		src/msw/toplevel.cpp
		src/msw/treectrl.cpp
		src/msw/utilsgui.cpp
		src/msw/ole/uuid.cpp
		src/msw/uxtheme.cpp
		src/msw/volume.cpp
		src/msw/window.cpp )
	SOURCE_GROUP( "MSW Sources" FILES ${CORE_MSW_SRCS} )
	SET( CORE_MSW_HDRS
		include/wx/msw/accel.h
		include/wx/msw/ole/access.h
		include/wx/msw/ole/activex.h
		include/wx/msw/app.h
		include/wx/msw/ole/automtn.h
		include/wx/msw/bitmap.h
		include/wx/msw/bmpbuttn.h
		include/wx/msw/brush.h
		include/wx/msw/button.h
		include/wx/msw/caret.h
		include/wx/msw/checkbox.h
		include/wx/msw/checklst.h
		include/wx/msw/choice.h
		include/wx/msw/clipbrd.h
		include/wx/msw/colordlg.h
		include/wx/msw/colour.h
		include/wx/msw/combo.h
		include/wx/msw/combobox.h
		include/wx/msw/control.h
		include/wx/msw/cursor.h
		include/wx/msw/ole/dataform.h
		include/wx/msw/ole/dataobj.h
		include/wx/msw/ole/dataobj2.h
		include/wx/msw/datectrl.h
		include/wx/msw/dc.h
		include/wx/msw/dcclient.h
		include/wx/msw/dcmemory.h
		include/wx/msw/dcprint.h
		include/wx/msw/dcscreen.h
		include/wx/msw/dialog.h
		include/wx/msw/dib.h
		include/wx/msw/dirdlg.h
		include/wx/msw/dragimag.h
		include/wx/msw/ole/dropsrc.h
		include/wx/msw/ole/droptgt.h
		include/wx/msw/enhmeta.h
		include/wx/msw/evtloop.h
		include/wx/msw/fdrepdlg.h
		include/wx/msw/filedlg.h
		include/wx/msw/font.h
		include/wx/msw/fontdlg.h
		include/wx/msw/frame.h
		include/wx/msw/gauge95.h
		include/wx/msw/gdiimage.h
		include/wx/msw/genrcdefs.h
		include/wx/msw/glcanvas.h
		include/wx/msw/helpbest.h
		include/wx/msw/helpchm.h
		include/wx/msw/helpwin.h
		include/wx/msw/htmlhelp.h
		include/wx/msw/icon.h
		include/wx/msw/imaglist.h
		include/wx/msw/iniconf.h
		include/wx/msw/joystick.h
		include/wx/msw/listbox.h
		include/wx/msw/listctrl.h
		include/wx/msw/mdi.h
		include/wx/msw/menu.h
		include/wx/msw/menuitem.h
		include/wx/msw/metafile.h
		include/wx/msw/minifram.h
		include/wx/msw/missing.h
		include/wx/msw/msgdlg.h
		include/wx/msw/msvcrt.h
		include/wx/msw/notebook.h
		include/wx/msw/ole/oleutils.h
		include/wx/msw/palette.h
		include/wx/msw/pen.h
		include/wx/msw/popupwin.h
		include/wx/msw/printdlg.h
		include/wx/msw/printwin.h
		include/wx/msw/radiobox.h
		include/wx/msw/radiobut.h
		include/wx/msw/rcdefs.h
		include/wx/msw/region.h
		include/wx/msw/scrolbar.h
		include/wx/msw/setup0.h
		include/wx/msw/slider95.h
		include/wx/msw/sound.h
		include/wx/msw/spinbutt.h
		include/wx/msw/spinctrl.h
		include/wx/msw/statbmp.h
		include/wx/msw/statbox.h
		include/wx/msw/statbr95.h
		include/wx/msw/statline.h
		include/wx/msw/stattext.h
		include/wx/msw/tabctrl.h
		include/wx/msw/taskbar.h
		include/wx/msw/tbar95.h
		include/wx/msw/textctrl.h
		include/wx/msw/tglbtn.h
		include/wx/msw/timer.h
		include/wx/msw/tooltip.h
		include/wx/msw/toplevel.h
		include/wx/msw/treectrl.h
		include/wx/msw/ole/uuid.h
		include/wx/msw/uxtheme.h
		include/wx/msw/uxthemep.h
		include/wx/msw/window.h )
	SOURCE_GROUP( "MSW Headers" FILES ${CORE_MSW_HDRS} )
ENDIF( WIN32 )
SET( CORE_GENERIC_SRCS
#	src/generic/accel.cpp
	src/generic/busyinfo.cpp
	src/generic/buttonbar.cpp
	src/generic/choicbkg.cpp
	src/generic/choicdgg.cpp
	src/generic/clrpickerg.cpp
	src/generic/collpaneg.cpp
#	src/generic/colrdlgg.cpp
	src/generic/combog.cpp
	src/generic/dcpsg.cpp
	src/generic/dirctrlg.cpp
#	src/generic/dirdlgg.cpp
	src/generic/dragimgg.cpp
#	src/generic/fdrepdlg.cpp
#	src/generic/filedlgg.cpp
	src/generic/filepickerg.cpp
#	src/generic/fontdlgg.cpp
	src/generic/fontpickerg.cpp
	src/generic/listbkg.cpp
#	src/generic/listctrl.cpp
	src/generic/logg.cpp
#	src/generic/mdig.cpp
#	src/generic/msgdlgg.cpp
	src/generic/numdlgg.cpp
	src/generic/panelg.cpp
	src/generic/printps.cpp
	src/generic/prntdlgg.cpp
	src/generic/progdlgg.cpp
	src/generic/renderg.cpp
	src/generic/scrlwing.cpp
	src/generic/selstore.cpp
	src/generic/spinctlg.cpp
	src/generic/splitter.cpp
	src/generic/srchctlg.cpp
	src/generic/statusbr.cpp
#	src/generic/tabg.cpp
	src/generic/textdlgg.cpp
	src/generic/tipwin.cpp
	src/generic/toolbkg.cpp
	src/generic/treebkg.cpp
	src/generic/treectlg.cpp
	src/generic/vlbox.cpp
	src/generic/vscroll.cpp )
SOURCE_GROUP( "Generic Sources" FILES ${CORE_GENERIC_SRCS} )
SET( CORE_GENERIC_HDRS
	include/wx/generic/aboutdlgg.h
#	include/wx/generic/accel.h
	include/wx/generic/animate.h
	include/wx/generic/bmpcbox.h
	include/wx/generic/busyinfo.h
	include/wx/generic/buttonbar.h
	include/wx/generic/calctrl.h
	include/wx/generic/choicdgg.h
	include/wx/generic/clrpickerg.h
	include/wx/generic/collpaneg.h
#	include/wx/generic/colrdlgg.h
	include/wx/generic/combo.h
	include/wx/generic/dataview.h
	include/wx/generic/datectrl.h
	include/wx/generic/dcpsg.h
	include/wx/generic/dirctrlg.h
#	include/wx/generic/dirdlgg.h
	include/wx/generic/dragimgg.h
#	include/wx/generic/fdrepdlg.h
#	include/wx/generic/filedlgg.h
	include/wx/generic/filepickerg.h
#	include/wx/generic/fontdlgg.h
	include/wx/generic/fontpickerg.h
	include/wx/generic/grid.h
	include/wx/generic/gridctrl.h
	include/wx/generic/gridsel.h
	include/wx/generic/helpext.h
	include/wx/generic/laywin.h
#	include/wx/generic/listctrl.h
	include/wx/generic/logg.h
#	include/wx/generic/mdig.h
#	include/wx/generic/msgdlgg.h
	include/wx/generic/notebook.h
	include/wx/generic/numdlgg.h
	include/wx/generic/panelg.h
	include/wx/generic/printps.h
	include/wx/generic/prntdlgg.h
	include/wx/generic/progdlgg.h
	include/wx/generic/propdlg.h
	include/wx/generic/sashwin.h
	include/wx/generic/scrolwin.h
	include/wx/generic/spinctlg.h
	include/wx/generic/splash.h
	include/wx/generic/splitter.h
	include/wx/generic/srchctlg.h
	include/wx/generic/statusbr.h
#	include/wx/generic/tabg.h
	include/wx/generic/textdlgg.h
	include/wx/generic/timer.h
	include/wx/generic/treectlg.h
	include/wx/generic/wizard.h )
SOURCE_GROUP( "Generic Headers" FILES ${CORE_GENERIC_HDRS} )
IF( WXWIDGETS_UNIVERSAL )
	SET( CORE_UNIVERSAL_SRCS
		src/univ/bmpbuttn.cpp
		src/univ/button.cpp
		src/univ/checkbox.cpp
		src/univ/checklst.cpp
		src/univ/choice.cpp
		src/univ/colschem.cpp
		src/univ/combobox.cpp
		src/univ/control.cpp
		src/univ/ctrlrend.cpp
		src/univ/dialog.cpp
		src/univ/framuniv.cpp
		src/univ/gauge.cpp
		src/univ/themes/gtk.cpp
		src/univ/inpcons.cpp
		src/univ/inphand.cpp
		src/univ/listbox.cpp
		src/univ/menu.cpp
		src/univ/themes/metal.cpp
		src/univ/themes/mono.cpp
		src/univ/notebook.cpp
		src/univ/radiobox.cpp
		src/univ/radiobut.cpp
		src/univ/scrarrow.cpp
		src/univ/scrolbar.cpp
		src/univ/scrthumb.cpp
		src/univ/slider.cpp
		src/univ/spinbutt.cpp
		src/univ/statbmp.cpp
		src/univ/statbox.cpp
		src/univ/statline.cpp
		src/univ/stattext.cpp
		src/univ/statusbr.cpp
		src/univ/stdrend.cpp
		src/univ/textctrl.cpp
		src/univ/tglbtn.cpp
		src/univ/theme.cpp
		src/univ/toolbar.cpp
		src/univ/topluniv.cpp
		src/univ/themes/win32.cpp
		src/univ/winuniv.cpp )
	SOURCE_GROUP( "wxUniv Sources" FILES ${CORE_UNIVERSAL_SRCS} )
	SET( CORE_UNIVERSAL_HDRS
		include/wx/univ/app.h
		include/wx/univ/bmpbuttn.h
		include/wx/univ/button.h
		include/wx/univ/checkbox.h
		include/wx/univ/checklst.h
		include/wx/univ/chkconf.h
		include/wx/univ/choice.h
		include/wx/univ/colschem.h
		include/wx/univ/combobox.h
		include/wx/univ/control.h
		include/wx/univ/dialog.h
		include/wx/univ/frame.h
		include/wx/univ/gauge.h
		include/wx/univ/inpcons.h
		include/wx/univ/inphand.h
		include/wx/univ/listbox.h
		include/wx/univ/menu.h
		include/wx/univ/menuitem.h
		include/wx/univ/notebook.h
		include/wx/univ/radiobox.h
		include/wx/univ/radiobut.h
		include/wx/univ/renderer.h
		include/wx/univ/scrarrow.h
		include/wx/univ/scrolbar.h
		include/wx/univ/scrthumb.h
		include/wx/univ/scrtimer.h
		include/wx/univ/slider.h
		include/wx/univ/spinbutt.h
		include/wx/univ/statbmp.h
		include/wx/univ/statbox.h
		include/wx/univ/statline.h
		include/wx/univ/stattext.h
		include/wx/univ/statusbr.h
		include/wx/univ/stdrend.h
		include/wx/univ/textctrl.h
		include/wx/univ/tglbtn.h
		include/wx/univ/theme.h
		include/wx/univ/toolbar.h
		include/wx/univ/toplevel.h
		include/wx/univ/window.h )
	SOURCE_GROUP( "wxUniv Headers" FILES ${CORE_UNIVERSAL_HDRS} )
ENDIF( WXWIDGETS_UNIVERSAL )
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
