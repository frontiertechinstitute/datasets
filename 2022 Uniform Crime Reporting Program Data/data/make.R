load(
  "2022 Uniform Crime Reporting Program Data/raw/DS1 Six or More Months Dataset/DS0001/39063-0001-Data.rda")
load(
  "2022 Uniform Crime Reporting Program Data/raw/DS2 Twelve Months Dataset/DS0002/39063-0002-Data.rda")

write.csv(da39063.0001, "2022 Uniform Crime Reporting Program Data/data/DS1 Six Or More Months.csv")
write.csv(da39063.0002, "2022 Uniform Crime Reporting Program Data/data/DS2 Twelve Months.csv")