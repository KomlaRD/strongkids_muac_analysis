## ---- transformations

# Data wrangling of variables

nrs <- nrs %>%
        mutate( sex = factor(sex) %>%               
                        
                        fct_recode(           
                                "Male" = "1",      
                                "Female"   = "2") %>%
                        ff_label("Sex"),  # Recode sex data into male and female 
                
                
                nationality = 
                        factor (nationality) %>%
                        
                        fct_recode("Ghanaian" = "1",
                                   "Others"  = "2") %>%
                        
                        ff_label("Nationality"), # Recode Nationality into Ghanaian and others
                
                
                tribe = factor (tribe) %>%
                        
                        fct_recode("Akan" = "1",
                                   "Ewe" = "2",
                                   "Ga" = "3",
                                   "Dagate" = "7",
                                   "Others" = "9") %>% 
                        ff_label ("Tribe"), # Recode tribe 
                
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
                        
                        ff_label("Disease categories"), # Recode diagnoses into categories
                
                
                muac.category = case_when (muac < 11.5  ~ "Severe acute malnutrition",
                                           muac > 12.5 ~ "Normal nutrition status",
                                           TRUE ~ "Moderate acute malnutrition")%>%
                        fct_relevel (c("Normal nutrition status",
                                       "Moderate acute malnutrition",
                                       "Severe acute malnutrition")) %>%
                        ff_label("MUAC category"), # Recode muac values into categories
                
                
                
                muac.crosstab = if_else (muac > 12.5, "Normal",
                                         "Malnourished") %>% 
                        fct_relevel ("Normal") %>% 
                        ff_label ("MUAC two levels"), # Recode muac into two categories for crosstab 
                
                
                strong.category = factor (strong_score) %>% 
                        fct_recode("Low risk" = "0",
                                   "Medium risk" = "1",
                                   "Medium risk" = "2",
                                   "Medium risk" = "3",
                                   "High risk" = "4",
                                   "High risk" = "5") %>%
                        
                        fct_relevel(c("Low risk",
                                      "Medium risk",
                                      "High risk")) %>%
                        ff_label("STRONGkids category (three levels)"), # Recode strongkids scores into risk categories
                
                
                strong.crosstab = factor (strong_score) %>% 
                        fct_recode("No risk" = "0",
                                   "At risk" = "1",
                                   "At risk" = "2",
                                   "At risk" = "3",
                                   "At risk" = "4",
                                   "At risk" = "5") %>% 
                        fct_relevel("No risk") %>% 
                        ff_label ("STRONGkids category (two levels)"), # Recode strongkids categories into two levels for crosstab
                
                
                wfh_who_cat = if_else(wfh_who < - 2,
                                      "Acute malnutrition",
                                      "Normal") %>% 
                        fct_relevel("Normal") %>% 
                        ff_label ("WHO category"), # Recode wfh z-scores into acute malnutrition and none
                
                
                muac_z_cat = if_else(muacz_who < - 2,
                                     "Acute malnutrition",
                                     "Normal") %>% 
                        fct_relevel("Normal") %>% 
                        ff_label ("MUAC z-score category"), # Recode muac z-scores into acute malnutrition and none
                
                age.group = 
                        if_else(age < 24, "< 24 months",
                                "> 24 months"), # Recode age into two groups
                
                
                age.group = factor (age.group) %>%
                        ff_label("Age categories"),  # Convert age category into a factor
                
                age = age%>%
                        ff_label("Age (months)"), # Label age variable
                
                los = los%>%
                        ff_label("Length of stay (days)"), # Label length of stay variable
                
                weight = weight%>%
                        ff_label("Weight (kg)"), # Label weight variable
                
                stature = stature%>%
                        ff_label("Stature (cm)"), # Label height/length variable
                
                muac  = muac%>%
                        ff_label("MUAC (cm)"), # Label MUAC variable
                
                strong_score = strong_score%>%
                        ff_label("Overall STRONGkids scores"), # Label overall STRONGkids scores
                
                wfh_who = wfh_who%>%
                        ff_label("Weight-for-height z-scores"), # Label weight-for-height z-scores
                
                muacz_who = muacz_who%>%
                        ff_label("MUAC z-scores")) # Label MUAC z-scores






