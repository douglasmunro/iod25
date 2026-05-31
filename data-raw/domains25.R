path <- "./data-raw/2025_all_iod_scores_ranks_deciles.csv"

domains25 <- vroom::vroom(
  path,
  col_select = c("lsoa_code":"living_environment_decile"),
  show_col_types = FALSE,
  .name_repair = janitor::make_clean_names
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name
  ) |>
  tidyr::pivot_longer(
    cols = "index_of_multiple_deprivation_score":"living_environment_decile",
    names_to = c("measure_name", "type"),
    names_pattern = "(.*)_(.*)"
  ) |>
  tidyr::pivot_wider(
    names_from = "type",
    values_from = "value"
  ) |>
  dplyr::mutate(
    rank = as.integer(rank),
    decile = as.integer(decile),
    measure_type = factor("index", levels = c("index", "domain", "subdomain")),
    measure_name = dplyr::case_when(
      measure_name ==
        "index_of_multiple_deprivation" ~ "Index of Multiple Deprivation",
      measure_name == "income" ~ "Income Deprivation",
      measure_name == "employment" ~ "Employment Deprivation",
      measure_name ==
        "education_skills_and_training" ~ "Education, Skills and Training Deprivation",
      measure_name ==
        "health_deprivation_and_disability" ~ "Health Deprivation and Disability",
      measure_name == "crime" ~ "Crime",
      measure_name ==
        "barriers_to_housing_and_services" ~ "Barriers to Housing and Services",
      measure_name == "living_environment" ~ "Living Environment Deprivation"
    ),
    .after = "lad_name"
  ) |>
  dplyr::relocate("score", .after = "decile")

usethis::use_data(domains25, overwrite = TRUE, compress = "xz")
