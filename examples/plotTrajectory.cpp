//
// Created by user on 22. 5. 28.
//

#include "module3/Trajectory.hpp"

// path to trajectory file

int main(int argc, char **argv) {
    const auto traj = Trajectory(640, 480, "../trajectory.txt");
    std::vector<Eigen::Isometry3d, Eigen::aligned_allocator<Eigen::Isometry3d>> poses;

    int state = traj.FileRead(traj.GetFilePath(), poses);
    // draw trajectory in pangolin
    if (state == 0) {
        traj.DrawTrajectory(poses);
    }
    return 0;
}
