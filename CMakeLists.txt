cmake_minimum_required(VERSION 3.16)
project(UltraQt VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

list(APPEND CMAKE_PREFIX_PATH "/home/matt/Qt/6.8.2/gcc_64")
find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(ultra-qt
    src/backend/main.cpp
)

qt_add_qml_module(ultra-qt
    URI gui
    VERSION 1.0
    QML_FILES
        src/gui/Main.qml
)

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
