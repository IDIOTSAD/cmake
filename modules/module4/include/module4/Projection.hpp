//
// Created by user on 22. 5. 28.
//

#ifndef HELLO_CMAKE_TRAJECTORY_HPP
#define HELLO_CMAKE_TRAJECTORY_HPP

#include <Eigen/Geometry>
#include <Eigen/Core>
#include <pangolin/pangolin.h>
#include <vector>
#include <string>
#include <unistd.h>
#include <cmath>
#include <nlohmann/json.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/core/eigen.hpp>
#include <iostream>

class Projection {
private:
    nlohmann::json j;
    float baseline;
    float pitch;
    float roll;
    float yaw;
    float x;
    float y;
    float z;
    float fx;
    float fy;
    float u0;
    float v0;
public:
    Projection() {
        std::cout << "Error! Please Input filepath!" << "\n";
        std::string file_path;
        std::cin >> file_path;
        LoadJsonFile(file_path);
    }
    Projection(std::string file_path) {
        LoadJsonFile(file_path);
    }
    Eigen::Matrix3f LoadIntrinsicMatrix() const;
    Eigen::Matrix3f LoadRotationMatrix() const;
    Eigen::Matrix<float, 3, 1> LoadTranslationMatrix() const;
    Eigen::Matrix<float, 3, 4> LoadExtrinsicMatrix() const;
    void PrintCameraMatrix() const;
    void LoadJsonFile(std::string path);
    void DrawAxis(cv::Mat &image) const;

};

#endif //HELLO_CMAKE_DRAWTRAJECTORY_HPP
