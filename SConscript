#!/usr/bin/env python
# -*- coding: utf-8 -*-
"""
  scons build script for paping 
  Copyright © 2015 Rob A. Shinn.  See COPYRIGHT for license terms.
"""
import sys, os

if sys.maxint > 2147483647:
    bits = 64
else:
    bits = 32

if 'CCFLAGS' not in os.environ:
    ccflags = ['-m%s' % bits]
    ccflags.append('-Wall')
    ccflags.append('-O3')
else:
    ccflags = os.environ['CCFLAGS'].split(' ')

if 'CXX' in os.environ:
    cxx = os.environ['CXX']

if sys.platform == 'win32':
    ccflags.append('-DWIN32')
    bin="paping.exe"
    env = Environment(ENV=os.environ,tools=['mingw'])
    env.Append(LIBS="wsock32")
else:
    if 'CXX' in os.environ:
        cxx = os.environ['CXX']
    else:
        cxx = 'g++'
    env = Environment(CCFLAGS=ccflags,CXX=cxx)
    if '-DWIN32' in ccflags:  # we are doing a cross-compile
        bin="paping.exe"
        env.Append(LIBS="wsock32")
    else:
        bin="paping"

all = env.Program(target = bin, 
            source = [
                'src/print.cpp',
                'src/stats.cpp',
                'src/timer.cpp',
                'src/arguments.cpp',
                'src/i18n.cpp',
                'src/host.cpp',
                'src/socket.cpp',
                'src/main.cpp',
             ],
            )
             
Default(all)


