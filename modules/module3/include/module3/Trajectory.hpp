//
// Created by user on 22. 5. 28.
//

#ifndef HELLO_CMAKE_TRAJECTORY_HPP
#define HELLO_CMAKE_TRAJECTORY_HPP

#include "Eigen/Geometry"
#include "Eigen/Core"
#include <pangolin/pangolin.h>
#include <vector>
#include <string>
#include <unistd.h>

class Trajectory {
private:
    int x;
    int y;
    std::string file_path;
public:
    Trajectory() {
        x = 1024;
        y = 768;
        file_path = "../trajectory.txt";
    }
    Trajectory(int input_x, int input_y) {
        if (x > 0 & y > 0) {
            x = input_x;
            y = input_y;
            file_path = "../trajectory.txt";
        }
        else {
            x = 1024;
            y = 768;
            file_path = "../trajectory.txt";
        }
    }
    Trajectory(int input_x, int input_y, std::string dir) {
        if (dir.length() == 0) {
            file_path = "../trajectory.txt";
        }
        else {
            file_path = dir;
        }
        if (x > 0 & y > 0) {
            x = input_x;
            y = input_y;
        }
        else {
            x = 1024;
            y = 768;
        }
    }
    std::string GetFilePath() {
        return file_path;
    }
    void DrawTrajectory(std::vector<Eigen::Isometry3d, Eigen::aligned_allocator<Eigen::Isometry3d>> poses);
    int FileRead(std::string dir, std::vector<Eigen::Isometry3d, Eigen::aligned_allocator<Eigen::Isometry3d>> &poses);
};

#endif //HELLO_CMAKE_DRAWTRAJECTORY_HPP
