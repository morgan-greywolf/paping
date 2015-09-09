all:
	scons
win32:
	CXX ?= i586-mingw32msvc-g++
	CCFLAGS ?= -DWIN32
	scons
	strip build/paping.exe
clean:
	scons -c
