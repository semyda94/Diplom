include $(CONFIG_PATH)
PACKAGE_NAME = pkg-config
VERSION      = 0.29.1
PACKAGE      = $(PACKAGE_NAME)-$(VERSION)
BUILD_DIR    = build/$(BOARD_NAME)
INSTALL_DIR  = $(LIBS_DIR)/$(PACKAGE_NAME)/$(BUILD_DIR)/install

GLIB_CFLAGS  = GLIB_CFLAGS="-I$(LIBS_DIR)/glib/$(BUILD_DIR)/install/lib/glib-2.0/include \
                            -I$(LIBS_DIR)/glib/$(BUILD_DIR)/install/include/glib-2.0"
GLIB_LIBS    = GLIB_LIBS="-L$(LIBS_DIR)/glib/$(BUILD_DIR)/install/lib -lglib-2.0"

.PHONY: all
all:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(INSTALL_DIR)
	cp -R $(PACKAGE) $(BUILD_DIR)/$(PACKAGE)
	cd $(BUILD_DIR)/$(PACKAGE); \
	if [ ! -f Makefile ] ; \
	    then export $(GLIB_CFLAGS); \
	    export $(GLIB_LIBS); \
	    ./configure; \
	fi; \
	make; \
	sudo make install;
	
.PHONY: clean
clean:
	rm -Rf build