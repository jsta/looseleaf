# looseleaf :leaves:

Separately render and index a collection of rmarkdown files

## Philosophy

`bookdown` is great but for a few key downsides:

* Chunk labels cannot be duplicated in different chapters

* All chapters are rendered together so you cannot turn off evaluation for only one chapter in a config chunk

* Selective caching is difficult

## Usage

* Clone this repo

* **Do not** edit the auto-generated files in `_site`

### Workflow

* Create an Rmd file with the yaml header and chunk options in the template

* `make lessons-md`

* `make serve`

## Customization

## Prior art

https://github.com/swcarpentry/styles
