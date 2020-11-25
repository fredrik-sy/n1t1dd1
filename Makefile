PKGS_DIR := $(shell readlink --canonicalize packages)
PKGS := $(shell find $(PKGS_DIR)/* -maxdepth 0 -type d -execdir basename {} + | xargs)

all: $(PKGS)

clean: $(PKGS)

distclean: $(PKGS)

$(PKGS):
	$(MAKE) -C $(PKGS_DIR)/$@ $(MAKECMDGOALS)
