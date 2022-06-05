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

    Eigen::Matrix3f LoadIntrinsicMatrix() const {
        Eigen::Matrix3f K = Eigen::Matrix3f::Zero();
        K(0, 0) = fx;
        K(0, 2) = u0;
        K(1, 1) = fy;
        K(1, 2) = v0;
        K(2, 2) = 1.0;
        return K;
    }
    // Calculate Rotation Matrix
    // http://planning.cs.uiuc.edu/node102.html
    Eigen::Matrix3f LoadRotationMatrix() const {
        Eigen::Matrix3f R = Eigen::Matrix3f::Zero();
        /*
        R(0, 0) = cos(yaw) * cos(pitch);
        R(0, 1) = sin(yaw) * cos(pitch);
        R(0, 2) = -sin(pitch);
        R(1, 0) = sin(roll) * sin(pitch) * cos(yaw) - cos(roll) * sin(yaw);
        R(1, 1) = sin(yaw) * sin(pitch) * sin(roll) + cos(yaw) * cos(roll);
        R(1, 2) = sin(roll) * cos(pitch);
        R(2, 0) = cos(roll) * sin(pitch) * cos(yaw) + sin(roll) * sin(yaw);
        R(2, 1) = cos(roll) * sin(pitch) * sin(yaw) - sin(roll) * cos(yaw);
        R(2, 2) = cos(roll) * cos(pitch);
        */
        R(0, 0) = cos(yaw) * cos(pitch);
        R(0, 1) = cos(yaw) * sin(pitch) * sin(roll) - sin(yaw) * cos(roll);
        R(0, 2) = cos(yaw) * sin(pitch) * cos(roll) + sin(yaw) * sin(roll);
        R(1, 0) = sin(yaw) * cos(pitch);
        R(1, 1) = sin(yaw) * sin(pitch) + cos(yaw) * cos(roll);
        R(1, 2) = sin(yaw) * sin(pitch) * sin(roll) - cos(yaw) * sin(roll);
        R(2, 0) = -sin(pitch);
        R(2, 1) = cos(pitch) * sin(roll);
        R(2, 2) = cos(pitch) * cos(roll);
        return R;
    }

    Eigen::Matrix<float, 3, 1> LoadTranslationMatrix() const {
        Eigen::Matrix<float, 3, 1> t = Eigen::Matrix<float, 3, 1>::Zero();
        t(0, 0) = cos(yaw) * cos(pitch);
        t(1, 0) = cos(yaw) * sin(pitch) * sin(roll) - sin(yaw) * cos(roll);
        t(2, 0) = cos(yaw) * sin(pitch) * cos(roll) + sin(yaw) * sin(roll);
        return t;
    }

    Eigen::Matrix<float, 3, 4> LoadExtrinsicMatrix() const {
        Eigen::Matrix3f R = LoadRotationMatrix();
        Eigen::Matrix<float, 3, 1> t = LoadTranslationMatrix();
        Eigen::Matrix<float, 3, 4> R_T = Eigen::Matrix<float, 3, 4>::Zero();
        // Cal Extrinsic (SE3) Matrix
        for(int i = 0; i < R.rows(); i++) {
            for (int j = 0; j < R.cols(); j++) {
                R_T(i, j) = R(i, j);
            }
        }
        for(int i = 0; i < t.rows(); i++) {
            R_T(i, 3) = t(i, 0);
        }
        return R_T;
    }

    void PrintCameraMatrix() const {
        auto K = LoadIntrinsicMatrix();
        auto R = LoadRotationMatrix();
        auto t = LoadTranslationMatrix();
        auto R_T = LoadExtrinsicMatrix();
        auto P = (K * R_T);
        std::cout << "========World to Camera Matrix=========" << "\n";
        std::cout << "Camera Matrix : " << "\n";
        std::cout << K << "\n";
        std::cout << "Rotation Matrix : " << "\n";
        std::cout << R << "\n";
        std::cout << "Translation Matrix : " << "\n";
        std::cout << t << "\n";
        std::cout << "Projection Matrix : " << "\n";
        std::cout << P << "\n";
        std::cout << "========Camera to World Matrix=========" << "\n";
        std::cout << "Camera Matrix : " << "\n";
        std::cout << K << "\n";
        std::cout << "Rotation Matrix : " << "\n"; //R^-1 == R^T
        std::cout << R.transpose() << "\n";
        std::cout << "Translation Matrix : " << "\n";
        std::cout << R.inverse() * t << "\n";
        std::cout << "Projection Matrix : " << "\n";
        std::cout << P << "\n";

    }
    void LoadJsonFile(std::string path) {
        std::ifstream input(path);
        if (!input) {
            std::cout << "Error! Not found File = " << path << "\n";
            exit(-1);
        }
        input >> j;
        baseline = j["extrinsic"]["baseline"];
        pitch = j["extrinsic"]["pitch"];
        roll = j["extrinsic"]["roll"];
        yaw = j["extrinsic"]["yaw"];
        x = j["extrinsic"]["x"];
        y = j["extrinsic"]["y"];
        z = j["extrinsic"]["z"];
        fx = j["intrinsic"]["fx"];
        fy = j["intrinsic"]["fy"];
        u0 = j["intrinsic"]["u0"];
        v0 = j["intrinsic"]["v0"];
    }

    void DrawAxis(cv::Mat &image) const {
        cv::Mat K, R, t;
        cv::eigen2cv(LoadIntrinsicMatrix(), K);
        cv::eigen2cv(LoadRotationMatrix(), R);
        cv::Rodrigues(R, R);
        cv::eigen2cv(LoadTranslationMatrix(), t);
        std::vector<cv::Point3f> world_point;
        world_point.push_back(cv::Point3f(0, 0, 0));
        world_point.push_back(cv::Point3f(0, 3, 0));
        world_point.push_back(cv::Point3f(0, 0, 2));
        world_point.push_back(cv::Point3f(0, 3, 2));
        cv::Mat img_point;
        cv::projectPoints(world_point, R, t, K, cv::Mat(), img_point);
        //cv::drawFrameAxes(image, K, cv::Mat(), R, t, 1, 5);
        std::cout << "==========" << "\n";
        std::cout << img_point << "\n";
        //cv::line(image, cv::Size(464, 833), img_point)
        cv::imshow("result", image);
        cv::waitKey(0);
    }
};

#endif //HELLO_CMAKE_DRAWTRAJECTORY_HPP
