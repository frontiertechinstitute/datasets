install.packages("readxl")
install.packages("tidyverse")
library(readxl)
library(tidyverse)

read_data_file = function(name = "") {
  file.path("2022 LIHTC Tenant Data", "data", name) |>
  read_excel()
}

hud_2022 = read_data_file("2022 LIHTC Tenant Data by Property - HUD_ID.xlsx")                                                   
tbl_10 = read_data_file("Table 10_Gross Rent as Percentage of Annual Household Income_2022.xlsx")                            
tbl_11 = read_data_file("Table 11_Reporting Rates for Rental Assistance_2022.xlsx")                                           
tbl_12 = read_data_file("Table 12 Use of Federal Rental Assistance_2022.xlsx")                                                
tbl_3 = read_data_file("Table 3_Reported Number of Household Members Compared to Household Size at Certification_2022.xlsx") 
tbl_4 = read_data_file("Table 4_RaceEthnicity of Heads of Household_2022.xlsx")                                              
tbl_5 = read_data_file("Table 5_Reporting Rates for Disability Status_2022.xlsx")                                            
tbl_6 = read_data_file("Table 6_Disability Status of Tenants_2022.xlsx")                                                     
tbl_7 = read_data_file("Table 7_Family Composition Households with Children and Elderly Members_2022.xlsx")                  
tbl_8 = read_data_file("Table 8_Distribution of Annual Household Income_2022.xlsx")                                          
tbl_9 = read_data_file("Table 9_Total Annual Household Income Relative to Derived Area Median Gross Income (AMGI)_2022.xlsx")

dataframes = list(
  hud_2022,
  tbl_10,
  tbl_11,
  tbl_12
)

full_data = reduce(
  dataframes,
  full_join,
  by = join_by("propertyname", "city", "state")
) 

write.csv(full_data, file.path("2022 LIHTC Tenant Data", "data", "2022 LIHTC Full Tenant Data.csv"))