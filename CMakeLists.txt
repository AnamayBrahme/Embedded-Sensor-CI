cmake_minimum_required(VERSION 3.10)
project(SensorApp VERSION 1.0)

# Specify C++ standard (industry standard is C++17 or C++20)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add our source files
add_executable(my-sensor-app src/main.cpp)

# Define include directory (optional for now, but good practice)
target_include_directories(my-sensor-app PUBLIC include)


# --- Sprint 2: CPack Configuration ---
include(InstallRequiredSystemLibraries)

# Define where our binary goes when installed (usually /usr/local/bin)
install(TARGETS my-sensor-app DESTINATION bin)

# CPack Metadata
set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_NAME "my-sensor-app")
set(CPACK_PACKAGE_VERSION "1.0.0")
set(CPACK_PACKAGE_CONTACT "your-email@example.com")
set(CPACK_PACKAGE_DESCRIPTION "Embedded Sensor Application for Industrial Hardware")

# Debian-specific settings
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Your Name <your-email@example.com>")
set(CPACK_DEBIAN_PACKAGE_SECTION "utils")
set(CPACK_DEBIAN_PACKAGE_PRIORITY "optional")

# Finally, include CPack
include(CPack)