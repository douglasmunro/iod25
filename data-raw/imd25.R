path <- "./data-raw/2025_all_iod_scores_ranks_deciles.csv"

imd25 <- vroom::vroom(
  path,
  col_select = c(
    dplyr::starts_with("LSOA"),
    dplyr::starts_with("Local"),
    dplyr::starts_with("Index")
  ),
  .name_repair = janitor::make_clean_names,
  show_col_types = FALSE
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name,
    rank = index_of_multiple_deprivation_rank,
    decile = index_of_multiple_deprivation_decile,
    score = index_of_multiple_deprivation_score,
  ) |>
  dplyr::mutate(
    measure_type = factor("index", levels = c("index", "domain", "subdomain")),
    measure_name = "IMD",
    rank = as.integer(rank),
    decile = as.integer(decile),
    .after = "lad_name"
  ) |>
  dplyr::relocate("score", .after = "decile")

usethis::use_data(imd25, overwrite = TRUE, compress = "xz")
