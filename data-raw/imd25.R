path <- "./data-raw/2025_index_of_multiple_deprivation.csv"

imd25 <- vroom::vroom(
  path,
  .name_repair = janitor::make_clean_names
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name,
    rank = index_of_multiple_deprivation_rank,
    decile = index_of_multiple_deprivation_decile
  ) |>
  dplyr::mutate(
    dplyr::across(dplyr::where(is.double), as.integer)
  )

usethis::use_data(imd25, overwrite = TRUE, compress = "xz")
