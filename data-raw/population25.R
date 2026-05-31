path <- "./data-raw/2025_all_iod_scores_ranks_deciles.csv"

population25 <- vroom::vroom(
  path,
  .name_repair = janitor::make_clean_names
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name,
  ) |>
  dplyr::select(
    dplyr::starts_with("lsoa"),
    dplyr::starts_with("lad"),
    dplyr::ends_with("population"),
    "dependent_children"
  ) |>
  tidyr::pivot_longer(
    c(dplyr::ends_with("population"), "dependent_children"),
    names_to = "population_group",
    values_to = "population"
  ) |>
  dplyr::mutate(
    dplyr::across(dplyr::where(is.double), as.integer),
    population_group = stringr::str_remove(population_group, "_population"),
    population_group = dplyr::case_when(
      population_group == "working_age" ~ "Working age (18-66)",
      population_group == "dependent_children" ~ "Dependent children (0-15)",
      population_group == "older" ~ "Older (60+)",
      population_group == "total" ~ "Total"
    ) |>
      as.factor()
  )

usethis::use_data(population25, overwrite = TRUE, compress = "xz")
