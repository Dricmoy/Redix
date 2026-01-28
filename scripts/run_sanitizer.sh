#!/bin/bash
set -e

echo "Running RediX with AddressSanitizer and UndefinedBehaviorSanitizer..."

mkdir -p build/Sanitize
cd build/Sanitize

cmake -DCMAKE_BUILD_TYPE=Debug -DSANITIZE=ON ../..
make -j$(nproc)
ctest --output-on-failure
