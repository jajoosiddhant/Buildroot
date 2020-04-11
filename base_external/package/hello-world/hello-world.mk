##############################################################
#
# HELLO-WORLD
#
##############################################################


HELLO_WORLD_VERSION = 55b9b91187bd40cc76a98617cd029021c08410b3
HELLO_WORLD_SITE = git@github.com:jajoosiddhant/Code-Database.git
HELLO_WORLD_SITE_METHOD = git


define HELLO_WORLD_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define HELLO_WORLD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/hello-world $(TARGET_DIR)/usr/bin
endef


$(eval $(generic-package))
