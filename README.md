# Datasets
## 2022 LIHTC Tenant Data

Dataset: **"2022 LIHTC Full Tenant Data.csv"**

 - 46 variables and 38,228 observations
### Documentation
On the original [site](https://www.huduser.gov/portal/datasets/lihtc/tenant.html) providing the data, refer to **Documentation Guide for HUD’s Low Income Housing Tax Credit (LIHTC) Tenant Data**. Provided is information on each of the tables that can come with the raw data. The dataset we have is a collection of different tables' data joined by property (name, city, and state).
 - Columns 1-5 come from "2022 LIHTC Tenant Data by Property - HUD_ID.xlsx" (note that propertyname, city, and state are found in *all* tables)
 - Columns 6-13 come from *Table 4*
 - Columns 14-20 come from *Table 8*
 - Columns 21-26 come from *Table 9*
 - Columns 27-33 come from *Table 10*
 - Columns 34-36 come from *Table 11*
 - Columns 37-46 come from *Table 12*

Using the given documentation descriptions for each table, you should be able to interpret the column names and are encouraged to rename them for your comprehension.

Note - all other files in "2022 LIHTC Tenant Data/data" are raw files from HUD

## 2022 Qatar World Cup

Dataset: **"worldcup_2022_matches.csv"**

 - 9 variables and 60 observations
### Documentation
Data comes from football.db's [worldcup](https://github.com/openfootball/worldcup) repo in the 2022--qatar folder, which has been copied to our World Cup/data folder. Any confusion with the data presented in the dataset should be resolved by reading the original text files, *cup.txt* and *cup_finals.txt*, and the code in *make_csv.R* (you can review text processing and *regular expressions* [here](https://github.com/rstudio/cheatsheets/blob/main/strings.pdf)). 

## Predicting Dropouts from MOOC Courses

### Setup
The full MOOC dataset would be too large to fit in a repo. Build it locally.

1. Install [R](https://cran.r-project.org/)
2.  Access the download link [here](http://moocdata.cn/data/user-activity#User%20Activity). Click the download link for the "Dropout Prediction Dataset".
3. The downloaded file is a .gz file. See if you are able to open it on your computer and unzip it. If not, search for instructions online for your Operating System. The only files you need from this .gz file are `train_log.csv` and `test_log.csv`.
4. In GitHub, you already have `test_truth.csv` and `train_truth.csv` in the MOOC folder. Download these files in GitHub locally in your computer, along with `make.R`. Place the files in folders so that they are organized the same way that they are in the repo. Drag and drop `train_log.csv` and `test_log.csv` into the raw folder.
Your folder should look like this:
```text
MOOC/
  raw/
    train_log.csv
    test_log.csv
    train_truth.csv
    test_truth.csv
  make.R
```
5. Double-click `build_dataset.bat`.


