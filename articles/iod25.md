# Introduction to iod25

The `iod25` R package contains three core datasets and two additional
datasets. This introductory vignette provides an overview of these
datasets, and how they might be used either separately or together for
analysing the Indices of Deprivation 2025 (IoD25).

``` r

library(iod25)
library(dplyr)
```

## About the data

The Indices of Deprivation 2025 (IoD25) measure relative deprivation
across small geographic areas in England.

IoD25 is formed from 7 domains which measure different aspects of
deprivation, one combined Index of Multiple Deprivation (IMD) and 2
supplementary indices.

## Core datasets

The core datasets are made up of:

[`iod25::domains`](https://douglasmunro.github.io/iod25/reference/domains.md)
which contains the 7 domain measures;

``` r

glimpse(domains)
#> Rows: 270,040
#> Columns: 9
#> $ lsoa_code    <chr> "E01000001", "E01000001", "E01000001", "E01000001", "E010…
#> $ lsoa_name    <chr> "City of London 001A", "City of London 001A", "City of Lo…
#> $ lad_code     <chr> "E09000001", "E09000001", "E09000001", "E09000001", "E090…
#> $ lad_name     <chr> "City of London", "City of London", "City of London", "Ci…
#> $ measure_type <fct> index, index, index, index, index, index, index, index, i…
#> $ measure_name <chr> "Index of Multiple Deprivation", "Income Deprivation", "E…
#> $ rank         <int> 26525, 33730, 33708, 33755, 33108, 33698, 29220, 244, 312…
#> $ decile       <int> 8, 10, 10, 10, 10, 10, 9, 1, 10, 10, 10, 10, 10, 10, 10, …
#> $ score        <dbl> 8.742, 0.013, 0.014, 0.004, -1.771, -2.220, 10.950, 69.34…
```

[`iod25::imd`](https://douglasmunro.github.io/iod25/reference/imd.md)
which contains the Index of Multiple Deprivation (IMD);

``` r

glimpse(imd)
#> Rows: 33,755
#> Columns: 9
#> $ lsoa_code    <chr> "E01000001", "E01000002", "E01000003", "E01000005", "E010…
#> $ lsoa_name    <chr> "City of London 001A", "City of London 001B", "City of Lo…
#> $ lad_code     <chr> "E09000001", "E09000001", "E09000001", "E09000001", "E090…
#> $ lad_name     <chr> "City of London", "City of London", "City of London", "Ci…
#> $ measure_type <fct> index, index, index, index, index, index, index, index, i…
#> $ measure_name <chr> "IMD", "IMD", "IMD", "IMD", "IMD", "IMD", "IMD", "IMD", "…
#> $ rank         <int> 26525, 31203, 25913, 14807, 10917, 5377, 4400, 4812, 5535…
#> $ decile       <int> 8, 10, 8, 5, 4, 2, 2, 2, 2, 2, 3, 3, 3, 4, 3, 3, 3, 3, 2,…
#> $ score        <dbl> 8.742, 4.722, 9.250, 19.884, 25.307, 37.217, 40.726, 39.1…
```

and
[`iod25::supplementary`](https://douglasmunro.github.io/iod25/reference/supplementary.md)
which contains the 2 supplementary indices.

``` r

glimpse(supplementary)
#> Rows: 67,510
#> Columns: 9
#> $ lsoa_code    <chr> "E01000001", "E01000001", "E01000002", "E01000002", "E010…
#> $ lsoa_name    <chr> "City of London 001A", "City of London 001A", "City of Lo…
#> $ lad_code     <chr> "E09000001", "E09000001", "E09000001", "E09000001", "E090…
#> $ lad_name     <chr> "City of London", "City of London", "City of London", "Ci…
#> $ measure_type <fct> index, index, index, index, index, index, index, index, i…
#> $ measure_name <chr> "IDACI", "IDAOPI", "IDACI", "IDAOPI", "IDACI", "IDAOPI", …
#> $ rank         <int> 33304, 33721, 31744, 33118, 19647, 16506, 9604, 912, 3669…
#> $ decile       <int> 10, 10, 10, 10, 6, 5, 3, 1, 2, 5, 2, 1, 2, 1, 2, 2, 2, 1,…
#> $ score        <dbl> 0.039, 0.012, 0.076, 0.026, 0.250, 0.153, 0.459, 0.625, 0…
```

The datasets share a common design with data arranged in a long format
with a row for each combination of Lower Layer Super Output Area (LSOA)
and measure.

This common design includes shared column names across the three data
sets (and
[`iod25::subdomains`](https://douglasmunro.github.io/iod25/reference/subdomains.md)),
which allows them to joined with ease.

``` r

bind_rows(domains, imd, supplementary) |>
  glimpse()
#> Rows: 371,305
#> Columns: 9
#> $ lsoa_code    <chr> "E01000001", "E01000001", "E01000001", "E01000001", "E010…
#> $ lsoa_name    <chr> "City of London 001A", "City of London 001A", "City of Lo…
#> $ lad_code     <chr> "E09000001", "E09000001", "E09000001", "E09000001", "E090…
#> $ lad_name     <chr> "City of London", "City of London", "City of London", "Ci…
#> $ measure_type <fct> index, index, index, index, index, index, index, index, i…
#> $ measure_name <chr> "Index of Multiple Deprivation", "Income Deprivation", "E…
#> $ rank         <int> 26525, 33730, 33708, 33755, 33108, 33698, 29220, 244, 312…
#> $ decile       <int> 8, 10, 10, 10, 10, 10, 9, 1, 10, 10, 10, 10, 10, 10, 10, …
#> $ score        <dbl> 8.742, 0.013, 0.014, 0.004, -1.771, -2.220, 10.950, 69.34…
```

## Additional datasets

The two additional datasets are:

[`iod25::subdomains`](https://douglasmunro.github.io/iod25/reference/subdomains.md)
which contains the underlying measures used to construct the domains;

``` r

glimpse(subdomains)
#> Rows: 202,530
#> Columns: 9
#> $ lsoa_code    <chr> "E01000001", "E01000001", "E01000001", "E01000001", "E010…
#> $ lsoa_name    <chr> "City of London 001A", "City of London 001A", "City of Lo…
#> $ lad_code     <chr> "E09000001", "E09000001", "E09000001", "E09000001", "E090…
#> $ lad_name     <chr> "City of London", "City of London", "City of London", "Ci…
#> $ measure_type <fct> subdomain, subdomain, subdomain, subdomain, subdomain, su…
#> $ measure_name <chr> "Children And Young People", "Adult Skills", "Geographica…
#> $ rank         <int> 33752, 33749, 33560, 12832, 1105, 1586, 33266, 33747, 336…
#> $ decile       <int> 10, 10, 10, 4, 1, 1, 10, 10, 10, 6, 3, 1, 9, 10, 10, 5, 4…
#> $ score        <dbl> -2.902, 0.030, 4.437, 0.688, 1.207, 1.414, -1.830, 0.032,…
```

and `iod25::populations` which contains the population denominators used
to construct the indices.

``` r

glimpse(population)
#> Rows: 135,020
#> Columns: 6
#> $ lsoa_code        <chr> "E01000001", "E01000001", "E01000001", "E01000001", "…
#> $ lsoa_name        <chr> "City of London 001A", "City of London 001A", "City o…
#> $ lad_code         <chr> "E09000001", "E09000001", "E09000001", "E09000001", "…
#> $ lad_name         <chr> "City of London", "City of London", "City of London",…
#> $ population_group <fct> Total, Older (60+), Working age (18-66), Dependent ch…
#> $ population       <int> 1795, 520, 1248, 149, 1671, 387, 1324, 81, 1896, 432,…
```

`iod25::populations` is important when aggregating the data to a higher
geographical level. For example, if we were interested in understanding
how Local Authority Districts (LADs) rank by IMD score.

``` r

# IMD requires the total population as a denominator
total_pop <- filter(population, population_group == "Total")

imd |>
  left_join(
    total_pop,
    by = join_by(lsoa_code, lsoa_name, lad_code, lad_name)
  ) |>
  summarise(
    score = weighted.mean(score, population),
    .by = lad_name
  ) |>
  arrange(desc(score))
#> # A tibble: 296 × 2
#>    lad_name                    score
#>    <chr>                       <dbl>
#>  1 Blackpool                    43.5
#>  2 Middlesbrough                40.0
#>  3 Burnley                      38.7
#>  4 Manchester                   38.7
#>  5 Birmingham                   38.1
#>  6 Hartlepool                   37.6
#>  7 Hastings                     37.3
#>  8 Kingston upon Hull, City of  37.2
#>  9 Liverpool                    37.1
#> 10 Blackburn with Darwen        36.9
#> # ℹ 286 more rows
```

## Citation

To cite the iod25 package, please use:

``` r

citation("iod25")
#> To cite package 'iod25' in publications use:
#> 
#>   Munro D (2026). _iod25: English Indices of Deprivation (IoD25)_. R
#>   package version 1.0.0, <https://douglasmunro.github.io/iod25/>.
#> 
#> A BibTeX entry for LaTeX users is
#> 
#>   @Manual{,
#>     title = {iod25: English Indices of Deprivation (IoD25)},
#>     author = {Douglas Munro},
#>     year = {2026},
#>     note = {R package version 1.0.0},
#>     url = {https://douglasmunro.github.io/iod25/},
#>   }
```

To cite the source data, please use:

- Ministry of Housing, Communities & Local Government (MHCLG), Indices
  of Multiple Deprivation 2025, (2025). Available at:
  <https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/>
  (Accessed: 25 May 2025). Licensed under the [Open Government Licence
  v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
