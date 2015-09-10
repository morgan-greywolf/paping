# README for paping 
## Building from source
### General build requirements 
* g++
* Python 2.4 or later
* scons 2.3.x

Windows build requirements, either on Windows or via Unix-hosted cross-compile:
* MinGW (either 32-bit or 64-bit)

**Note**:
You might still be able to build this thing with Microsoft Visual C++, but 
we don't intend to support this going forward. 

### Building
Just do:

    scons

The binaries will be built under *build/*. 

## Platform-specific notes
### Old versions of Microsoft Windows (Prior to XP).
No one knows if it'll work or not as it hasn't been built or tested on these 
platforms.

### Microsoft Windows Vista and later
If you are getting an error like:

    socket() failed with error 10022

You should see [socket() fails with error 10022 when application is run from
certain network shares on Vista and Windows 7 (works on XP)](https://social.msdn.microsoft.com/Forums/windowsdesktop/en-US/3076a9cd-57a0-418d-8de1-07adc3b486bb/socket-fails-with-error-10022-when-application-is-run-from-certain-network-shares-on-vista-and?forum=wsk) on
MSDN and [Microsoft KB 2649107](https://support.microsoft.com/en-us/kb/2649107).
This fails because you placed the binary on a network share.  Microsoft broke your Windows.
(Seriously, I couldn't make this stuff up if I wanted to.)  To work around the
issue, move the binary to a local hard drive.

### Solaris
Though this will build on Solaris, I haven't gotten it to work. 

### Linux
If you want to build a Windows binary using a cross-compiler hosted on an
Ubuntu-ish or Debian-ish distro, you can install the packages *mingw32*,
*mingw32-binutils*, and *mingw32-runtime*.   Then just do:

    CXX=i586-mingw32-g++ CCFLAGS=-DWIN32 scons

If you want to build a Windows x86-64 binary using a cross-compiler hosted on an
Ubunti-ish or Debian-ish distro, you can install the package *mingw-w64*, then
just do something like:

    CXX=x86_64-mingw-w64-g++ CCFLAGS=-DWIN32 LDFLAGS=-static scons


