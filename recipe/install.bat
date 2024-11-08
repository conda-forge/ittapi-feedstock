SETLOCAL EnableDelayedExpansion

pushd "%SRC_DIR%" || exit /b !ERRORLEVEL!

cmake --install ".\build" --prefix="%LIBRARY_PREFIX%" || exit /b !ERRORLEVEL!

popd

if "%PKG_NAME%" == "ittapi" (
  :: Install python bindings for ITTAPI
  cd "%SRC_DIR%"\python ^
    && %PYTHON% -m pip install . -vv --no-deps --no-build-isolation ^
    || exit /b !ERRORLEVEL!
)
