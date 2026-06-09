# Notes - Messi vs. Ronaldo World Cup Challenge

## 1 Data File

- `cleaned_goat_world_cup_data.csv` — Curated dataset to contain specifically only Messi and Ronaldo data

## 21-Variable Data Dictionary

### **tournament_id**
* **Type:** String (Text Key)
* **Definition:** The unique alphanumeric identifier assigned to a specific edition of the FIFA Men's World Cup (e.g., `WC-2006`, `WC-2022`).
* **Why it matters:** Essential for temporal filtering and indexing career progressions by distinct tournament iterations.

### **tournament_name**
* **Type:** String (Text)
* **Definition:** The official full name of the FIFA World Cup edition (e.g., `2006 FIFA Men's World Cup`).
* **Why it matters:** Useful for readable text labels, descriptive headers, and chart legends during visualization.

### **match_id**
* **Type:** String (Text Key)
* **Definition:** A unique structured key identifying a specific match within a given tournament (e.g., `M-2006-21`).
* **Why it matters:** Serves as the primary key for grouping metrics by individual fixture or mapping data against external match event logs.

### **match_name**
* **Type:** String (Text)
* **Definition:** The team pairing descriptor for the fixture, indicating which countries competed (e.g., `Argentina vs Serbia and Montenegro`, `Portugal vs Spain`).
* **Why it matters:** Instantly contextualizes the opponent strength, match history, and narrative backdrop of a player's performance.

### **match_date**
* **Type:** String (ISO Date Format `YYYY-MM-DD`)
* **Definition:** The calendar date on which the specific match was officially played.
* **Why it matters:** Allows chronological sorting, trend timeline charts, and rest-day calculation modeling.

### **stage_name**
* **Type:** String (Categorical Text)
* **Definition:** The competitive phase of the tournament in which the match occurred (e.g., `group stage`, `round of 16`, `quarter-finals`, `semi-finals`, `third-place match`, `final`).
* **Why it matters:** Crucial for separating lower-stakes introductory fixtures from high-pressure elimination rounds.

### **group_name**
* **Type:** String (Text)
* **Definition:** The letter designation of the opening group phase (e.g., `Group B`, `Group C`), or noted as `not applicable` if the fixture took place during the knockout rounds.
* **Why it matters:** Helps evaluate early-tournament competition pools and group dynamics.

### **team_name**
* **Type:** String (Text)
* **Definition:** The national football federation that the player represented during the match (i.e., `Argentina` or `Portugal`).
* **Why it matters:** Used for quick high-level categorization of international squads.

### **player_id**
* **Type:** String (Unique Text Key)
* **Definition:** The unique identification sequence assigned to the player to guarantee data integrity (e.g., `P-14758`).
* **Why it matters:** Eliminates ambiguity when running automated aggregations or merging across distinct data sheets.

### **given_name**
* **Type:** String (Text)
* **Definition:** The legal first name of the player (`Lionel` or `Cristiano`).

### **family_name**
* **Type:** String (Text)
* **Definition:** The legal surname of the player (`Messi` or `Ronaldo`).

### **starter**
* **Type:** Integer (Binary flag: `1` or `0`)
* **Definition:** Indicates whether the player was chosen in the opening tactical lineup on the pitch (`1` = Started, `0` = Did not start).
* **Why it matters:** Used to calculate tactical preference, physical availability, and baseline squad reliance.

### **substitute**
* **Type:** Integer (Binary flag: `1` or `0`)
* **Definition:** Indicates whether the player entered the match as a tactical substitution off the bench (`1` = Came on as a sub, `0` = Did not enter as a sub).
* **Why it matters:** Isolates an athlete's impact as an in-game reinforcement versus a tactical starter.

### **minutes_played**
* **Type:** Integer
* **Definition:** The exact volume of regulation and extra-time minutes the player spent active on the pitch during the match.
* **Why it matters:** The primary denominator for normalizing volume statistics into rate statistics (e.g., calculating Goals per 90 minutes).

### **total_goals**
* **Type:** Integer
* **Definition:** The gross sum of goals scored by the player during the match.
* **Why it matters:** The apex metric for calculating absolute offensive output and match-winning capabilities.

### **open_play_goals**
* **Type:** Integer
* **Definition:** The number of goals scored during live, active play, excluding direct penalty kicks.
* **Why it matters:** Provides a clearer picture of a player's tactical creation, positional awareness, and open-field danger without inflation from dead-ball scenarios.

### **penalty_goals**
* **Type:** Integer
* **Definition:** The number of goals scored directly from the penalty spot.
* **Why it matters:** Helps isolate set-piece execution proficiency from fluid, open-play generation.

### **assists**
* **Type:** Integer
* **Definition:** The number of final passes or actions directly leading to a goal scored by a teammate.
* **Why it matters:** Measures playmaker efficiency, vision, and altruistic offensive contribution.

### **is_knockout**
* **Type:** Integer (Binary flag: `1` or `0`)
* **Definition:** A categorical flag identifying whether the match was a win-or-go-home elimination fixture (`1` = Knockout round, `0` = Group stage phase).
* **Why it matters:** Vital for filtering data to assess legacy performance metrics under extreme elimination pressure.

### **yellow_cards**
* **Type:** Integer
* **Definition:** The total count of official yellow card cautions issued to the player by the referee during the match.
* **Why it matters:** Measures defensive discipline, aggression indices, and suspension risks.

### **red_cards**
* **Type:** Integer
* **Definition:** The total count of official red card ejections issued to the player during the match.
* **Why it matters:** Captures extreme disciplinary failures that directly result in a player being sent off the pitch, heavily hindering team structure.
