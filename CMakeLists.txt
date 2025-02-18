cmake_minimum_required(VERSION 3.16)
project(UltraQt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

set(CMAKE_AUTOUIC_SEARCH_PATHS ui/)
set(AUTOMOC_PATH_PREFIX ON)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Set the Qt installation path
list(APPEND CMAKE_PREFIX_PATH "/home/matt/Qt/6.8.2/gcc_64")

# Find required Qt components
find_package(Qt6 REQUIRED COMPONENTS Quick Core Qml)

qt_standard_project_setup(REQUIRES 6.5)
qt_policy(SET QTP0004 NEW)

# target_include_directories(ultra-qt PRIVATE src/backend)

file(GLOB QML_COMPONENTS RELATIVE ${CMAKE_SOURCE_DIR} "src/gui/components/*.qml")
file(GLOB QML_VIEWS RELATIVE ${CMAKE_SOURCE_DIR} "src/gui/views/*.qml")


qt_add_qml_module(ultra-qt-components
    URI components
    VERSION 1.0
    OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/components  # ✅ Set unique output directory
    RESOURCE_PREFIX "/"
    QML_FILES 
        ${QML_COMPONENTS}
)

qt_add_qml_module(ultra-qt-views
    URI views
    VERSION 1.0
    OUTPUT_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/views  # ✅ Set unique output directory
    RESOURCE_PREFIX "/"
    QML_FILES
        src/Main.qml
        ${QML_VIEWS}
)

add_subdirectory(src/backend)

qt_add_executable(ultra-qt
    src/main.cpp
)

target_link_libraries(ultra-qt PUBLIC Qt6::Quick Qt6::Core Qt6::Qml backendplugin)

target_link_libraries(ultra-qt PRIVATE ultra-qt-components ultra-qt-views)


# Installation setup
include(GNUInstallDirs)
install(TARGETS ultra-qt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
