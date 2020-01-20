#!/bin/sh
# To cross-compile for Win32 on *nix, you need to have some sort of mingw
# cross-compiler installed and point to it through the CXX variable.
# Additionally, you need to pass the -DWIN32 to it.
CXX=i586-mingw32msvc-g++ CCFLAGS="-DWIN32 -fpermissive" scons $*
