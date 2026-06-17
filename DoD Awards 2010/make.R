library(tidyverse)
library(readr)

#documentation folder 

files = list.files(
  "DoD Awards 2010/raw/codes",
  pattern = "\\.csv$",
  full.names = TRUE
)

code_lookup = c(
  "cl_3077.csv" = "TYPE.OF.RECIPIENT",
  "cl_1322.csv" = "TYPE.OF.ASSISTANCE.TRANSACTION",
  "cl_6236.csv" = "FEDERAL.AGENCY.ORGANIZATIONAL.UNIT.CODE",
  "cl_2.csv"    = "TYPE.OF.ACTION",
  "cl_4.csv"    = "RECORD.TYPE",
  "cl_5.csv"    = "CORRECTION.LATE.INDICATOR.",
  "cl_6115.csv" = "RECIPIENT.STATE.CODE"
)

save_codebook = function(file) {
  
  df = read.csv(file)
  
  output_name = code_lookup[basename(file)]
  
  write.csv(
    df,
    paste0(
      "DoD Awards 2010/documentation/",
      output_name,
      ".csv"
    ),
    row.names = FALSE
  )
}

walk(files, save_codebook)

#dataset csv

quarters = list.files(
  "DoD Awards 2010/raw",
  pattern = "\\.csv$",
  full.names = TRUE
)


#dataset csv

q1 = read_csv("DoD Awards 2010/raw/DOD Awards Q1.csv", col_types = cols(.default = "c"))
q2 = read_csv("DoD Awards 2010/raw/DOD Awards Q2.csv", col_types = cols(.default = "c"))
q3 = read_csv("DoD Awards 2010/raw/DOD Awards Q3.csv", col_types = cols(.default = "c"))
q4 = read_csv("DoD Awards 2010/raw/DOD Awards Q4.csv", col_types = cols(.default = "c"))

dod_2010 = bind_rows(q1, q2, q3, q4) |>
  select(
    -`CFDA PROGRAM NUMBER`,
    -`FEDERAL AWARD IDENTIFIER NUMBER`,
    -`RECIPIENT CITY CODE`,
    -`STATE APPLICATION IDENTIFIER (SAI NUMBER)`,
    -`FEDERAL FUNDING SIGN`,
    -`NON-FEDERAL FUNDING SIGN`,
    -`TOTAL FUNDING SIGN`,
    -`PRINCIPAL PLACE OF PERFORMANCE CODE`
  )

write_csv(dod_2010, "DoD Awards 2010/DOD_Awards_2010.csv")