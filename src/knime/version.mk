NAME           = sdsc-knime
VERSION        = 2.9.2
RELEASE        = 1
PKGROOT        = /opt/knime

SRC_SUBDIR     = knime

SOURCE_NAME    = knime
SOURCE_SUFFIX  = tar.gz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)_$(SOURCE_VERSION)_all_extensions.$(SOURCE_SUFFIX)
SOURCE_DIR     = $(SOURCE_NAME)_$(SOURCE_VERSION:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS    = $(SOURCE_PKG)

RPM.EXTRAS     = AutoReq:No
