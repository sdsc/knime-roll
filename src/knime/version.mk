PKGROOT            = /opt/knime
NAME               = knime
VERSION            = 2.9.4
RELEASE            = 0

SRC_SUBDIR         = knime

SOURCE_NAME        = $(NAME)
SOURCE_VERSION     = $(VERSION)
SOURCE_SUFFIX      = tar.gz
SOURCE_PKG         = $(SOURCE_NAME)_$(SOURCE_VERSION).linux.gtk.$(ARCH).$(SOURCE_SUFFIX)
SOURCE_DIR         = $(SOURCE_NAME)_$(SOURCE_VERSION:%.$(SOURCE_SUFFIX)=%)

TAR_GZ_PKGS           = $(SOURCE_PKG)