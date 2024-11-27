cmake_minimum_required(VERSION 3.16)

project(Ex_Image_Viewer VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appEx_Image_Viewer
    main.cpp
)

qt_add_qml_module(appEx_Image_Viewer
    URI Ex_Image_Viewer
    VERSION 1.0
    QML_FILES
        Main.qml
        RESOURCES images/101.JPG images/102.JPG images/103.JPG images/104.JPG images/105.JPG images/106.JPG images/107.JPG images/108.JPG images/109.JPG images/110.JPG images/111.JPG
        QML_FILES modules/Button.qml
        QML_FILES modules/RotationButton.qml
        QML_FILES modules/Thumbnail.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appEx_Image_Viewer PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appEx_Image_Viewer
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appEx_Image_Viewer
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appEx_Image_Viewer
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
