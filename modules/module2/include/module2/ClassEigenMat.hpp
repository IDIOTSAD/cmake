//
// Created by user on 22. 5. 28.
//

#ifndef HELLO_CMAKE_CLASSEIGENMAT_HPP
#define HELLO_CMAKE_CLASSEIGENMAT_HPP

#include "eigen3/Eigen/Dense"

class ClassEigenMat {
public:
    ClassEigenMat() = default;
private:
    Eigen::Matrix3d eigen_mat_;
};

#endif //HELLO_CMAKE_CLASSEIGENMAT_HPP
