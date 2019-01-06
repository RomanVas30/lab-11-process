#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "process" for configuration "Release"
set_property(TARGET process APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(process PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libprocess.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS process )
list(APPEND _IMPORT_CHECK_FILES_FOR_process "${_IMPORT_PREFIX}/lib/libprocess.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
