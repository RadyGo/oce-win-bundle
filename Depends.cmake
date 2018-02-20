message("Setting oce-win-bundle depends...")

# Add dependencies between OCE and oce-win-bundle
if(USE_FREEIMAGE)
    add_dependencies( TKService FreeImage FreeImagePlus )
    if(NOT OCE_BUILD_SHARED_LIB)
		   TARGET_COMPILE_DEFINITIONS(TKService PRIVATE "-DFREEIMAGE_LIB")
	  endif()
endif()

#if (OCE_VISUALISATION)
add_dependencies( TKOpenGl freetype )
if (USE_GL2PS)
      add_dependencies( TKOpenGl gl2ps )
endif()
#endif()
