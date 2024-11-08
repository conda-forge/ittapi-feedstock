SETLOCAL EnableDelayedExpansion

cmake --install "%SRC_DIR%\build" --prefix="%PREFIX%" || exit /b !ERRORLEVEL!

if "%PKG_NAME%" == "ittapi" (
  :: Install python bindings for ITTAPI
  cd "%SRC_DIR%"\python && %PYTHON% -m pip install . -vv --no-deps --no-build-isolation || exit /b !ERRORLEVEL!
)
