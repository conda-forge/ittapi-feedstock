SETLOCAL EnableDelayedExpansion

pushd "%SRC_DIR%" || exit /b !ERRORLEVEL!

:: Configure.
cmake -G "NMake Makefiles" ^
      -DCMAKE_BUILD_TYPE=Release ^
      -DCMAKE_INSTALL_PREFIX:STRING=%PREFIX% ^
      -S "." ^
      -B ".\build" || exit /b !ERRORLEVEL!

:: Build.
cmake --build ".\build" || exit /b !ERRORLEVEL!

popd
