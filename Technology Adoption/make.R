library(readr)

technology = readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-07-19/technology.csv')
write.csv(technology, "Technology Adoption/technology.csv")