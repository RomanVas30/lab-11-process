# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "")
set(CPACK_BINARY_BUNDLE "")
set(CPACK_BINARY_CYGWIN "")
set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_DRAGNDROP "")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_NUGET "")
set(CPACK_BINARY_OSXX11 "")
set(CPACK_BINARY_PACKAGEMAKER "")
set(CPACK_BINARY_PRODUCTBUILD "")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BINARY_TZ "ON")
set(CPACK_BINARY_WIX "")
set(CPACK_BINARY_ZIP "")
set(CPACK_BUILD_SOURCE_DIRS "/home/vagrant/Labs/lab-11-process;/home/vagrant/Labs/lab-11-process/_builds")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_HOMEPAGE "https://RomanVas30.github.io/lab-11-process")
set(CPACK_DEBIAN_PACKAGE_NAME "libprocess")
set(CPACK_DEBIAN_PACKAGE_PREDEPENDS "cmake >= 3.0")
set(CPACK_DEBIAN_PACKAGE_RELEASE "1")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "/home/vagrant/Labs/lab-11-process;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/home/vagrant/Labs/lab-11-process/_install")
set(CPACK_MODULE_PATH "/home/vagrant/.hunter/_Base/Download/Hunter/0.23.34/70287b1/Unpacked/cmake/modules;/home/vagrant/.hunter/_Base/Download/Hunter/0.23.34/70287b1/Unpacked/cmake/find")
set(CPACK_NSIS_DISPLAY_NAME "process 0.1.0.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "process 0.1.0.0")
set(CPACK_OUTPUT_CONFIG_FILE "/home/vagrant/Labs/lab-11-process/_builds/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "romanvas3008@gmail.com")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/home/vagrant/Labs/lab-11-process/DESCRIPTION")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "static c++ library for printing")
set(CPACK_PACKAGE_FILE_NAME "process-0.1.0.0-Source")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "process 0.1.0.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "process 0.1.0.0")
set(CPACK_PACKAGE_NAME "process")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "0.1.0.0")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_PACKAGE_VERSION_TWEAK "0")
set(CPACK_RESOURCE_FILE_LICENSE "/home/vagrant/Labs/lab-11-process/LICENSE")
set(CPACK_RESOURCE_FILE_README "/home/vagrant/Labs/lab-11-process/README.md")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-3.12/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_CHANGELOG_FILE "/home/vagrant/Labs/lab-11-process/ChangeLog.md")
set(CPACK_RPM_PACKAGE_GROUP "process")
set(CPACK_RPM_PACKAGE_LICENSE "MIT")
set(CPACK_RPM_PACKAGE_NAME "process-devel")
set(CPACK_RPM_PACKAGE_RELEASE "1")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_RPM_PACKAGE_URL "https://github.com/RomanVas30/lab-11-process")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/home/vagrant/Labs/lab-11-process;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/vagrant/Labs/lab-11-process/_builds/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "process-0.1.0.0-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Linux-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Linux")
set(CPACK_TOPLEVEL_TAG "Linux-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/vagrant/Labs/lab-11-process/_builds/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
