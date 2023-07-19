#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "hsa-runtime64::hsa-runtime64" for configuration "Release"
set_property(TARGET hsa-runtime64::hsa-runtime64 APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(hsa-runtime64::hsa-runtime64 PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libhsa-runtime64.so.1.7.0"
  IMPORTED_SONAME_RELEASE "libhsa-runtime64.so.1"
  )

list(APPEND _IMPORT_CHECK_TARGETS hsa-runtime64::hsa-runtime64 )

# file isn't going to exist, don't check for it
# list(APPEND _IMPORT_CHECK_FILES_FOR_hsa-runtime64::hsa-runtime64 "${_IMPORT_PREFIX}/lib/libhsa-runtime64.so.1.7.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
