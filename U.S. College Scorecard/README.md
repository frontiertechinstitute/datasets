#  College Financial Fit Project README

## Dataset Overview
This dataset provides a curated subset of the **U.S. Department of Education’s College Scorecard**. It integrates historical institutional microdata sourced directly from the **Integrated Postsecondary Education Data System (IPEDS)**, the **National Student Loan Data System (NSLDS)**, and the **Internal Revenue Service (IRS)**. 

To keep your analysis focused and computationally efficient, this file has been pre-filtered to include only **primary main campuses** of **4-year, Bachelor's degree-granting colleges and universities** across the United States, leaving you with a clean laboratory of 2,000+ institutions.

---

##  20-Variable Data Dictionary

###
* **`UNITID` (Unique Institutional ID)**
    * *Type:* Integer
    * *Definition:* The unique 6-digit identification number assigned to every higher education institution by IPEDS. 
    * *Why it matters:* This is the foolproof key used to index, merge, or validate specific universities without risking typos or duplicates.
* **`INSTNM` (Institution Name)**
    * *Type:* String (Text)
    * *Definition:* The official legal name of the college or university.
    * *Why it matters:* Essential for rendering text labels on your visualizations or tracking down high-performing outliers.
* **`STABBR` (State Abbreviation)**
    * *Type:* String (2-Character Text)
    * *Definition:* The postal abbreviation of the state where the main campus is physically located (e.g., `CA`, `TX`, `NY`).
* **`REGION` (Geographic Region Code)**
    * *Type:* Integer (Categorical Key)
    * *Definition:* The broad bureaucratic region mapping of the United States. 
    * *The Mapping Key:* * `1` = New England
      * `2` = Mid East
      * `3` = Great Lakes
      * `4` = Plains
      * `5` = Southeast
      * `6` = Southwest
      * `7` = Rocky Mountains
      * `8` = Far West
* **`LOCALE` (Campus Urbanization Type)**
    * *Type:* Integer (Categorical Key)
    * *Definition:* A geographic classification code assigned by the National Center for Education Statistics (NCES) indicating the physical setting and density of the surrounding environment.
    * *The Mapping Key:* * **Cities:** `11` (Large), `12` (Midsize), `13` (Small)
        * **Suburbs:** `21` (Large), `22` (Midsize), `23` (Small)
        * **Towns (Standalone):** `31` (Fringe), `32` (Distant), `33` (Remote)
        * **Rural Areas:** `41` (Fringe), `42` (Distant), `43` (Remote)
* **`CONTROL` (Institutional Control)**
    * *Type:* Integer (Categorical Key)
    * *Definition:* Indicates the foundational structural funding model of the institution.
    * *The Mapping Key:* * `1` = Public State University
      * `2` = Private Non-Profit
      * `3` = Private For-Profit
* **`ADM_RATE` (Admission Rate)**
    * *Type:* Float (Decimal between `0.0` and `1.0`)
    * *Definition:* The percentage of applicants who were granted admission to the university (e.g., `0.15` indicates a 15% acceptance rate).
* **`SAT_AVG` (Average SAT Score)**
    * *Type:* Float / Integer
    * *Definition:* The overall average composite SAT score of incoming freshman students who enrolled (Scale: 400 to 1600).
* **`ACTCMMID` (Midpoint ACT Score)**
    * *Type:* Float / Integer
    * *Definition:* The exact midpoint of the 25th and 75th percentile cumulative ACT scores for enrolled freshmen (Scale: 1 to 36).
* **`UGDS` (Undergraduate Enrollment)**
    * *Type:* Integer
    * *Definition:* The total size of the degree-seeking undergraduate student body. Useful for checking if school size impacts student funding or resource depth.
* **`COSTT4_A` (Average Cost of Attendance)**
    * *Type:* Float (Currency)
    * *Definition:* The comprehensive, public "sticker price" of attending the school for one full academic year. This includes structural tuition, student fees, books, and average on-campus room and board.
* **`TUITIONFEE_IN` (In-State Tuition)**
    * *Type:* Float (Currency)
    * *Definition:* The flat baseline tuition and fixed fees charged specifically to students who maintain residency in that state.
* **`TUITIONFEE_OUT` (Out-of-State Tuition)**
    * *Type:* Float (Currency)
    * *Definition:* The flat baseline tuition and fixed fees charged to out-of-state or international students.
* **`PCTPELL` (Pell Grant Percentage)**
    * *Type:* Float (Decimal between `0.0` and `1.0`)
    * *Definition:* The share of undergraduate students receiving a Federal Pell Grant. Because Pell Grants are strictly awarded to low-income families, this serves as a data science proxy for a school's economic diversity.
* **`PCTFLOAN` (Federal Student Loan Percentage)**
    * *Type:* Float (Decimal between `0.0` and `1.0`)
    * *Definition:* The percentage of undergraduate students who rely on federal student loans to pay for their education.
* **`RET_FT4` (Full-Time Retention Rate)**
    * *Type:* Float (Decimal between `0.0` and `1.0`)
