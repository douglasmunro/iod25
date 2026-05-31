path <- "./data-raw/2025_all_iod_scores_ranks_deciles.csv"

subdomains25 <- vroom::vroom(
  path,
  col_select = c(
    "lsoa_code":"local_authority_district_name",
    dplyr::contains("sub_domain")
  ),
  show_col_types = FALSE,
  .name_repair = janitor::make_clean_names
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name
  ) |>
  tidyr::pivot_longer(
    cols = !c("lsoa_code":"lad_name"),
    names_to = c("subdomain", "type"),
    names_pattern = "(.*)_(.*)"
  ) |>
  tidyr::pivot_wider(
    names_from = "type",
    values_from = "value"
  ) |>
  dplyr::mutate(
    rank = as.integer(rank),
    decile = as.integer(decile),
    subdomain = stringr::str_remove(subdomain, "_sub_domain") |>
      stringr::str_replace_all("_", " ") |>
      stringr::str_to_title() |>
      as.factor()
  ) |>
  dplyr::relocate("score", .after = "decile")

usethis::use_data(subdomains25, overwrite = TRUE)
