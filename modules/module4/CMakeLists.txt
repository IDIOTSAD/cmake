cmake_minimum_required(VERSION 3.22)
project(module4 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(MODULE4_SOURCE_FILES
        include/module4/Projection.hpp
        src/Projection.cpp
        )

add_library(module4
        ${MODULE4_SOURCE_FILES}
        )

find_package(OpenCV REQUIRED HINTS
        ${CMAKE_SOURCE_DIR}/thirdparty/OpenCV/install/lib/cmake/opencv4
        )
find_package(Eigen3 REQUIRED HINTS
        ${CMAKE_SOURCE_DIR}/thirdparty/Eigen3/install/share/eigen3/cmake
        )
find_package(Pangolin REQUIRED HINTS
        ${CMAKE_SOURCE_DIR}/thirdparty/pangolin/install/lib/cmake
        )
find_package(nlohmann_json REQUIRED HINTS
        ${CMAKE_SOURCE_DIR}/thirdparty/json/install/lib/cmake
        )

if (Eigen3_FOUND)
    message(STATUS *Eigen3 Found! - ${Eigen3_DIR})
    set(Eigen3_LIBS
            Eigen3::Eigen
            )
endif()

if (Pangolin_FOUND)
    message(STATUS *Pangolin Found! - ${Pangolin_DIR})
    set(Pangolin_LIBS
            ${Pangolin_LIBRARIES}
            )
endif()

set(nlohmann_json_LIBS
        nlohmann_json::nlohmann_json
)

target_include_directories(module4 PUBLIC
        include
        ${OpenCV_INCLUDE_DIRS}
        ${Eigen3_INCLUDE_DIRS}
        ${Pangolin_INCLUDE_DIRS}
        ${nlohmann_json_INCLUDE_DIRS}
        )

target_link_libraries(module4 PUBLIC
        ${OpenCV_LIBS}
        ${Eigen3_LIBS}
        ${Pangolin_LIBS}
        ${nlohmann_json_LIBS}
        )
