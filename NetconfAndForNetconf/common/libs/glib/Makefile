include $(CONFIG_PATH)
PACKAGE_NAME = glib
VERSION      = 2.33.12
PACKAGE      = $(PACKAGE_NAME)-$(VERSION)
BUILD_DIR    = build/$(BOARD_NAME)
INSTALL_DIR  = $(LIBS_DIR)/$(PACKAGE_NAME)/$(BUILD_DIR)/install

LIBFFI_CFLAGS= LIBFFI_CFLAGS="-I$(LIBS_DIR)/libffi/$(BUILD_DIR)/install/lib/libffi-3.2.1/include"
LIBFFI_LIBS  = LIBFFI_LIBS="-L$(LIBS_DIR)/libffi/$(BUILD_DIR)/install/lib -lffi"

PCRE_CFLAGS  = PCRE_CFLAGS="-I$(LIBS_DIR)/pcre/$(BUILD_DIR)/install/include"
PCRE_LIBS    = PCRE_LIBS="-L$(LIBS_DIR)/pcre/$(BUILD_DIR)/install/lib -lpcre2"

PKG_CONFIG   = $(LIBS_DIR)/pcre/$(BUILD_DIR)/install/lib/pkgconfig
.PHONY: all
all:
	mkdir -p $(BUILD_DIR)
	cp -R $(PACKAGE) $(BUILD_DIR)/$(PACKAGE)
	cd $(BUILD_DIR)/$(PACKAGE); \
	if [ ! -f Makefile ] ; \
	    then export $(LIBFFI_CFLAGS); \
	    export $(LIBFFI_LIBS); \
	    export $(PCRE_CFLAGS); \
	    export $(PCRE_LIBS); \
	    ./configure --prefix=$(INSTALL_DIR); \
	fi; \
	make; \
	make install;

.PHONY: clean
clean:
	rm -Rf build