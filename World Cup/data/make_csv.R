library(tidyverse)
library(stringr)
library(lubridate)

parse_worldcup_file = function(path) {
  lines = readLines(path, encoding = "UTF-8") %>%
    str_squish()
  
  current_section = NA
  current_date = NA
  
  rows = list()
  
  for (line in lines) {
    
    if (str_detect(line, "^▪\\s+")) {
      current_section = str_remove(line, "^▪\\s+")
      current_section = str_remove(current_section, "\\s+\\|.*$")
    }
    
    if (str_detect(line, "^(Sun|Mon|Tue|Wed|Thu|Fri|Sat)\\s+")) {
      current_date = line
    }
    
    if (str_detect(line, "^\\d{1,2}:\\d{2}\\s+") &&
        str_detect(line, "\\d+-\\d+") &&
        str_detect(line, "@")) {
      
      rows[[length(rows) + 1]] = tibble(
        section = current_section,
        date_raw = current_date,
        raw = line
      )
    }
  }
  
  bind_rows(rows)
}

group_matches = parse_worldcup_file("World Cup/data/2022--qatar/cup.txt")
final_matches = parse_worldcup_file("World Cup/data/2022--qatar/cup_finals.txt")

matches_raw = bind_rows(group_matches, final_matches)

matches_2022 = matches_raw %>%
  mutate(
    date = paste(str_remove(date_raw, "^[A-Za-z]+\\s+"), "2022"),
    time = str_extract(raw, "^\\d{1,2}:\\d{2}"),
    venue = str_trim(str_extract(raw, "(?<=@ ).*$")),
    score = str_extract(raw, "\\d+-\\d+"),
    score1 = as.integer(str_extract(score, "^\\d+")),
    score2 = as.integer(str_extract(score, "\\d+$")),
    pre_score = str_trim(str_remove(raw, "\\d+-\\d+.*$")),
    team1 = str_trim(str_remove(pre_score, "^\\d{1,2}:\\d{2}")),
    post_score = str_trim(str_remove(raw, "^.*?\\d+-\\d+")),
    post_score = str_remove(post_score, "^.*?\\)\\s*"),
    post_score = str_remove(post_score, "^.*?pen\\.\\s*"),
    team2 = str_trim(str_remove(post_score, "\\s+@.*$"))
  ) %>%
  select(
    section,
    date,
    time,
    team1,
    score1,
    score2,
    team2,
    venue,
    raw
  )

write_csv(matches_2022, "World Cup/data/worldcup_2022_matches.csv")