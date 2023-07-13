test_that("data() returns 'aquatic_data' and 'raw_data'", {
  available <- data(package = "wqbenchdata")
  items <- available$results[,"Item"]
  items <- sort(items)
  
  expect_identical(items, sort(c("aquatic_data", "raw_data")))
})

test_that("colnames and types 'aquatic_data'", {
  colnames <- colnames(wqbenchdata::aquatic_data)
  
  expect_identical(colnames,
                   c("chemical_name", "cas", "latin_name", "common_name", "endpoint", 
                     "effect", "effect_conc_mg.L", "lifestage", "duration_hrs", "duration_class", 
                     "effect_conc_std_mg.L", "acr", "media_type", "trophic_group", 
                     "ecological_group", "species_present_in_bc", "author", "title", 
                     "source", "publication_year", "present_in_bc_wqg", "species_number", 
                     "download_date", "version"))
  
  types <- vapply(wqbenchdata::aquatic_data, typeof, "")
  
  expect_identical(types,
                   c(chemical_name = "character", cas = "character", latin_name = "character", 
                     common_name = "character", endpoint = "character", effect = "character", 
                     effect_conc_mg.L = "double", lifestage = "character", duration_hrs = "double", 
                     duration_class = "character", effect_conc_std_mg.L = "double", 
                     acr = "integer", media_type = "character", trophic_group = "integer", 
                     ecological_group = "integer", species_present_in_bc = "logical", 
                     author = "character", title = "character", source = "character", 
                     publication_year = "character", present_in_bc_wqg = "logical", 
                     species_number = "integer", download_date = "character", version = "character"
                   ))
})

test_that("colnames and types 'raw_data'", {
  colnames <- colnames(wqbenchdata::raw_data)
  
  expect_identical(colnames,
                   c("chemical_name", "test_cas", "test_id", "result_id", "endpoint", 
                     "effect", "effect_description", "conc1_mean", "conc1_unit", "conc_conversion_flag", 
                     "conc_conversion_value_multiplier", "conc_conversion_unit", "conc2_mean", 
                     "conc2_unit", "conc3_mean", "conc3_unit", "duration_mean", "duration_unit", 
                     "duration_units_to_keep", "duration_value_multiplier_to_hours", 
                     "study_duration_mean", "study_duration_unit", "obs_duration_mean", 
                     "obs_duration_unit", "organism_habitat", "species_number", "latin_name", 
                     "common_name", "kingdom", "phylum_division", "subphylum_div", 
                     "superclass", "class", "tax_order", "family", "genus", "species", 
                     "subspecies", "variety", "species_present_in_bc", "ecological_group", 
                     "trophic_group", "lifestage_description", "simple_lifestage", 
                     "media_type", "media_description", "media_type_group", "present_in_bc_wqg", 
                     "reference_number", "reference_type", "author", "title", "source", 
                     "publication_year", "additional_comments_tests", "additional_comments_results", 
                     "download_date", "version"))
  
  types <- vapply(wqbenchdata::raw_data, typeof, "")
  
  expect_identical(types,
                   c(chemical_name = "character", test_cas = "double", test_id = "double", 
                     result_id = "double", endpoint = "character", effect = "character", 
                     effect_description = "character", conc1_mean = "character", conc1_unit = "character", 
                     conc_conversion_flag = "logical", conc_conversion_value_multiplier = "double", 
                     conc_conversion_unit = "character", conc2_mean = "double", conc2_unit = "character", 
                     conc3_mean = "logical", conc3_unit = "logical", duration_mean = "character", 
                     duration_unit = "character", duration_units_to_keep = "logical", 
                     duration_value_multiplier_to_hours = "double", study_duration_mean = "character", 
                     study_duration_unit = "character", obs_duration_mean = "character", 
                     obs_duration_unit = "character", organism_habitat = "character", 
                     species_number = "double", latin_name = "character", common_name = "character", 
                     kingdom = "character", phylum_division = "character", subphylum_div = "character", 
                     superclass = "character", class = "character", tax_order = "character", 
                     family = "character", genus = "character", species = "character", 
                     subspecies = "logical", variety = "logical", species_present_in_bc = "logical", 
                     ecological_group = "character", trophic_group = "character", 
                     lifestage_description = "character", simple_lifestage = "character", 
                     media_type = "character", media_description = "character", media_type_group = "character", 
                     present_in_bc_wqg = "logical", reference_number = "double", reference_type = "character", 
                     author = "character", title = "character", source = "character", 
                     publication_year = "double", additional_comments_tests = "character", 
                     additional_comments_results = "character", download_date = "double", 
                     version = "character"))
})
