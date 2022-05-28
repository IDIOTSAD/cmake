cmake_minimum_required(VERSION 3.22)
project(module3 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(MODULE3_SOURCE_FILES
        include/module3/Trajectory.hpp
        src/Trajectory.cpp
        )

add_library(module3
        ${MODULE3_SOURCE_FILES}
        )

find_package(OpenCV REQUIRED HINTS ${CMAKE_SOURCE_DIR}/thirdparty/OpenCV/install/lib/cmake/opencv4)
find_package(Eigen3 REQUIRED HINTS ${CMAKE_SOURCE_DIR}/thirdparty/Eigen3/install/share/eigen3/cmake)
find_package(Pangolin REQUIRED HINTS ${CMAKE_SOURCE_DIR}/thirdparty/pangolin/install/lib/cmake)

if (Eigen3_FOUND)
    message(STATUS *Eigen3 Found! - ${Eigen3_DIR})
    set(Eigen3_LIBS Eigen3::Eigen)
endif()

if (Pangolin_FOUND)
    message(STATUS *Pangolin Found! - ${Pangolin_DIR})
    set(Pangolin_LIBS ${Pangolin_LIBRARIES})
endif()

target_include_directories(module3 PUBLIC
        include
        ${OpenCV_INCLUDE_DIRS}
        ${Eigen3_INCLUDE_DIRS}
        ${Pangolin_INCLUDE_DIRS}
        )

target_link_libraries(module3 PUBLIC
        ${OpenCV_LIBS}
        ${Eigen3_LIBS}
        ${Pangolin_LIBS}
        )

