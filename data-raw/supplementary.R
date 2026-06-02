path <- "./data-raw/2025_all_iod_scores_ranks_deciles.csv"

supplementary <- vroom::vroom(
  path,
  col_select = c("lsoa_code":"local_authority_district_name", "idaci_score":"idaopi_decile"),
  .name_repair = janitor::make_clean_names,
  show_col_types = FALSE
) |>
  dplyr::rename(
    lad_code = local_authority_district_code,
    lad_name = local_authority_district_name,
  ) |> 
   tidyr::pivot_longer(
    cols = !c("lsoa_code":"lad_name"),
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
    measure_name = stringr::str_to_upper(measure_name) ,
        measure_type = factor("index", levels = c("index", "domain", "subdomain")),
        .after = "lad_name"
  ) |>
  dplyr::relocate("score", .after = "decile")

usethis::use_data(supplementary, overwrite = TRUE)
