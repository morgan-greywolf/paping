#!/bin/sh
# On Ubuntu-ish and Debian-ish, install the mingw-w64 package.
# 
# To cross-compile for Win32 on *nix, you need to have some sort of mingw
# cross-compiler installed and point to it through the CXX variable.
# Additionally, you need to pass the -DWIN32 to it.
CXX=x86_64-w64-mingw32-g++ CCFLAGS="-DWIN32" LDFLAGS="-static"  scons

