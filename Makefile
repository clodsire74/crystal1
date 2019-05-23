# Default version of the game to build
version := crystal

# All of the available versions
versions := crystal crystal11 crystal-au


# Variables used to locate the sources
# This dir_source allows you to comfortably `make -f path/to/Makefile` in any directory.
dir_source := $(patsubst %/,%,$(dir $(word 1,$(MAKEFILE_LIST))))
dir_output := .

ifeq ($(dir_source),.)

# If we're in the top-level directory, this makefile fragment will be used.
# This is where we implement common facilities for the programmer,
#   or simply create and jump into the build directory.
# The real build rules are after the else statement.

.SUFFIXES:

ifeq ($(shell which sha1sum),)
SHA1 := shasum
else
SHA1 := sha1sum
endif

dir_source := ../..
dir_build := build
dirs_versions := $(foreach v,$(versions),$(dir_build)/$v)


.PHONY: all
all: $(version)

.PHONY: compare
compare: $(versions)
	@$(SHA1) -c roms.sha1

.PHONY: clean
clean:
	rm -rf build $(foreach v,$(versions),poke$v.gbc poke$v.sym poke$v.map) $(tools)

# Create the build directory and run make inside of it.
.PHONY: $(dirs_versions)
$(dirs_versions): $(dir_build)/%: tools
	+@mkdir -p $@
	+@$(MAKE) --no-print-directory -C $@ -f $(dir_source)/Makefile \
	          dir_source=$(dir_source) dir_output=$(dir_source) version=$* \
	          $(MAKECMDGOALS)

# It's rather important that the tools are available and up-to-date before
#   possibly multiple parallel builds of different versions start.
# Recursive make is the root of all evil.
include tools/tools.mk
.PHONY: tools
tools: $(tools)

# Allow for `make <version>`
define defver
.PHONY: $1
$1: MAKECMDGOALS :=
$1: $(dir_build)/$1
endef
$(foreach v,$(versions),$(eval $(call defver,$v)))

# Allow for `make version=<version> <path/to/file.o>`
%: $(dir_build)/$(version) ;

# We don't need to update any makefiles or create any directories here.
Makefile: ;
%.mk: ;
%/-: ;

else


.SUFFIXES:
.SECONDARY:
.SECONDEXPANSION:

rwildcard = $(foreach d,$(wildcard $1*),$(filter $(subst *,%,$2),$d) $(call rwildcard,$d/,$2))

VPATH := $(dir_source)/version/$(version):$(dir_source)


### Build tools

RGBDS ?=
RGBASM  ?= $(RGBDS)rgbasm
RGBFIX  ?= $(RGBDS)rgbfix
RGBGFX  ?= $(RGBDS)rgbgfx
RGBLINK ?= $(RGBDS)rgblink


### Variables

dirs := audio data engine gfx lib maps mobile
files := home.asm main.asm wram.asm
objects := $(patsubst $(dir_source)/%.asm,%.o,$(call rwildcard,$(addprefix $(dir_source)/,$(dirs)),*.asm)) $(files:.asm=.o)
deps := $(objects:.o=.d)

RGBASMFLAGS := -D _CRYSTAL
RGBFIXFLAGS :=

-include $(dir_source)/version/$(version).mk


### Build targets

.PHONY: all
all: $(dir_output)/poke$(version).gbc

$(dir_output)/poke$(version).gbc: pokecrystal.link $(objects)
	@echo $(RGBLINK) -n $(@:.gbc=.sym) -m $(@:.gbc=.map) -l $< -o $@
	@$(RGBLINK) -n $(@:.gbc=.sym) -m $(@:.gbc=.map) -l $< -o $@ $(filter-out $<, $^)
	$(RGBFIX) -Cjv -i BYTE -k 01 -l 0x33 -m 0x10 -p 0 -r 3 -t PM_CRYSTAL $(RGBFIXFLAGS) $@
	@$(dir_source)/tools/sort_symfile.sh $(@:.gbc=.sym)

%.o: %.asm | $$(@D)/-
	$(RGBASM) -i $(dir_source)/version/$(version)/ -i $(dir_source)/ -L $(RGBASMFLAGS) -o $@ $<


### Dependency generation

%.d: %.asm $(dir_output)/tools/scan_includes | $$(@D)/-
	@printf '%s: ' $*.o > $@
	@$(dir_output)/tools/scan_includes -i $(dir_source)/version/$(version)/ -i $(dir_source)/ $< >> $@

ifeq (,$(filter ,$(MAKECMDGOALS)))
-include $(deps)
endif


# For files that the compressor can't match, there will be a .lz file suffixed with the md5 hash of the correct uncompressed file.
# If the hash of the uncompressed file matches, use this .lz instead.
# This allows pngs to be used for compressed graphics and still match.

hash = $(shell $(dir_output)/tools/md5 $< | cut -c 1-8)
%.lz: % $(dir_output)/tools/md5 $(dir_output)/tools/lzcomp
	$(eval filename := $(dir_source)/$*.lz.$(hash))
	$(if $(wildcard $(filename)),\
		cp $(filename) $@,\
		$(dir_output)/tools/lzcomp.. -- $< $@)



### Pokemon pic animation rules

gfx/pokemon/%/front.animated.2bpp: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions $(dir_output)/tools/pokemon_animation_graphics | $$(@D)/-
	$(dir_output)/tools/pokemon_animation_graphics -o $@ $(word 1,$^) $(word 2,$^)
gfx/pokemon/%/front.animated.tilemap: gfx/pokemon/%/front.2bpp gfx/pokemon/%/front.dimensions $(dir_output)/tools/pokemon_animation_graphics | $$(@D)/-
	$(dir_output)/tools/pokemon_animation_graphics -t $@ $(word 1,$^) $(word 2,$^)
gfx/pokemon/%/bitmask.inc: gfx/pokemon/%/front.animated.tilemap gfx/pokemon/%/front.dimensions $(dir_output)/tools/pokemon_animation | $$(@D)/-
	$(dir_output)/tools/pokemon_animation -b $(word 1,$^) $(word 2,$^) > $@
gfx/pokemon/%/frames.inc: gfx/pokemon/%/front.animated.tilemap gfx/pokemon/%/front.dimensions $(dir_output)/tools/pokemon_animation | $$(@D)/-
	$(dir_output)/tools/pokemon_animation -f $(word 1,$^) $(word 2,$^) > $@


### Catch-all graphics rules

%.2bpp: %.png $(dir_output)/tools/gfx | $$(@D)/-
	$(RGBGFX) $(rgbgfx) -o $@ $<
	$(if $(tools/gfx),\
		$(dir_output)/tools/gfx $(tools/gfx) -o $@ $@)

%.1bpp: %.png $(dir_output)/tools/gfx | $$(@D)/-
	$(RGBGFX) $(rgbgfx) -d1 -o $@ $<
	$(if $(tools/gfx),\
		$(dir_output)/tools/gfx $(tools/gfx) -d1 -o $@ $@)

%.gbcpal: %.png | $$(@D)/-
	$(RGBGFX) -p $@ $<

%.dimensions: %.png $(dir_output)/tools/png_dimensions | $$(@D)/-
	$(dir_output)/tools/png_dimensions $< $@


### Directory creation

# Since we use VPATH, just using the path of the directory will cause it to
#   be found in the VPATH, and the directory never being created where we need it.
# That's why instead of just creating a directory, we also create a file
#   simply called "-", which is hopefully never used in any source directory.
-: ;
%/-:
	@mkdir -p $(@D)
	@touch $@


include $(dir_source)/tools/tools.mk
include $(dir_source)/gfx/gfx.mk

endif
