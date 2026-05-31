#' Domains of deprivation 2025
#'
#' This dataset contains the Index of Multiple Deprivation 2025 (IMD 2025)
#'   and the seven domains at Lower-layer Super Output Area (LSOA) level.
#'
#' @details
#' The dataset contains Ministry of Housing, Communities and Local Government (MHCLG) IoD data,
#'    provided in a '[tidy data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)' format.
#'    Contains public sector information licensed under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/?utm_source=copilot.com).
#'
#'
#' @format A tibble with 270,040 rows and 9 variables:
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
#' @source MHCLG, [All scores, ranks and deciles](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/csvw/).
"domains25"
