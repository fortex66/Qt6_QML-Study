cmake_minimum_required(VERSION 3.16)

project(Ex_ChatServer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appEx_ChatServer
    main.cpp
)

qt_add_qml_module(appEx_ChatServer
    URI Ex_ChatServer
    VERSION 1.0
    QML_FILES
        Main.qml
        SOURCES TcpServer.h TcpServer.cpp
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appEx_ChatServer PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appEx_ChatServer
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appEx_ChatServer
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appEx_ChatServer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
