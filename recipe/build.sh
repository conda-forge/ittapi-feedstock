#!/usr/bin/env bash
set -ex

cmake -G "Unix Makefiles"           \
      -DCMAKE_BUILD_TYPE=Release    \
      -DCMAKE_INSTALL_PREFIX:STRING=${PREFIX} \
      -S . \
      -B ./build
cmake --build ./build
