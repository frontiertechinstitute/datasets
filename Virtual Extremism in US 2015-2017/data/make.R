load("Virtual Extremism in US 2015-2017/raw/ICPSR_37679-Survey Wave 1/DS0001/37679-0001-Data.rda")
load("Virtual Extremism in US 2015-2017/raw/ICPSR_37679-Survey Wave 2/DS0002/37679-0002-Data.rda")
load("Virtual Extremism in US 2015-2017/raw/ICPSR_37679-Survey Wave 3/DS0003/37679-0003-Data.rda")

write.csv(da37679.0001, "Virtual Extremism in US 2015-2017/data/survey_data_1.csv")
write.csv(da37679.0002, "Virtual Extremism in US 2015-2017/data/survey_data_2.csv")
write.csv(da37679.0003, "Virtual Extremism in US 2015-2017/data/survey_data_3.csv")