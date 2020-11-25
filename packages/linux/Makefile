PKG_NAME = linux
PKG_VERSION = 4.19.66
PKG_SOURCE_DIR := $(PKG_NAME)-$(PKG_VERSION)
PKG_URL := https://cdn.kernel.org/pub/linux/kernel/v4.x/$(PKG_SOURCE_DIR).tar.xz
PKG_PATCH_FILES := $(wildcard patches/*)

all: $(PKG_SOURCE_DIR)

clean:
	if [ -d $(PKG_SOURCE_DIR) ]; then \
		$(MAKE) -C $(PKG_SOURCE_DIR) clean; \
	fi

distclean:
	rm -rf $(PKG_SOURCE_DIR)

$(PKG_SOURCE_DIR):
	wget -O- $(PKG_URL) | tar -xj
	$(foreach PKG_PATCH_FILE,$(PKG_PATCH_FILES),$(shell patch -p1 -d $(PKG_SOURCE_DIR) < $(PKG_PATCH_FILE)))
