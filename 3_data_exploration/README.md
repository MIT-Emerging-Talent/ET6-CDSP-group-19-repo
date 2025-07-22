# Data Exploration

This folder contains materials for exploring and understanding the prepared
datasets, including contextual analysis, descriptive statistics, and
visualizations.

## Current Contents

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

  TExploratory data analysis is still in progress.
  Additional visualizations and expanded exploratory analysis will
  be added as the project evolves.

## Planned Development

Additional exploratory analysis scripts and notebooks will be developed in
future phases to:

- Generate descriptive statistics for key variables
- Create visualizations of case trends and patterns
- Examine demographic distributions in juvenile cases
- Support the project’s research objectives through data-driven insights

-----

*Note: This folder focuses on exploratory data analysis and descriptive
statistics. Inferential statistical analysis will be conducted in subsequent
project phases.*
