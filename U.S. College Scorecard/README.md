# College Financial Fit Project README

## 20-Variable Data Dictionary

### **UNITID (Unique Institutional ID)**
* **Type:** Integer
* **Definition:** The unique 6-digit identification number assigned to every higher education institution by IPEDS. 
* **Why it matters:** This is the foolproof key used to index, merge, or validate specific universities without risking typos or duplicates.

### **INSTNM (Institution Name)**
* **Type:** String (Text)
* **Definition:** The official legal name of the college or university.
* **Why it matters:** Essential for rendering text labels on your visualizations or tracking down high-performing outliers.

### **STABBR (State Abbreviation)**
* **Type:** String (2-Character Text)
* **Definition:** The postal abbreviation of the state where the main campus is physically located (e.g., `CA`, `TX`, `NY`).
* **Why it matters:** Allows for geographic filtering, regional grouping, and state-by-state comparisons.

### **REGION (Geographic Region Code)**
* **Type:** Integer (Categorical Key)
* **Definition:** The broad bureaucratic region mapping of the United States. 
* **The Mapping Key:**
  * `1` = New England
  * `2` = Mid East
  * `3` = Great Lakes
  * `4` = Plains
  * `5` = Southeast
  * `6` = Southwest
  * `7` = Rocky Mountains
  * `8` = Far West

### **LOCALE (Campus Urbanization Type)**
* **Type:** Integer (Categorical Key)
* **Definition:** A geographic classification code assigned by the National Center for Education Statistics (NCES) indicating the physical setting and density of the surrounding environment.
* **The Mapping Key:**
  * **Cities:** `11` (Large), `12` (Midsize), `13` (Small)
  * **Suburbs:** `21` (Large), `22` (Midsize), `23` (Small)
  * **Towns (Standalone):** `31` (Fringe), `32` (Distant), `33` (Remote)
  * **Rural Areas:** `41` (Fringe), `42` (Distant), `43` (Remote)

### **CONTROL (Institutional Control)**
* **Type:** Integer (Categorical Key)
* **Definition:** Indicates the foundational structural funding model of the institution.
* **The Mapping Key:**
  * `1` = Public State University
  * `2` = Private Non-Profit
  * `3` = Private For-Profit

### **ADM_RATE (Admission Rate)**
* **Type:** Float (Decimal between `0.0` and `1.0`)
* **Definition:** The percentage of applicants who were granted admission to the university (e.g., `0.15` indicates a 15% acceptance rate).
* **Why it matters:** Serves as the primary indicator of a school's selectivity and entry threshold.

### **SAT_AVG (Average SAT Score)**
* **Type:** Float / Integer
* **Definition:** The overall average composite SAT score of incoming freshman students who enrolled (Scale: 400 to 1600).
* **Why it matters:** Tracks the baseline academic test performance profile of the incoming class.

### **ACTCMMID (Midpoint ACT Score)**
* **Type:** Float / Integer
* **Definition:** The exact midpoint of the 25th and 75th percentile cumulative ACT scores for enrolled freshmen (Scale: 1 to 36).
* **Why it matters:** Complements the SAT metric to capture incoming student test credentials across different regions.

### **UGDS (Undergraduate Enrollment)**
* **Type:** Integer
* **Definition:** The total size of the degree-seeking undergraduate student body. 
* **Why it matters:** Crucial for controlling for institutional scale and checking if school size impacts student funding or resource depth.

### **COSTT4_A (Average Cost of Attendance)**
* **Type:** Float (Currency)
* **Definition:** The comprehensive, public "sticker price" of attending the school for one full academic year. This includes structural tuition, student fees, books, and average on-campus room and board.
* **Why it matters:** Represents the baseline pricing starting point before financial aid or scholarships are subtracted.

### **TUITIONFEE_IN (In-State Tuition)**
* **Type:** Float (Currency)
* **Definition:** The flat baseline tuition and fixed fees charged specifically to students who maintain residency in that state.

### **TUITIONFEE_OUT (Out-of-State Tuition)**
* **Type:** Float (Currency)
* **Definition:** The flat baseline tuition and fixed fees charged to out-of-state or international students.

### **PCTPELL (Pell Grant Percentage)**
* **Type:** Float (Decimal between `0.0` and `1.0`)
* **Definition:** The share of undergraduate students receiving a Federal Pell Grant. Because Pell Grants are strictly awarded to low-income families, this serves as a data science proxy for a school's economic diversity.

### **PCTFLOAN (Federal Student Loan Percentage)**
* **Type:** Float (Decimal between `0.0` and `1.0`)
* **Definition:** The percentage of undergraduate students who rely on federal student loans to pay for their education.
* **Why it matters:** Indicates the degree to which an institution's student body must borrow against future earnings to finance their degree.

### **RET_FT4 (Full-Time Retention Rate)**
* **Type:** Float (Decimal between `0.0` and `1.0`)
* **Definition:** The percentage of full-time, first-time, degree-seeking undergraduate students who choose to re-enroll at the institution for their second academic year.
* **Why it matters:** Serves as a vital proxy for student support, academic adjustment, and overall first-year campus satisfaction.

### **C150_4 (Four-Year Institution Graduation Rate)**
* **Type:** Float (Decimal between `0.0` and `1.0`)
* **Definition:** The proportion of full-time, first-time, degree-seeking undergraduate students who complete their program within 150% of the "normal time" (i.e., graduating within 6 years for a standard 4-year bachelor's degree).
* **Why it matters:** This is the ultimate benchmark for educational completion success, heavily impacting financial ROI calculations.

### **GRAD_DEBT_MDN (Median Graduate Debt)**
* **Type:** Float (Currency)
* **Definition:** The median loan debt accumulated by students who successfully completed their degree program. 
* **Why it matters:** Captures the true liability payload that graduates carry into the workforce as they begin trying to get a return on their degree.

### **MD_EARN_WNE_4YR (Median Earnings 4 Years Post-Graduation)**
* **Type:** Float (Currency)
* **Definition:** The median salary of working graduates exactly four years after exiting the institution.
* **Why it matters:** An excellent short-term ROI metric showing how quickly a school’s credentials translate into entry-to-mid level career earnings.

### **MD_EARN_WNE_P10 (Median Earnings 10 Years Post-Graduation)**
* **Type:** Float (Currency)
* **Definition:** The median salary of working graduates exactly ten years after entering the institution.
* **Why it matters:** The ultimate long-term career outcome anchor, tracking mature earning trajectory and long-haul economic mobility.
