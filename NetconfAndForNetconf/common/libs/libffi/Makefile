include $(CONFIG_PATH)

PACKAGE_NAME = libffi
VERSION      = 3.2.1
PACKAGE      = $(PACKAGE_NAME)-$(VERSION)
BUILD_DIR    = build/$(BOARD_NAME)
INSTALL_DIR  = $(LIBS_DIR)/$(PACKAGE_NAME)/$(BUILD_DIR)/install


.PHONY: all
all:
	mkdir -p $(BUILD_DIR)
	mkdir -p $(INSTALL_DIR)
	cp -R $(PACKAGE) $(BUILD_DIR)/$(PACKAGE)
	cd $(BUILD_DIR)/$(PACKAGE); \
	if [ ! -f Makefile ] ; \
	    then autoreconf -f; \
	    ./configure --prefix=$(INSTALL_DIR); \
	fi; \
	make; \
	make install;
	

.PHONY: clean
clean:
	rm -Rf build