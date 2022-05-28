//
// Created by user on 22. 5. 28.
//

#include "module1/ClassMat.hpp"
#include "module2/ClassEigenMat.hpp"
#include <iostream>

int main() {
    const auto mat_module1 = ClassMat();
    const auto mat_module2 = ClassEigenMat();
    std::cout << "Success!" << "\n";
    return 0;
}