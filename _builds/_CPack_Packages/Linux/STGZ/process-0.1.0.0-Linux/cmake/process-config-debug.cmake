#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "process" for configuration "Debug"
set_property(TARGET process APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(process PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libprocessd.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS process )
list(APPEND _IMPORT_CHECK_FILES_FOR_process "${_IMPORT_PREFIX}/lib/libprocessd.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
