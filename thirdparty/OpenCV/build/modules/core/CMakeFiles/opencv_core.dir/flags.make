# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# compile CXX with /usr/bin/c++
CXX_FLAGS =    -fsigned-char -W -Wall -Wreturn-type -Wnon-virtual-dtor -Waddress -Wsequence-point -Wformat -Wformat-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Wsuggest-override -Wno-delete-non-virtual-dtor -Wno-comment -Wimplicit-fallthrough=3 -Wno-strict-overflow -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections  -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -O3 -DNDEBUG  -DNDEBUG -fPIC   -std=c++11

CXX_DEFINES = -DCVAPI_EXPORTS -DOPENCV_ALLOCATOR_STATS_COUNTER_TYPE="long long" -DOPENCV_WITH_ITT=1 -D_USE_MATH_DEFINES -D__OPENCV_BUILD=1 -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS

CXX_INCLUDES = -I/home/user/hello_cmake/thirdparty/OpenCV/build/3rdparty/ippicv/ippicv_lnx/icv/include -I/home/user/hello_cmake/thirdparty/OpenCV/build/3rdparty/ippicv/ippicv_lnx/iw/include -isystem /home/user/hello_cmake/thirdparty/OpenCV/build -I/home/user/hello_cmake/thirdparty/OpenCV/opencv/modules/core/include -I/home/user/hello_cmake/thirdparty/OpenCV/build/modules/core -I/home/user/hello_cmake/thirdparty/OpenCV/opencv/3rdparty/include/opencl/1.2 -I/home/user/hello_cmake/thirdparty/OpenCV/opencv/3rdparty/ittnotify/include -isystem /usr/include/eigen3 

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/alloc.cpp.o_DEFINES = HAVE_POSIX_MEMALIGN=1;HAVE_MALLOC_H=1;HAVE_MEMALIGN=1

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/src/parallel/parallel.cpp.o_DEFINES = PARALLEL_ENABLE_PLUGINS=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/arithm.sse4_1.cpp.o_FLAGS =  -mssse3 -msse4.1

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/arithm.sse4_1.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_1;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/matmul.sse4_1.cpp.o_FLAGS =  -mssse3 -msse4.1

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/matmul.sse4_1.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_1;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/stat.sse4_2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/stat.sse4_2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=SSE4_2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mavx

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_AVX=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/mathfuncs_core.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/stat.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/stat.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/arithm.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/arithm.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/convert.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/convert.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/convert_scale.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/convert_scale.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/count_non_zero.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/count_non_zero.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/matmul.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/matmul.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/mean.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/mean.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/merge.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/merge.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/split.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/split.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/sum.avx2.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/sum.avx2.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX2;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1

# Custom flags: modules/core/CMakeFiles/opencv_core.dir/matmul.avx512_skx.cpp.o_FLAGS =  -mssse3 -msse4.1 -mpopcnt -msse4.2 -mf16c -mfma -mavx -mavx2 -mavx512f -mavx512f -mavx512cd -mavx512f -mavx512cd -mavx512vl -mavx512bw -mavx512dq

# Custom defines: modules/core/CMakeFiles/opencv_core.dir/matmul.avx512_skx.cpp.o_DEFINES = CV_CPU_DISPATCH_MODE=AVX512_SKX;CV_CPU_COMPILE_SSSE3=1;CV_CPU_COMPILE_SSE4_1=1;CV_CPU_COMPILE_POPCNT=1;CV_CPU_COMPILE_SSE4_2=1;CV_CPU_COMPILE_FP16=1;CV_CPU_COMPILE_FMA3=1;CV_CPU_COMPILE_AVX=1;CV_CPU_COMPILE_AVX2=1;CV_CPU_COMPILE_AVX_512F=1;CV_CPU_COMPILE_AVX512_COMMON=1;CV_CPU_COMPILE_AVX512_SKX=1
