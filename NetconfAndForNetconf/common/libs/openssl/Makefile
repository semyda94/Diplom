include $(CONFIG_PATH)
PACKAGE_NAME = openssl
VERSION      = 1.0.1s
PACKAGE      = $(PACKAGE_NAME)-$(VERSION)
BUILD_DIR    = build/$(BOARD_NAME)
INSTALL_DIR  = $(LIBS_DIR)/$(PACKAGE_NAME)/$(BUILD_DIR)/install

PKG_CONFIG   = $(LIBS_DIR)/pcre/$(BUILD_DIR)/install/lib/pkgconfig
.PHONY: all
all:
	mkdir -p $(BUILD_DIR)
	cp -R $(PACKAGE) $(BUILD_DIR)/$(PACKAGE)
	cd $(BUILD_DIR)/$(PACKAGE); \
	if [ ! -f Makefile ] ; \
	    then ./config --prefix=$(INSTALL_DIR); \
	fi; \
	make; \
	make install;

.PHONY: clean
clean:
	rm -Rf build