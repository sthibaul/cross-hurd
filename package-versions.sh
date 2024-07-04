# Package versions.
BINUTILS_VERSION=2.42
GCC_VERSION=14.1.0
FLEX_VERSION=2.6.4
ZLIB_VERSION=1.3.1
BZIP2_VERSION=1.0.8
BASH_VERSION=5.2.21
COREUTILS_VERSION=9.4
# e2fsprogs 1.45.4 is failing due to something with sys/mount.h in configure
E2FSPROGS_VERSION=1.44.1
PKGCONFIGLITE_VERSION=0.28-1
LIBUUID_VERSION=1.0.3
UTIL_LINUX_MAJOR_VERSION=2.39
# 2.39.2 fails because libmount/src/hooks.c is being compiled without proper support.
UTIL_LINUX_VERSION=2.39
GRUB_VERSION=2.06
SHADOW_VERSION=4.14.2
SED_VERSION=4.9
GMP_VERSION=6.3.0
MPFR_VERSION=4.2.1
MPC_VERSION=1.3.1
NCURSES_VERSION=6.4
LIBEDIT_VERSION=20240517-3.1
# 8.1: checking what tgetent() returns for an unknown terminal... configure: error: failed to compile test program.
VIM_BASE_VERSION=90
VIM_VERSION=9.0
GPG_ERROR_VERSION=1.47
GCRYPT_VERSION=1.10.3
MAKE_VERSION=4.4
GREP_VERSION=3.11
GAWK_VERSION=5.3.0
LESS_VERSION=661
FILE_VERSION=5.45
DASH_VERSION=0.5.12
LIBPCIACCESS_VERSION=0.18.1
LIBXCRYPT_VERSION=4.4.36
PARTED_VERSION=3.5
DMIDECODE_VERSION=3.5
FINDUTILS_VERSION=4.9.0
IANA_ETC_VERSION=20240612
INETUTILS_VERSION=2.5
OPENSSL_VERSION=3.0.14
WGET_VERSION=1.24.5
PERL_CROSS_VERSION=1.5.3
PERL_VERSION=5.40.0
# Mach, Hurd and Glibc are all taken from the Git repository.

# libunistring
LIBUNISTRING_VERSION=1.1
LIBUNISTRING_SRC=libunistring-$LIBUNISTRING_VERSION
LIBUNISTRING_PKG=$LIBUNISTRING_SRC.tar.xz
LIBUNISTRING_URL=https://ftp.gnu.org/gnu/libunistring/$LIBUNISTRING_PKG

# libidn2
LIBIDN2_VERSION=2.3.7
LIBIDN2_SRC=libidn2-$LIBIDN2_VERSION
LIBIDN2_PKG=$LIBIDN2_SRC.tar.gz
LIBIDN2_URL=https://ftp.gnu.org/gnu/libidn/$LIBIDN2_PKG

# libpsl
LIBPSL_VERSION=0.21.5
LIBPSL_SRC=libpsl-$LIBPSL_VERSION
LIBPSL_PKG=$LIBPSL_SRC.tar.gz
LIBPSL_URL=https://github.com/rockdaboot/libpsl/releases/download/$LIBPSL_VERSION/$LIBPSL_PKG

# curl
CURL_VERSION=8.8.0
CURL_SRC=curl-$CURL_VERSION
CURL_PKG=$CURL_SRC.tar.xz
CURL_URL=https://curl.se/download/$CURL_PKG

# libdaemon
LIBDAEMON_VERSION=0.14
LIBDAEMON_SRC=libdaemon-$LIBDAEMON_VERSION
LIBDAEMON_PKG=$LIBDAEMON_SRC.tar.gz
LIBDAEMON_URL=https://0pointer.de/lennart/projects/libdaemon/$LIBDAEMON_PKG
