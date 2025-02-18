project(backend VERSION 0.1 LANGUAGES CXX)

qt_add_library(${PROJECT_NAME} STATIC)
qt_add_qml_module(${PROJECT_NAME}
    URI backend
    VERSION 1.0
    RESOURCE_PREFIX "/"
    SOURCES
        parser.h
        parser.cpp
)

target_link_libraries(${PROJECT_NAME} PUBLIC
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        .
)