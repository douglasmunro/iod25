
<!-- README.md is generated from README.Rmd. Please edit that file -->

# iod25

<!-- badges: start -->

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
<!-- badges: end -->

The goal of iod25 is to provide R users with easier access to the
English Indices of Deprivation 2025.

## Installation

``` r
# install.packages("pak")
pak::pak("douglasmunro/iod25")
```

## About the data

The Indices of Deprivation 2025 (IoD25) measure relative deprivation
across small geographic areas in England.

IoD25 is formed from 7 domains which measure different aspects of
deprivation, one combined Index of Multiple Deprivation (IMD) and 2
supplementary indices.

The iod25 package is made up of 3 core datasets:

- `domains` contains the 7 domain measures
- `imd` contains the Index of Multiple Deprivation
- `supplementary` contains the 2 supplementary indices

And two additional datasets:

- `subdomains` contains the underlying measures used to construct the
  domains
- `population` contains the population denominators used to construct
  the indices

## License

The package data are available under [CC BY
4.0](https://creativecommons.org/licenses/by/4.0/deed.en) license and
are modified versions of Ministry of Housing, Communities & Local
Government (MHCLG) data.

The source data is licenced under [Open Government Licence v3.0.
(OGLv3.0)](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).

## Disclaimer

This package is not associated with or endorsed by MHCLG.

## Citation

To cite the iod25 package, please use:

``` r
citation("iod25")
#> To cite package 'iod25' in publications use:
#> 
#>   Munro D (2026). _iod25: English Indices of Deprivation (IoD25)_. R
#>   package version 0.0.0.9006, <https://github.com/douglasmunro/iod25>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {iod25: English Indices of Deprivation (IoD25)},
#>     author = {Douglas Munro},
#>     year = {2026},
#>     note = {R package version 0.0.0.9006},
#>     url = {https://github.com/douglasmunro/iod25},
#>   }
```

To cite the source data, please use:

- Ministry of Housing, Communities & Local Government (MHCLG), Indices
  of Multiple Deprivation 2025, (2025). Available at:
  <https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/>
  (Accessed: 25 May 2025). Licensed under the [Open Government Licence
  v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
