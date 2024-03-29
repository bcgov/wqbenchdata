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

#' Get wqbench data set
#'
#' @param dataset A data set name
#'
#' @return A data frame
#' @export
#'
#' @examples
#' data <- get_wqbenchdata("aquatic_data")
#' data <- get_wqbenchdata("raw_data")
get_wqbenchdata <- function(dataset) {
  if (dataset == "aquatic_data") {
    return(wqbenchdata::aquatic_data)
  }

  if (dataset == "raw_data") {
    return(wqbenchdata::raw_data)
  }
}
