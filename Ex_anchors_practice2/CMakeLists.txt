cmake_minimum_required(VERSION 3.16)

project(Ex_anchors_practice2 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appEx_anchors_practice2
    main.cpp
)

qt_add_qml_module(appEx_anchors_practice2
    URI Ex_anchors_practice2
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        images/bluebackground.png images/bluebutton.png images/login.png
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appEx_anchors_practice2 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appEx_anchors_practice2
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appEx_anchors_practice2
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appEx_anchors_practice2
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
