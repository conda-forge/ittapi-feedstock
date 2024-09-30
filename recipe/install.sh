#!/bin/bash

set -euxo pipefail

cmake --install ./build --prefix=${PREFIX}

if [[ "$PKG_NAME" == "ittapi" ]]; then
    # Install python bindings for ITTAPI only if it's a python machine
    if [[ $(uname -s) == *"Linux"* ]];
    then
        cd ${SRC_DIR}/python && ${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
    fi
fi
