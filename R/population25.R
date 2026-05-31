#' Population denominators 2025
#'
#' This dataset contains the population denominators used to create the Indices of Deprivation 2025 (IoD25).
#'  The populations are derived from the mid-2022 ONS population estimates.
#'
#' @details
#' The dataset contains Ministry of Housing, Communities and Local Government (MHCLG) IoD data,
#'    provided in a '[tidy data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)' format.
#'    Contains public sector information licensed under the [Open Government Licence v3.0](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/?utm_source=copilot.com).
#'
#' 
#' @format A tibble with 135,020 rows and 6 variables:
#' \describe{
#'   \item{lsoa_code}{Identifiers of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lsoa_name}{Names of 2021 Census Geography boundaries (Lower Layer Super Output Areas)}
#'   \item{lad_code}{Identifiers for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{lad_name}{Names for local authority districts (LAD) and unitary authorities (UA) in the United Kingdom as at 2024}
#'   \item{population_group}{Population group}
#'   \item{population}{Population}
#' }
#' @source MHCLG, [All scores, ranks and deciles](https://open-data.communities.gov.uk/datasets/indices-of-deprivation-2025/csvw/).
"population25"
