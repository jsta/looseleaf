---
layout: page
title: Setup
root: .
---
> ## Dependencies for rendering a looseleaf
>
> * R packages
>   * rmarkdown
>   * knitr
>   * stringr
>   * checkpoint
>
> * [Ruby](swc_instructions)
> * [RubyGems](swc_instructions)
> * [Jekyll](swc_instructions)
{: .prereq}

## CRAN Dependencies

Place additional CRAN dependencies in the `Imports` field in `DESCRIPTION`. These are automatically checked for and installed on build.

## Github Dependencies

Place additional Github dependencies in the `Remotes` field in `DESCRIPTION`. These **are not** automatically installed on build. Run the `remotes::install_deps` command to install.

[swc_instructions]: https://swcarpentry.github.io/lesson-example/setup.html#optional-jekyll-setup-for-lesson-development
