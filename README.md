# Validity OF STRONGkids AND MUAC in predicting acute malnutrition in hospitalised paediatric in-patients in Accra, Ghana

# About Project

This study was conducted in Korle Bu Teaching Hospital and Princess Marie Children's Hospital in Accra, Ghana. The aim of the study was to evaluate the validity of STRONGkids and MUAC with reference to weight-for-height (WFH) z-scores for paediatric inpatients between the ages of 6 months and 60 months. To the best of our knowledge, this study is the first to evaluate STRONGkids in Ghana and compare it with MUAC. In this study, malnutrition specifically refers to undernutrition.

# Project setup

R version 4.1.0 (2021-05-18)
Platform: x86_64-apple-darwin17.0 (64-bit)
Running under: macOS Big Sur 10.16

Matrix products: default
LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
 [1] statsr_0.3.0           BayesFactor_0.9.12-4.2 Matrix_1.3-3           coda_0.19-4           
 [5] irr_0.84.1             lpSolve_5.6.15         DescTools_0.99.41      knitr_1.33            
 [9] ggstatsplot_0.7.2      ggthemes_4.2.4         finalfit_1.0.2         tinytex_0.32          
[13] GGally_2.1.1           skimr_2.1.3            gtsummary_1.4.1        googlesheets4_0.3.0   
[17] janitor_2.1.0          here_1.0.1             rio_0.5.26             forcats_0.5.1         
[21] stringr_1.4.0          dplyr_1.0.6            purrr_0.3.4            readr_1.4.0           
[25] tidyr_1.1.3            tibble_3.1.2           ggplot2_3.3.3          tidyverse_1.3.1       

loaded via a namespace (and not attached):
  [1] readxl_1.3.1              pairwiseComparisons_3.1.6 backports_1.2.1          
  [4] plyr_1.8.6                repr_1.1.3                splines_4.1.0            
  [7] gmp_0.6-2                 kSamples_1.2-9            ipmisc_6.0.2             
 [10] digest_0.6.27             SuppDists_1.1-9.5         htmltools_0.5.1.1        
 [13] rsconnect_0.8.18          fansi_0.5.0               magrittr_2.0.1           
 [16] checkmate_2.0.0           memoise_2.0.0             paletteer_1.3.0          
 [19] openxlsx_4.2.3            modelr_0.1.8              prettyunits_1.1.1        
 [22] colorspace_2.0-1          rvest_1.0.0               ggrepel_0.9.1            
 [25] haven_2.4.1               xfun_0.23                 prismatic_1.0.0          
 [28] crayon_1.4.1              jsonlite_1.7.2            Exact_2.1                
 [31] zeallot_0.1.0             survival_3.2-11           glue_1.4.2               
 [34] gtable_0.3.0              gargle_1.2.0              MatrixModels_0.5-0       
 [37] statsExpressions_1.1.0    Rmpfr_0.8-4               scales_1.1.1             
 [40] mvtnorm_1.1-1             DBI_1.1.1                 PMCMRplus_1.9.0          
 [43] miniUI_0.1.1.1            Rcpp_1.0.6                xtable_1.8-4             
 [46] progress_1.2.2            performance_0.7.2         proxy_0.4-26             
 [49] foreign_0.8-81            httr_1.4.2                RColorBrewer_1.1-2       
 [52] ellipsis_0.3.2            mice_3.13.0               pkgconfig_2.0.3          
 [55] reshape_0.8.8             farver_2.1.0              sass_0.4.0               
 [58] multcompView_0.1-8        dbplyr_2.1.1              utf8_1.2.1               
 [61] later_1.2.0               tidyselect_1.1.1          labeling_0.4.2           
 [64] rlang_0.4.11              ggcorrplot_0.1.3          effectsize_0.4.5         
 [67] munsell_0.5.0             cellranger_1.1.0          tools_4.1.0              
 [70] cachem_1.0.5              cli_3.0.1                 generics_0.1.0           
 [73] pacman_0.5.1              broom_0.7.6               evaluate_0.14            
 [76] fastmap_1.1.0             BWStest_0.2.2             yaml_2.2.1               
 [79] rematch2_2.1.2            fs_1.5.0                  zip_2.2.0                
 [82] rootSolve_1.8.2.1         nlme_3.1-152              WRS2_1.1-1               
 [85] pbapply_1.4-3             mime_0.10                 ggExtra_0.9              
 [88] xml2_1.3.2                correlation_0.6.1         compiler_4.1.0           
 [91] rstudioapi_0.13           curl_4.3.1                e1071_1.7-7              
 [94] ggsignif_0.6.1            gt_0.3.0                  reprex_2.0.0             
 [97] broom.helpers_1.3.0       stringi_1.6.2             parameters_0.14.0        
[100] lattice_0.20-44           commonmark_1.7            vctrs_0.3.8              
[103] pillar_1.6.1              lifecycle_1.0.0           mc2d_0.1-19              
[106] data.table_1.14.0         insight_0.14.1            lmom_2.8                 
[109] httpuv_1.6.1              patchwork_1.1.1           R6_2.5.0                 
[112] promises_1.2.0.1          gridExtra_2.3             gld_2.6.2                
[115] boot_1.3-28               MASS_7.3-54               gtools_3.9.2             
[118] assertthat_0.2.1          rprojroot_2.0.2           withr_2.4.2              
[121] expm_0.999-6              mgcv_1.8-35               bayestestR_0.10.0        
[124] parallel_4.1.0            hms_1.1.0                 grid_4.1.0               
[127] class_7.3-19              rmarkdown_2.8             snakecase_0.11.0         
[130] googledrive_1.0.1         shiny_1.6.0               lubridate_1.7.10         
[133] base64enc_0.1-3    
