cmake_minimum_required(VERSION 3.16)

project(qt_quick_and_qml_test VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appqt_quick_and_qml_test
    main.cpp
)

qt_add_qml_module(appqt_quick_and_qml_test
    URI qt_quick_and_qml_test
    VERSION 1.0
    QML_FILES
        Main.qml
    RESOURCES
        assets/images/bahadir-sahinoglu-K2RdHxBZsz0-unsplash.jpg
        QML_FILES page.qml
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appqt_quick_and_qml_test PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appqt_quick_and_qml_test
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appqt_quick_and_qml_test
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appqt_quick_and_qml_test
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
