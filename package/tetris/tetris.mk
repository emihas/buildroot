################################################################################
#
# tetris package
#
################################################################################

TETRIS_VERSION = e055834526a2d6c4f98d268f4f04724ba8b38161
TETRIS_SITE = https://github.com/troglobit/tetris.git
TETRIS_SITE_METHOD = git # Other methods like git,wget,scp,file etc. are also available.

define TETRIS_BUILD_CMDS
    $(MAKE) CC="$(TARGET_CC)" LD="$(TARGET_LD)" -C $(@D)
endef

define TETRIS_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/tetris  $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
