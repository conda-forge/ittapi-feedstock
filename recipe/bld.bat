SETLOCAL EnableDelayedExpansion

:: Configure.
cmake -G "NMake Makefiles"           \
      -DCMAKE_BUILD_TYPE=Release    \
      -DCMAKE_INSTALL_PREFIX:STRING=%PREFIX% \
      -S "%SRC_DIR%" \
      -B "%SRC_DIR%\build" || exit /b !ERRORLEVEL!

:: Build.
cmake --build "%SRC_DIR%\build" || exit /b !ERRORLEVEL!
