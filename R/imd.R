#' Index of Multiple Deprivation (IMD)
#'
#' This dataset contains the ranks and deciles for the
#'   Index of Multiple Deprivation 2025 (IMD25) at Lower-layer Super Output Area (LSOA) level.
#'
#' @format A tibble with 33,755 rows and 6 variables:
#' \describe{
#'   \item{lsoa_code}{Identifiers of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lsoa_name}{Names of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lad_code}{Identifiers for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{lad_name}{Names for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{rank}{Index of Multiple Deprivation (IMD) Rank (where 1 is most deprived)}
#'   \item{decile}{Index of Multiple Deprivation (IMD) Decile (where 1 is most deprived 10% of LSOAs)")}
#' }
#' @source MHCLG: [Index of Multiple Deprivation](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/)
"imd"
