#' Domains of deprivation
#'
#' This dataset contains the Index of Multiple Deprivation 2025 (IMD 2025) 
#'   and the seven domains at Lower-layer Super Output Area (LSOA) level.
#'
#' @format A tibble with 270,040 rows and 7 variables:
#' \describe{
#'   \item{lsoa_code}{Identifiers of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lsoa_name}{Names of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lad_code}{Identifiers for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{lad_name}{Names for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{domain}{Domain of deprivation}
#'   \item{rank}{Domain Rank (where 1 is most deprived)}
#'   \item{decile}{Domain Decile (where 1 is most deprived 10% of LSOAs)")}
#' }
#' @source MHCLG: [Domains of deprivation](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/csvw/)
"domains"
