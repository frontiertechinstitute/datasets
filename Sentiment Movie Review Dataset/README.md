# IMDB Movie Reviews Dataset

This dataset was pulled directly from the Stanford AI Lab's Large Movie Review Dataset (http://ai.stanford.edu/~amaas/data/sentiment/) and parsed into CSV format. Due to GitHub file size limits, the dataset is split into 4 files by original train/test split and sentiment label.

**Files:**
- `imdb_train_pos.csv`
- `imdb_train_neg.csv`
- `imdb_test_pos.csv`
- `imdb_test_neg.csv`

**Columns:**
- `review` — full text of the user-written movie review
- `rating` — numeric score (1-4 or 7-10; neutral 5-6 ratings excluded)
- `sentiment` — 1 = positive, 0 = negative
- `split` — original train/test split from the Stanford dataset

**How to merge in Colab:**

```python
import pandas as pd

files = ['imdb_train_pos.csv', 'imdb_train_neg.csv', 'imdb_test_pos.csv', 'imdb_test_neg.csv']
df = pd.concat([pd.read_csv(f) for f in files], ignore_index=True)

print(f"Shape: {df.shape}")
```
