# Notes - Chronic Disease Inicators
## 1 CSV file: `chronic_disease_data.csv`

### Variable Dictionary

| Variable Name | Data Type | Description | Examples |
| :--- | :--- | :--- | :--- |
| `year` | Integer | The year the data was collected. | `2019` |
| `state_code` | String | Two-letter postal abbreviation for the state | `AL`, `CT`, `DE`, `GU` |
| `state_name` | String | Full state name | `Alabama`, `Connecticut` |
| `health_topic` | String | The classification or disease category | `Tobacco`, `Cardiovascular Disease`, `Diabetes` |
| `indicator_metric` | String | The clinical outcome or behavioral risk factor being measured | `High blood pressure among adults`, `Gestational diabetes` |
| `measurement_type`| String | The statistical unit or mathematical methodology used to calculate the data | `Crude Prevalence`, `Number`, `Age-adjusted Rate` |
| `numeric_value` | Float | The statistical finding for the row (can be a percentage, rate, or raw count) | `30.0`, `2053.0` *(Includes null values where data is suppressed)* |
| `demographic_group`| String | The demographic, racial, or ethnic identity | `White, non-Hispanic`, `Hispanic`, `Overall` |
