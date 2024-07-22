. ./config.sh

export SCRIPT_DIR=$PWD
# Set CROSS_HURD_EXTRA_PREFIX if you want to have multiple builds per arch.
export SYSTEM=$PWD/output-$CROSS_HURD_EXTRA_PREFIX$CPU
export CROSS_TOOLS=/cross-tools-$CROSS_HURD_EXTRA_PREFIX$CPU
export SYS_ROOT=/tools-$CROSS_HURD_EXTRA_PREFIX$CPU
export SOURCE=$PWD/src
export BUILD_ROOT=$PWD/build-$CROSS_HURD_EXTRA_PREFIX$CPU
export CROSS_HURD_TARGET=$CPU-gnu
export HOST="$(echo $MACHTYPE | sed "s/$(echo $MACHTYPE | cut -d- -f2)/cross/g")"
export PATH=$CROSS_TOOLS/bin:$PATH

if [ ! -z "$CCACHE_DIRECTORY" ]; then
   export PATH=$CCACHE_DIRECTORY:$PATH
fi

. ./package-versions.sh

GCC_SRC=gcc-"$GCC_VERSION"
GCC_PKG="$GCC_SRC".tar.gz
GNUMACH_SRC=gnumach
GNUMIG_SRC=mig
HURD_SRC=hurd
GLIBC_SRC=glibc
GLIBC_TAG=master
FLEX_SRC=flex-"$FLEX_VERSION"
FLEX_PKG="$FLEX_SRC".tar.gz
ZLIB_SRC=zlib-"$ZLIB_VERSION"
ZLIB_PKG="$ZLIB_SRC".tar.gz
BZIP2_SRC=bzip2-$BZIP2_VERSION
BZIP2_PKG=$BZIP2_SRC.tar.gz
BASH_SRC=bash-"$BASH_VERSION"
BASH_PKG="$BASH_SRC".tar.gz
E2FSPROGS_SRC=e2fsprogs-"$E2FSPROGS_VERSION"
E2FSPROGS_PKG="$E2FSPROGS_SRC".tar.gz
PKGCONFIGLITE_SRC=pkg-config-lite-"$PKGCONFIGLITE_VERSION"
PKGCONFIGLITE_PKG="$PKGCONFIGLITE_SRC".tar.gz
LIBUUID_SRC=libuuid-"$LIBUUID_VERSION"
LIBUUID_PKG="$LIBUUID_SRC".tar.gz
UTIL_LINUX_SRC=util-linux-"$UTIL_LINUX_VERSION"
UTIL_LINUX_PKG="$UTIL_LINUX_SRC".tar.gz
SHADOW_SRC=shadow-"$SHADOW_VERSION"
SHADOW_PKG="$SHADOW_SRC".tar.xz
SED_SRC=sed-"$SED_VERSION"
SED_PKG="$SED_SRC".tar.xz
GMP_SRC=gmp-"$GMP_VERSION"
GMP_PKG="${GMP_SRC}".tar.bz2
MPFR_SRC=mpfr-"$MPFR_VERSION"
MPFR_PKG="${MPFR_SRC}".tar.bz2
MPC_SRC=mpc-"$MPC_VERSION"
MPC_PKG="${MPC_SRC}".tar.gz
NCURSES_SRC=ncurses-"$NCURSES_VERSION"
NCURSES_PKG="${NCURSES_SRC}".tar.gz
LIBEDIT_SRC=libedit-$LIBEDIT_VERSION
LIBEDIT_PKG=$LIBEDIT_SRC.tar.gz
MAKE_SRC=make-"$MAKE_VERSION"
MAKE_PKG=${MAKE_SRC}.tar.gz
GREP_SRC=grep-"$GREP_VERSION"
GREP_PKG=${GREP_SRC}.tar.xz
GAWK_SRC=gawk-"$GAWK_VERSION"
GAWK_PKG=${GAWK_SRC}.tar.xz
LESS_SRC=less-$LESS_VERSION
LESS_PKG=$LESS_SRC.tar.gz
FILE_SRC=file-$FILE_VERSION
FILE_PKG=$FILE_SRC.tar.gz
DASH_SRC=dash-$DASH_VERSION
DASH_PKG=$DASH_SRC.tar.gz
LIBPCIACCESS_SRC=libpciaccess-$LIBPCIACCESS_VERSION
LIBPCIACCESS_PKG=$LIBPCIACCESS_SRC.tar.xz
LIBXCRYPT_SRC=libxcrypt-$LIBXCRYPT_VERSION
LIBXCRYPT_PKG=$LIBXCRYPT_SRC.tar.xz
PARTED_SRC=parted-$PARTED_VERSION
PARTED_PKG=$PARTED_SRC.tar.xz
DMIDECODE_SRC=dmidecode-$DMIDECODE_VERSION
DMIDECODE_PKG=$DMIDECODE_SRC.tar.xz
FINDUTILS_SRC=findutils-$FINDUTILS_VERSION
FINDUTILS_PKG=$FINDUTILS_SRC.tar.xz
IANA_ETC_SRC=iana-etc-$IANA_ETC_VERSION
IANA_ETC_PKG=$IANA_ETC_SRC.tar.gz
INETUTILS_SRC=inetutils-$INETUTILS_VERSION
INETUTILS_PKG=$INETUTILS_SRC.tar.xz
WGET_SRC=wget-$WGET_VERSION
WGET_PKG=$WGET_SRC.tar.gz
PERL_CROSS_SRC=perl-cross-$PERL_CROSS_VERSION
PERL_CROSS_PKG=$PERL_CROSS_SRC.tar.gz
PERL_SRC=perl-$PERL_VERSION
PERL_PKG=$PERL_SRC.tar.gz

print_info() {
   echo "* $*"
}
