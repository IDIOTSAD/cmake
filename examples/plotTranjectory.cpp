//
// Created by user on 22. 5. 28.
//

#include "module3/Trajectory.hpp"

// path to trajectory file
std::string trajectory_file = "../trajectory.txt";

int main(int argc, char **argv) {
    auto traj = Trajectory();
    std::vector<Eigen::Isometry3d, Eigen::aligned_allocator<Eigen::Isometry3d>> poses;
    std::ifstream fin(trajectory_file);
    if (!fin) {
        std::cout << "cannot find trajectory file at " << trajectory_file << std::endl;
        return 1;
    }

    while (!fin.eof()) {
        double time, tx, ty, tz, qx, qy, qz, qw;
        fin >> time >> tx >> ty >> tz >> qx >> qy >> qz >> qw;
        Eigen::Isometry3d Twr(Eigen::Quaterniond(qw, qx, qy, qz));
        Twr.pretranslate(Eigen::Vector3d(tx, ty, tz));
        poses.push_back(Twr);
    }
    std::cout << "read total " << poses.size() << " pose entries" << std::endl;

    // draw trajectory in pangolin
    traj.DrawTrajectory(poses);
    return 0;
}
