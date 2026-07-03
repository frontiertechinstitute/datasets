# NYT Bestsellers (Combined)

## Overview

This dataset tracks books that appeared on the *New York Times* Bestseller list. It combines weekly ranking data with book-level summary statistics into a single file, so each row is self-contained — no need to join across tables to get a book's full context.

Original source: [Post45 Data](https://data.post45.org/), via [TidyTuesday 2022-05-10](https://github.com/rfordatascience/tidytuesday/tree/main/data/2022/2022-05-10). The two original files (`nyt_titles.tsv` and `nyt_full.tsv`) have been merged into a single tidy CSV for this repo.

## File

`nyt_bestsellers_combined.csv` — one row per book, per week it appeared on the bestseller list.

## Variables

| Variable | Type | Description |
|---|---|---|
| `year` | integer | Year of that week's bestseller list |
| `week` | date | Date of the specific weekly list (YYYY-MM-DD) |
| `rank` | integer | The book's rank on the list that week (1 = highest) |
| `title_id` | integer | Unique identifier for the book |
| `title` | string | Book title |
| `author` | string | Book author |
| `pub_year` | integer | Year the book was published |
| `total_weeks` | integer | Total number of weeks the book spent on the bestseller list, across its entire run |
| `first_week` | date | Date the book first appeared on the bestseller list |
| `debut_rank` | integer | The book's rank in its first week on the list |
| `best_rank` | integer | The highest (best/lowest-numbered) rank the book ever achieved |

## Notes on structure

- This is a **weekly panel**: a book that stayed on the list for 10 weeks appears in 10 separate rows, one per week.
- `total_weeks`, `debut_rank`, `best_rank`, and `pub_year` describe the book as a whole and repeat identically across every row for that book — they are not week-specific.
- `year`/`week`/`rank` describe that specific week's list entry and change from row to row for the same book.
- Data spans 1931 to the near-present.
