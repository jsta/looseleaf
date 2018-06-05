## =================================================
## Commands for building and working with looseleaf.

# Settings
MAKEFILES=Makefile $(wildcard *.mk)
JEKYLL=jekyll
PARSER=bin/markdown_ast.rb
DST=_site

# Controls
.PHONY : commands clean files
.NOTPARALLEL:
all : commands

## commands         : show all commands.
commands :
	@grep -h -E '^##' ${MAKEFILES} | sed -e 's/## //g'

## serve            : run a local server.
serve : looseleaf-md
	${JEKYLL} serve

## site             : build files but do not run a server.
site : looseleaf-md
	${JEKYLL} build

## clean            : clean up junk files.
clean :
	@rm -rf ${DST}
	@rm -rf .sass-cache
	@rm -rf bin/__pycache__
	@find . -name .DS_Store -exec rm {} \;
	@find . -name '*~' -exec rm {} \;
	@find . -name '*.pyc' -exec rm {} \;

## clean-rmd        : clean intermediate R files (that need to be committed to the repo).
clear-rmd :
	@rm -rf ${RMD_DST}
	@rm -rf fig/rmd-*

## ----------------------------------------
## Commands specific to looseleaf websites.

.PHONY : looseleaf-md looseleaf-files looseleaf-fixme

# RMarkdown files
RMD_SRC = $(wildcard _episodes_rmd/??-*.Rmd)
RMD_DST = $(patsubst _episodes_rmd/%.Rmd,_episodes/%.md,$(RMD_SRC))

# looseleaf source files in the order they appear in the navigation menu.
MARKDOWN_SRC = \
  index.md \
  README.md \
  setup.md \
  $(sort $(wildcard _episodes/*.md)) \
  reference.md \
  $(sort $(wildcard _extras/*.md)) \
  LICENSE.md

# Generated looseleaf files in the order they appear in the navigation menu.
HTML_DST = \
  ${DST}/index.html \
  ${DST}/README/index.html \
  ${DST}/setup/index.html \
  $(patsubst _episodes/%.md,${DST}/%/index.html,$(sort $(wildcard _episodes/*.md))) \
  ${DST}/reference/index.html \
  $(patsubst _extras/%.md,${DST}/%/index.html,$(sort $(wildcard _extras/*.md))) \
  ${DST}/license/index.html

## looseleaf-md        : convert Rmarkdown files to markdown
looseleaf-md : ${RMD_DST}

_episodes/%.md: _episodes_rmd/%.Rmd
	@bin/knit_pages.sh $< $@

## lesson-figures   : re-generate inclusion displaying all figures.
lesson-figures :
	@bin/extract_figures.py -p ${PARSER} ${MARKDOWN_SRC} > _includes/all_figures.html

## looseleaf-files     : show expected names of generated files for debugging.
looseleaf-files :
	@echo 'RMD_SRC:' ${RMD_SRC}
	@echo 'RMD_DST:' ${RMD_DST}
	@echo 'MARKDOWN_SRC:' ${MARKDOWN_SRC}
	@echo 'HTML_DST:' ${HTML_DST}

## looseleaf-fixme     : show FIXME markers embedded in source files.
looseleaf-fixme :
	@fgrep -i -n FIXME ${MARKDOWN_SRC} || true

#-------------------------------------------------------------------------------
# Include extra commands if available.
#-------------------------------------------------------------------------------

-include commands.mk
