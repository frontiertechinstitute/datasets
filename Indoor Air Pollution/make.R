install.packages("readr")

death_source <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-04-12/death_source.csv')
fuel_access <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-04-12/fuel_access.csv')
fuel_gdp <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-04-12/fuel_gdp.csv')

death_source = death_source |>
  filter(!is.na(Entity),
         !is.na(Code),
         !is.na(Year))
indoor_pollution <- death_source |>
  left_join(
    fuel_access,
    by = c("Entity", "Code", "Year")
  )

indoor_pollution <- indoor_pollution |>
  left_join(
    fuel_access,
    by = c("Entity", "Code", "Year")
  )

write.csv(indoor_pollution, "Indoor Air Pollution/indoor_pollution.csv")