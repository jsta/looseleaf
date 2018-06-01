---
layout: page
title: Setup
root: .
---

> ## Dependencies for **all** looseleaf projects
>
> * R packages
>   * rmarkdown
>   * knitr
>   * stringr
>   * checkpoint
{: .prereq}

> ## Dependencies for **specific** looseleaf projects
>
> * CRAN Dependencies
>   * Place additional CRAN dependencies in the `Imports` field in `DESCRIPTION`. These are automatically checked for and installed on build.
> * Github Dependencies
>   * Place additional Github dependencies in the `Remotes` field in `DESCRIPTION`. These **are not** automatically installed on build. Run the `remotes::install_deps` command to install.
{: .prereq}

> ## Optional dependencies for local serving of looseleaf html
>
> * [Ruby](swc_instructions)
> * [RubyGems](swc_instructions)
> * [Jekyll](swc_instructions)
{: .prereq}

[swc_instructions]: https://swcarpentry.github.io/lesson-example/setup.html#optional-jekyll-setup-for-lesson-development
