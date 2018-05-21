# looseleaf :leaves:

Separately render and index a collection of rmarkdown files

## Philosophy

`bookdown` is great but for a few key downsides:

* Chunk labels cannot be duplicated in different chapters

* All chapters are rendered together so you cannot turn off evaluation for only one chapter in a config chunk

* Selective caching is difficult

## Roadmap

 * adjust html templates in `_layouts` and `_includes_`
 
 * remove mention of _lessons_

## Workflow

* **Do not** edit the auto-generated files in `_site`

## Maintainer(s)

* [jsta](https://github.com/jsta)

## Prior art

https://github.com/swcarpentry/styles
