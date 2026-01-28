#!/bin/bash
# Build in Debug mode
mkdir -p build/Debug && cd build/Debug
cmake -DCMAKE_BUILD_TYPE=Debug ../..
make -j$(nproc)

# Run tests with coverage
ctest --output-on-failure

# Generate coverage report
lcov --capture --directory . --output-file coverage.info
lcov --remove coverage.info '/usr/*' --output-file coverage.info
genhtml coverage.info --output-directory coverage-report

echo "Coverage report generated in build/Debug/coverage-report/index.html"
