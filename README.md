# looseleaf :leaves:

[![lifecycle](https://img.shields.io/badge/lifecycle-maturing-blue.svg)](https://www.tidyverse.org/lifecycle/#maturing)

Separately render and index a collection of rmarkdown files

## Philosophy

`R notebooks` are ok but it is difficult to manage a collection of them.

`bookdown` is great except for a few key downsides:

* Chunk labels cannot be duplicated in different chapters

* All chapters are rendered together so you cannot turn off evaluation in a chapter-level config chunk

* Selective caching is difficult so build times can be extremely long

## Installation

See https://jsta.github.io/looseleaf/setup.html

## Usage

* Clone this repo

* **Do not** edit the auto-generated files in `_site`

### Workflow

* Create an Rmd file with the yaml header and chunk options in the template

* `make lesson-md`

* `make serve`

## Customization

## Prior art

https://github.com/swcarpentry/styles
