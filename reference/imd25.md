# Index of Multiple Deprivation (IMD) 2025

This dataset contains the ranks and deciles for the Index of Multiple
Deprivation 2025 (IMD25) at Lower-layer Super Output Area (LSOA) level.

## Usage

``` r
imd25
```

## Format

A tibble with 33,755 rows and 9 variables:

- lsoa_code:

  Identifiers of 2021 Census Geography boundaries (Lower Layer Super
  Output Areas)

- lsoa_name:

  Names of 2021 Census Geography boundaries (Lower Layer Super Output
  Areas)

- lad_code:

  Identifiers for local authority districts (LAD) and unitary
  authorities (UA) in the United Kingdom as at 2024

- lad_name:

  Names for local authority districts (LAD) and unitary authorities (UA)
  in the United Kingdom as at 2024

- measure_type:

  Measure type (index, domain or subdomain)

- measure_name:

  Measure name

- rank:

  Measure rank (where 1 is most deprived)

- decile:

  Measure decile (where 1 is most deprived 10% of LSOAs)

- score:

  Measure score

## Source

MHCLG, [All scores, ranks and
deciles](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/csvw/).

## Details

The dataset contains Ministry of Housing, Communities and Local
Government (MHCLG) IoD data, provided in a '[tidy
data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)'
format. Contains public sector information licensed under the [Open
Government Licence
v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/?utm_source=copilot.com).
