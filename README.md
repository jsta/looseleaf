# looseleaf :leaves:

[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![Build Status](https://travis-ci.com/jsta/looseleaf.svg?branch=gh-pages)](https://travis-ci.com/jsta/looseleaf)

Research compendium template for tracking, linking, and sharing data explorations

### Motivation

It is difficult to manage a linked collection of [R notebooks](https://rmarkdown.rstudio.com/r_notebooks.html).

[bookdown](https://bookdown.org/yihui/bookdown/) is great except for a few key downsides arising from the fact that chapters are concatenated on render so that chunk labels cannot be duplicated, selective caching becomes difficult, and there can be no chapter level knitr hooks.

## Features

* `rmarkdown` files are only re-built if they have changed since the last rebuild

* turn off chapter/page evaluation (or message printing) with a single `knitr` hook

* a `looseleaf` build will continue despite evaluation errors

* keep track of `R` package dependencies in `DESCRIPTION`

## Usage

* Clone this repo

* **Do not** edit the auto-generated files in `_site`

### Workflow

1. Create an Rmd file with the yaml header and chunk options in the provided [template](_episodes_rmd/99-mtcars.Rmd)

2. Add CRAN and Github package dependencies to [DESCRIPTION](DESCRIPTION)

2. Call `make looseleaf-md` from the command line (see required R packages for all projects in [setup.md](setup.md#dependencies-for-all-looseleaf-projects))

3. Render to html (3 options)

    * locally using `make serve` (see optional system dependencies in [setup.md](setup.md#dependencies-for-all-looseleaf-projects))
  
    * remotely for public repos by enabling Github pages
  
    * remotely for private repos by building a zip file on **Gitlab** CI (see `.gitlab-ci.yml`)

## Prior art

https://github.com/swcarpentry/styles
