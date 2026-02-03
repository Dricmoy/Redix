#!/bin/bash
set -e

echo "Building with Address + Undefined Sanitizers..."

mkdir -p build/Sanitize
cd build/Sanitize

cmake -DCMAKE_BUILD_TYPE=Debug -DSANITIZE=ON ../..
make -j$(nproc)

echo "Sanitizer build complete."
cd ../..
