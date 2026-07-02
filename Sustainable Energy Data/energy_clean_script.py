"""
Cleaning script: Sustainable Energy for All (SE4ALL)
Source: TidyTuesday 2026-05-26, energy_cleaned.csv
Original raw source: Energy Data / SE4ALL Database (energydata.info)
Original curator: Ntobeko Sosibo (TidyTuesday), via a dplyr/tidyr pivot script.

This script picks up where the TidyTuesday R cleaning left off (long-to-wide
pivot, indicator renaming) and does the pandas-side pass needed before this
data goes into a student-facing project guide.

Two issues addressed here that the R script didn't touch:
  1. Region/income-group aggregates (e.g. "Low & middle income", "High
     income: OECD") are mixed in with real countries and carry codes that
     LOOK like ISO3 country codes (LMY, OEC, GEA...) but aren't. Left in,
     these silently corrupt country-level rankings, groupbys, and maps.
  2. access_electricity_* / access_non_solid_fuel_* columns are only
     populated for 1990, 2000, and 2010 (decadal snapshots), not annual.
     That's not missing data in the usual sense -- it's a different
     reporting cadence, and needs to be documented so students don't
     mistake it for widespread nulls.
"""

import pandas as pd

RAW_URL = "https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2026/2026-05-26/energy_cleaned.csv"

# Codes identified by inspection: 3-letter codes attached to non-country
# aggregate rows (region/income groupings), not real ISO3 country codes.
AGGREGATE_CODES = {
    "GEA": "Eastern Asia (not including Japan)",
    "NOC": "High income: nonOECD",
    "OEC": "High income: OECD",
    "LMY": "Low & middle income",
    "MIC": "Middle income",
    "GOC": "Oceania (not including Australia and New Zealand)",
}

# Columns only populated in decadal snapshot years (1990, 2000, 2010).
DECADAL_SNAPSHOT_COLS = [
    "access_non_solid_fuel_rural_pop_pct",
    "access_non_solid_fuel_total_pop_pct",
    "access_non_solid_fuel_urban_pop_pct",
    "access_electricity_rural_pop_pct",
    "access_electricity_total_pop_pct",
    "access_electricity_urban_pop_pct",
]


def load_raw(url: str = RAW_URL) -> pd.DataFrame:
    return pd.read_csv(url, na_values=["NA"])


def remove_aggregate_rows(df: pd.DataFrame) -> pd.DataFrame:
    """Drop World Bank region/income-group rows, keep only individual countries."""
    before = df["country_name"].nunique()
    df = df[~df["country_code"].isin(AGGREGATE_CODES)].copy()
    after = df["country_name"].nunique()
    print(f"Removed {len(AGGREGATE_CODES)} aggregate groups "
          f"({before - after} unique country_name entries dropped).")
    return df


def check_dtypes(df: pd.DataFrame) -> pd.DataFrame:
    df["yr"] = df["yr"].astype(int)
    df["country_name"] = df["country_name"].astype(str)
    df["country_code"] = df["country_code"].astype(str)
    return df


def clean() -> pd.DataFrame:
    df = load_raw()
    df = remove_aggregate_rows(df)
    df = check_dtypes(df)

    df = df.sort_values(["country_name", "yr"]).reset_index(drop=True)
    return df


if __name__ == "__main__":
    cleaned = clean()
    cleaned.to_csv("energy_se4all_cleaned.csv", index=False)
    print(f"\nFinal shape: {cleaned.shape}")
    print(f"Countries: {cleaned['country_name'].nunique()}")
    print(f"Years: {cleaned['yr'].min()}-{cleaned['yr'].max()}")
    print(f"\nReminder: {DECADAL_SNAPSHOT_COLS} are only populated for "
          f"1990/2000/2010 -- document this in the project guide so "
          f"students don't misread it as sparse annual data.")
