LIBS_DIR     := $(PWD)/../common/libs
SUBDIRS-LIBS := zlib libffi pcre glib pkg-config libnetconf
CONFIG_PATH  := $(PWD)/config.mk

.PHONY: all
all :check-config config $(SUBDIRS-LIBS)

.PHONY: $(SUBDIRS-LIBS)
$(SUBDIRS-LIBS): check-config
	export CONFIG_PATH=$(CONFIG_PATH); \
	$(MAKE) -C $(LIBS_DIR)/$@ $(MAKE_ACTION)


.PHONY: config
config:
	bash ./../common/scripts/config.sh sim;
	
.PHONY: unconfig
unconfig:
	rm config.mk

.PHONY: check-config
check-config:
	bash ./../common/scripts/check-config.sh;

.PHONY: clean
clean:
	for dir in $(SUBDIRS-LIBS); do \
		export CONFIG_PATH=$(CONFIG_PATH); \
		$(MAKE) -C $(LIBS_DIR)/$$dir clean; \
	done;