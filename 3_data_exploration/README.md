# Data Exploration

This folder contains materials for exploring and understanding the prepared datasets,
including contextual analysis, descriptive statistics, and visualizations.

## Folder Contents

- [**policy_impact_review.md**](./policy_impact_review.md)  
  A contextual review of immigration policy changes and their potential impacts
  on juvenile immigration case patterns and outcomes.

- [**README.md**](./README.md)  
  This file documenting the folder’s purpose and contents.

- [**03_eda_juvenile_cases.ipynb**](./notebooks/03_eda_juvenile_cases.ipynb)  
  Exploratory data analysis on juvenile case records:
  - **Total juvenile records**: 2,857,093  
  - **Unique juvenile case IDs**: 1,917,264  
  - **Median records per case**: 1.0  
  - **Average records per case**: 1.49  
  - **Cases with only one record**: 1,269,970  
  - **Missing `idnJuvenile` values**: 999  

  **Juvenile Type (`strCode`) Distribution**:
  - Unknown: 1,883,374  
  - UJ: 452,017  
  - J: 233,667  
  - AJ: 227,915  
  - J1: 59,386  
  - J2: 734  

  **Missing Data Overview (Selected Columns)**:
  - `DETENTION_DATE`: 100% missing  
  - `DATE_RELEASED`: 76% missing  
  - `GENDER`: 26% missing  
  - Others include `DATE_DETAINED`, `DATE_OF_ENTRY`, and `C_BIRTHDATE`

  **Gender Distribution**:
  - Male (M): 875,507 — 64%  
  - Female (F): 494,724 — 36%  

  **Age Analysis**:
  - Age statistics calculated from birth date and entry date
  - Age range: 0 to 118 years (maximum likely represents data quality issue)
  - Analysis includes histogram visualizations showing age distribution
  - Separate analysis for juveniles under 21 years of age

  **Top Nationalities in Juvenile Cases**:
  - Guatemala (GT), Honduras (HO), Mexico (MX), El Salvador (ES)
  - Comprehensive nationality abbreviation lookup table included
  - Visualization of top 20 nationalities by case count

  **Language Distribution**:
  - Top 5 languages analyzed with visualization
  - Spanish appears to be the predominant language

  **Detention Analysis**:
  - Mean detention duration calculated across all cases
  - Sample analysis of first 1,000 cases for detailed detention patterns
  - Detention duration visualization with histogram analysis
  - Average detention duration by case type analysis (excluding AOL, DCC, NAC types)

  **Legal Representation Analysis** (`rep` Table):
  - Total entries: 2,704,603 with 6 columns
  - Time series analysis of case counts by representation level (STRATTYLEVEL)
  - Monthly trends showing rising pattern from early 2000s to end of 2015
  - Analysis of representation types and court levels over time

  The exploratory data analysis includes comprehensive statistical summaries,
  demographic breakdowns, temporal trend analysis, and multiple visualization
  types including histograms, bar plots, count plots, and time series
  visualizations.

-----

*Note: This folder focuses on exploratory data analysis and descriptive
statistics. Inferential statistical analysis will be conducted in subsequent
project phases.*
