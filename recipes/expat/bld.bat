mkdir build
cd build

copy %RECIPE_DIR%\stdint.h .


cmake .. -G "NMake Makefiles" -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% -DCMAKE_BUILD_TYPE=Release
nmake install

mkdir %SCRIPTS%
move %LIBRARY_BIN%\expat.dll %SCRIPTS%\expat.dll || exit 1
