# looseleaf :leaves:

[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)
[![Build Status](https://travis-ci.com/jsta/looseleaf.svg?branch=gh-pages)](https://travis-ci.com/jsta/looseleaf)

Separately render and index a collection of rmarkdown files

## Philosophy 

Keep track of your data explorations with minimal effort

## Features

* `rmarkdown` files are only re-built if they have changed since the last rebuild

* turn off chapter/page evaluation (or message printing) with a single `knitr` hook

* a `looseleaf` build will continue despite evaluation errors

* keep track of `R` package dependencies in `DESCRIPTION`

### Why not X?

`R notebooks` are ok but it is difficult to manage a linked collection.

`bookdown` is great except for a few key downsides arising from the fact that chapters are concatenated on render so that chunk labels cannot be duplicated, selective caching becomes difficult, and there can be no chapter level knitr hooks.

## Installation

See https://jsta.github.io/looseleaf/setup.html

## Usage

* Clone this repo

* **Do not** edit the auto-generated files in `_site`

### Workflow

* Create an Rmd file with the yaml header and chunk options in the template

* `make looseleaf-md`

* `make serve`

## Customization

## Prior art

https://github.com/swcarpentry/styles
