cmake_minimum_required(VERSION 3.16)
project(UltraQt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_PREFIX_PATH "/home/matt/Qt/6.8.2/gcc_64")
find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_policy(SET QTP0004 NEW)

qt_add_executable(ultra-qt
    src/backend/main.cpp
)

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
        src/gui/Main.qml
        ${QML_VIEWS}
)

target_link_libraries(ultra-qt PRIVATE ultra-qt-components ultra-qt-views)

set_target_properties(ultra-qt PROPERTIES
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(ultra-qt
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS ultra-qt
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
