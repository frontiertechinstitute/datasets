import pandas as pd

# TidyTuesday 2022-05-10: NYT Bestsellers
# Source: https://github.com/rfordatascience/tidytuesday/tree/main/data/2022/2022-05-10
# Merges nyt_full.csv (weekly panel) with nyt_titles.csv (book-level summary)
# into a single CSV, one row per book-per-week.

titles = pd.read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-05-10/nyt_titles.tsv', sep='\t')
full = pd.read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2022/2022-05-10/nyt_full.tsv', sep='\t')

titles_trimmed = titles.drop(columns=['title', 'author']).rename(columns={'year': 'pub_year'})

combined = full.merge(titles_trimmed, left_on='title_id', right_on='id', how='left')
combined = combined.drop(columns=['id'])

combined.to_csv('nyt_bestsellers_combined.csv', index=False)
