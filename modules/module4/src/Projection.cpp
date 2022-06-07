//
// Created by user on 22. 5. 28.
//
#include "module4/Projection.hpp"

Eigen::Matrix3f Projection::LoadIntrinsicMatrix() const {
    Eigen::Matrix3f K = Eigen::Matrix3f::Zero();
    K(0, 0) = this->fx;
    K(0, 2) = this->u0;
    K(1, 1) = this->fy;
    K(1, 2) = this->v0;
    K(2, 2) = 1.0;
    return K;
}
// Calculate Rotation Matrix
// http://planning.cs.uiuc.edu/node102.html
Eigen::Matrix3f Projection::LoadRotationMatrix() const {
    auto yaw = this->yaw;
    auto pitch = this->pitch;
    auto roll = this->roll;
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

Eigen::Matrix<float, 3, 1> Projection::LoadTranslationMatrix() const {
    auto yaw = this->yaw;
    auto pitch = this->pitch;
    auto roll = this->roll;
    Eigen::Matrix<float, 3, 1> t = Eigen::Matrix<float, 3, 1>::Zero();
    t(0, 0) = cos(yaw) * cos(pitch);
    t(1, 0) = cos(yaw) * sin(pitch) * sin(roll) - sin(yaw) * cos(roll);
    t(2, 0) = cos(yaw) * sin(pitch) * cos(roll) + sin(yaw) * sin(roll);
    return t;
}

Eigen::Matrix<float, 3, 4> Projection::LoadExtrinsicMatrix() const {
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

void Projection::PrintCameraMatrix() const {
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
void Projection::LoadJsonFile(std::string path) {
    std::ifstream input(path);
    if (!input) {
        std::cout << "Error! Not found File = " << path << "\n";
        exit(-1);
    }
    input >> this->j;
    this->baseline = this->j["extrinsic"]["baseline"];
    this->pitch = this->j["extrinsic"]["pitch"];
    this->roll = this->j["extrinsic"]["roll"];
    this->yaw = this->j["extrinsic"]["yaw"];
    this->x = this->j["extrinsic"]["x"];
    this->y = this->j["extrinsic"]["y"];
    this->z = this->j["extrinsic"]["z"];
    this->fx = this->j["intrinsic"]["fx"];
    this->fy = this->j["intrinsic"]["fy"];
    this->u0 = this->j["intrinsic"]["u0"];
    this->v0 = this->j["intrinsic"]["v0"];
}

void Projection::DrawAxis(cv::Mat &image) const {
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