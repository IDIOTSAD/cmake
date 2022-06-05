//
// Created by user on 22. 6. 1.
//

#include "module4/Projection.hpp"

int main() {
    cv::Mat img = cv::imread("../image/leftImg8bit.png");
    if (img.empty())
    {
        std::cerr << "can't load the image" << "\n";
        exit(-1);
    }
    const auto p = Projection("../image/camera.json");
    p.PrintCameraMatrix();
    p.DrawAxis(img);
}