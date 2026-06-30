# ORIGINAL DATA PULLED FROM CDC API

import pandas as pd
url = "https://data.cdc.gov/api/views/hfr9-rurv/rows.csv?accessType=DOWNLOAD"
df = pd.read_csv(url)
