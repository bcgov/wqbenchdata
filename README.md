
# wqbenchdata

<!-- badges: start -->

[![img](https://img.shields.io/badge/Lifecycle-Experimental-339999)](https://github.com/bcgov/repomountie/blob/master/doc/lifecycle-badges.md)
[![R-CMD-check](https://github.com/bcgov/wqbenchdata/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/bcgov/wqbenchdata/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

This package contains sample data and test data for the `wqbench` suite
of tools.

## Installation

``` r
# install.packages("remotes")
remotes::install_github("bcgov/wqbenchdata")
```

## Usage

``` r
library(wqbenchdata)
```

Use the sample data set called `aquatic_data` which contains 100 rows.

``` r
str(aquatic_data)
```

    ## Classes 'tbl_df', 'tbl' and 'data.frame':    100 obs. of  24 variables:
    ##  $ chemical_name        : chr  "N-(Phosphonomethyl)glycine" "N-(Phosphonomethyl)glycine" "N-(Phosphonomethyl)glycine" "4-Nitrophenol" ...
    ##  $ cas                  : chr  "1071836" "1071836" "1071836" "100027" ...
    ##  $ latin_name           : chr  "Desmodesmus subspicatus" "Lemna gibba" "Oncorhynchus mykiss" "Ictalurus punctatus" ...
    ##  $ common_name          : chr  "Green Algae" "Inflated Duckweed" "Rainbow Trout" "Channel Catfish" ...
    ##  $ endpoint             : chr  "LOEC" "IC25" "NOEL" "LC50" ...
    ##  $ effect               : chr  "Population" "Morphology" "Biochemistry" "Mortality" ...
    ##  $ effect_conc_mg.L     : num  0.39 11.9 0.11 15 6.4 21 1 120 0.09 4.6 ...
    ##  $ lifestage            : chr  "Exponential growth phase (log)" "Exponential growth phase (log)" "Juvenile" "Not reported" ...
    ##  $ duration_hrs         : num  72 240 168 72 24 ...
    ##  $ duration_class       : chr  "chronic" "chronic" "acute" "acute" ...
    ##  $ effect_conc_std_mg.L : num  0.078 2.38 0.022 1.5 0.64 2.1 0.1 120 0.009 4.6 ...
    ##  $ acr                  : int  5 5 5 10 10 10 10 1 10 1 ...
    ##  $ media_type           : chr  "FW" "FW" "FW" "FW" ...
    ##  $ trophic_group        : Factor w/ 5 levels "Algae","Amphibian",..: 1 5 3 3 3 4 3 4 4 5 ...
    ##  $ ecological_group     : Factor w/ 3 levels "Other","Planktonic Invertebrate",..: 1 1 3 1 1 1 3 1 1 1 ...
    ##  $ species_present_in_bc: logi  FALSE FALSE TRUE FALSE TRUE FALSE ...
    ##  $ author               : chr  "Vendrell,E., D.G.B. Ferraz, C. Sabater, and J.M. Carrasco" "Sobrero,M.C., F. Rimoldi, and A.E. Ronco" "Xie,L., K. Thrippleton, M.A. Irwin, G.S. Siemering, A. Mekebri, D. Crane, K. Berry, and D. Schlenk" "Holcombe,G.W., G.L. Phipps, M.L. Knuth, and T. Felhaber" ...
    ##  $ title                : chr  "Effect of Glyphosate on Growth of Four Freshwater Species of Phytoplankton: A Microplate Bioassay" "Effects of the Glyphosate Active Ingredient and a Formulation on Lemna gibba L. at Different Exposure Levels an"| __truncated__ "Evaluation of Estrogenic Activities of Aquatic Herbicides and Surfactants Using an Rainbow Trout Vitellogenin Assay" "The Acute Toxicity of Selected Substituted Phenols, Benzenes and Benzoic Acid Esters to Fathead Minnows Pimephales promelas" ...
    ##  $ source               : chr  "Bull. Environ. Contam. Toxicol.82(5): 538-542" "Bull. Environ. Contam. Toxicol.79(5): 537-543" "Toxicol. Sci.87(2): 391-398" "Environ. Pollut. A.35(4): 367-381" ...
    ##  $ publication_year     : chr  "2009" "2007" "2005" "1984" ...
    ##  $ present_in_bc_wqg    : logi  TRUE TRUE TRUE FALSE TRUE FALSE ...
    ##  $ species_number       : int  17449 1799 4 20 1 652 23 4733 102 1799 ...
    ##  $ download_date        : chr  "2023-04-06 14:03:39" "2023-04-06 14:03:39" "2023-04-06 14:03:39" "2023-04-06 14:03:39" ...
    ##  $ version              : chr  "ecotox_ascii_03_15_2023" "ecotox_ascii_03_15_2023" "ecotox_ascii_03_15_2023" "ecotox_ascii_03_15_2023" ...

## Getting Help or Reporting an Issue

To report issues, bugs or enhancements, please file an
[issue](https://github.com/bcgov/wqbenchdata/issues). Check out the
[support](https://github.com/bcgov/wqbenchdata/blob/main/.github/SUPPORT.md)
for more info.

## Code of Conduct

Please note that the shinywqbench project is released with a
[Contributor Code of
Conduct](https://github.com/bcgov/wqbenchdata/CODE_OF_CONDUCT.md). By
contributing to this project, you agree to abide by its terms.

## License

The code is released under the Apache License 2.0

> Copyright 2023 Province of British Columbia
>
> Licensed under the Apache License, Version 2.0 (the “License”); you
> may not use this file except in compliance with the License. You may
> obtain a copy of the License at
>
> <https://www.apache.org/licenses/LICENSE-2.0>
>
> Unless required by applicable law or agreed to in writing, software
> distributed under the License is distributed on an “AS IS” BASIS,
> WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
> implied. See the License for the specific language governing
> permissions and limitations under the License.
