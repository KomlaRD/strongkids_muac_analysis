## ---- transformations

# Recode sex into male and female

nrs <- strong_muac_raw %>%
        mutate(sex.factor =            
                       factor(sex) %>%               
                              
                       fct_recode(           
                               "Male" = "1",      
                               "Female"   = "2") %>%
                       ff_label("Sex"),   
               
             
               nationality.category = factor (nationality) %>%
                       fct_recode("Ghanaian" = "1",
                                  "Others"  = "2") %>%
                       
                       ff_label("Nationality"),

               
               tribe.category = factor (tribe) %>%
                       fct_recode("Akan" = "1",
                                  "Ewe" = "2",
                                  "Ga" = "3",
                                  "Others" = "9") %>% 
                       ff_label ("Tribe"),
               
               disease = factor (diagnosis_cat) %>% 
                       fct_recode("Respiratory" = "1",
                                  "Gastrointestinal" = "2",
                                  "Infectious" = "3",
                                  "Cardiac" = "4",
                                   "Hematologic" = "5",
                                   "Tumor" = "6",
                                   "Neurologic" = "7",
                                  "Renal" = "8",
                                  "Multiple diseases" = "9",
                                   "Others" = "10"
                               
                       ) %>% 
                       ff_label("Disease"),
               
               muac.category =
                       if_else (muac < 11.5,
                               "Severe Malnutrition",
                               if_else (muac > 12.5, "Normal",
                                        "Moderate malnutrition")),

              muac.category = factor (muac.category) %>% 
                      fct_relevel(c("Normal","Moderate malnutrition","Severe malnutrition")),
        
                
                muac.crosstab = if_else (muac > 12.5, "Normal",
                                        "Malnourished") %>% 
                        fct_relevel ("Normal") %>% 
                       ff_label ("MUAC category"),
               
               strong.category = factor (strong_score) %>% 
                       fct_recode("Low risk" = "0",
                                  "Medium risk" = "1",
                                  "Medium risk" = "2",
                                  "Medium risk" = "3",
                                  "High risk" = "4",
                                  "High risk" = "5") %>%
                       
                       fct_relevel(c("Low risk",
                                     "Medium risk",
                                     "High risk")),
               
               strong.crosstab = factor (strong_score) %>% 
                       fct_recode("No risk" = "0",
                                  "At risk" = "1",
                                  "At risk" = "2",
                                  "At risk" = "3",
                                  "At risk" = "4",
                                  "At risk" = "5") %>% 
                       fct_relevel("No risk") %>% 
                       ff_label ("STRONGkids"),
                       
               wfh_who_cat = if_else(wfh_who < - 2,
                                     "Acute malnutrition",
                                     "Normal") %>% 
                       fct_relevel("Normal") %>% 
                       ff_label ("WHO"),
               
               wfh_cdc_cat = if_else(wfh_cdc < - 2,
                                     "Acute malnutrition",
                                     "Normal") %>% 
                       fct_relevel("Normal") %>% 
                       ff_label ("CDC"),
              
               muac_z_cat = if_else(muacz_who < - 2,
                                    "Acute malnutrition",
                                    "Normal") %>% 
                       fct_relevel("Normal") %>% 
                       ff_label ("MUACZ"),
               
              age.group = 
                      if_else(age < 24, "< 24 months",
                              "> 24 months"),
              
              age.group = factor (age.group) %>%
                      ff_label("Age (months"))
             

                          






