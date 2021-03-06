# Install script for directory: /home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/user/hello_cmake/thirdparty/Eigen3/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE FILE FILES
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/AdolcForward"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/AlignedVector3"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/ArpackSupport"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/AutoDiff"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/BVH"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/EulerAngles"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/FFT"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/IterativeSolvers"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/KroneckerProduct"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/LevenbergMarquardt"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/MatrixFunctions"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/MoreVectorization"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/MPRealSupport"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/NNLS"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/NonLinearOptimization"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/NumericalDiff"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/OpenGLSupport"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/Polynomials"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/Skyline"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/SparseExtra"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/SpecialFunctions"
    "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/Splines"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/unsupported/Eigen" TYPE DIRECTORY FILES "/home/user/hello_cmake/thirdparty/Eigen3/eigen/unsupported/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/user/hello_cmake/thirdparty/Eigen3/build/unsupported/Eigen/CXX11/cmake_install.cmake")

endif()

