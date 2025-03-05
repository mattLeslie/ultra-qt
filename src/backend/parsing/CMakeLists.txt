project(parsing VERSION 0.1 LANGUAGES CXX)

qt_add_library(${PROJECT_NAME} STATIC)
qt_add_qml_module(${PROJECT_NAME}
    URI parsing
    VERSION 1.0
    RESOURCE_PREFIX "/"
    SOURCES
        FileParser.h
        FileParser.cpp
)

target_link_libraries(${PROJECT_NAME} PUBLIC
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)

target_link_libraries(${PROJECT_NAME} PRIVATE
    ZLIB::ZLIB
)
target_include_directories(${PROJECT_NAME}
    PUBLIC
        .
)