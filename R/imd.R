#' Index of Multiple Deprivation (IMD) 2025
#'
#' This dataset contains the ranks and deciles for the
#'   Index of Multiple Deprivation 2025 (IMD25) at Lower-layer Super Output Area (LSOA) level.
#'
#' @details
#' The data has been extracted from the All scores, ranks and deciles source file and transformed into into a long ('tidy') format. 
#'
#'
#' @format A tibble with 33,755 rows and 9 variables:
#' \describe{
#'   \item{lsoa_code}{Identifiers of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lsoa_name}{Names of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lad_code}{Identifiers for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{lad_name}{Names for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{measure_type}{Measure type (index, domain or subdomain)}
#'   \item{measure_name}{Measure name}
#'   \item{rank}{Measure rank (where 1 is most deprived)}
#'   \item{decile}{Measure decile (where 1 is most deprived 10% of LSOAs)}
#'   \item{score}{Measure score}
#' }
#' @source Ministry of Housing, Communities & Local Government (MHCLG), Indices of Multiple Deprivation 2025, (2025). Available at: [https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/) (Accessed: 25 May 2025). Licensed under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/).
"imd"
