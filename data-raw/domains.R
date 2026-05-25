path <- "./data-raw/2025_domains_of_deprivation.csv"

domains <- vroom::vroom(
  path,
  .name_repair = janitor::make_clean_names
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name
  ) |>
  tidyr::pivot_longer(
    cols = "index_of_multiple_deprivation_rank":"living_environment_decile",
    names_to = c("domain", "type"),
    names_pattern = "(.*)_(.*)"
  ) |>
  tidyr::pivot_wider(
    names_from = "type",
    values_from = "value"
  ) |>
  dplyr::mutate(
    dplyr::across(dplyr::where(is.double), as.integer),
    domain = dplyr::case_when(
      domain ==
        "index_of_multiple_deprivation" ~ "Index of Multiple Deprivation",
      domain == "income" ~ "Income Deprivation",
      domain == "employment" ~ "Employment Deprivation",
      domain ==
        "education_skills_and_training" ~ "Education, Skills and Training Deprivation",
      domain ==
        "health_deprivation_and_disability" ~ "Health Deprivation and Disability",
      domain == "crime" ~ "Crime",
      domain ==
        "barriers_to_housing_and_services" ~ "Barriers to Housing and Services",
      domain == "living_environment" ~ "Living Environment Deprivation"
    ),
    domain = as.factor(domain)
  )

usethis::use_data(domains, overwrite = TRUE)
