################################################################################
#
# tetris package
#
################################################################################

TETRIS_VERSION = 1.4.0
TETRIS_SOURCE = tetris-1.4.0.tar.gz
TETRIS_SITE = https://github.com/troglobit/tetris/releases/download/1.4.0
#TETRIS_SITE_METHOD = wget # Other methods like git,wget,scp,file etc. are also available.
TETRIS_LICENSE = GPL-3.0+
TETRIS_LICENSE_FILES = COPYING
TETRIS_INSTALL_STAGING = YES

define TETRIS_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define TETRIS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/tetris $(TARGET_DIR)/usr/bin
endef
$(eval $(generic-package))
