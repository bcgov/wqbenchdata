# Copyright 2023 Province of British Columbia
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

library(wqbench)
library(readr)

raw_data <- readr::read_csv(
  system.file("data-raw/sample/raw-data.csv", package = "wqbenchdata")
) |>
  dplyr::arrange(chemical_name) |>
  tibble::tibble()

data_set <- wqb_create_data_set(
  file_path = "~/Ecotoxicology/ecotox",
  version = 1,
  folder_path = "~/Ecotoxicology/ecotox_db/"
)

aquatic_data <- data_set |>
  dplyr::filter(cas %in% c("100027", "100016", "1071836", "319846")) |>
  dplyr::slice_sample(n = 100)

usethis::use_data(raw_data, overwrite = TRUE)
usethis::use_data(aquatic_data, overwrite = TRUE)
