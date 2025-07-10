#
# Copyright (C) 2025 Your Name <your.email@example.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk
include $(TOPDIR)/feeds/luci/luci.mk

PKG_NAME:=luci-app-nat-switcher
PKG_VERSION:=1.0
PKG_RELEASE:=1

LUCI_TITLE:=LuCI app for switching NAT types
LUCI_PKGARCH:=all
LUCI_DEPENDS:=

define Package/luci-app-nat-switcher/install
	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/controller/admin
	$(INSTALL_DATA) ./luasrc/controller/admin/network.lua $(1)/usr/lib/lua/luci/controller/admin/network.lua

	$(INSTALL_DIR) $(1)/usr/lib/lua/luci/view
	$(INSTALL_DATA) ./luasrc/view/nat_switcher.htm $(1)/usr/lib/lua/luci/view/nat_switcher.htm
endef

$(eval $(call BuildPackage,luci-app-nat-switcher))
