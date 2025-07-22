# Barriers to Justice

How Immigration Policies Affect Immigrant Juveniles Seeking Protection

## Project Overview

The goal of this project is to explore how recent changes in U.S. immigration
policy under the current administration are affecting immigrant juveniles’
access to legal representation and the outcomes of their protection cases.

Our key questions include:

- How have recent policy shifts impacted access to legal aid for immigrant juveniles?
- What are the trends in case outcomes for unrepresented versus represented youth?
- What structural or systemic factors contribute to the legal gap?

---

## Problem Statement

Immigrant juveniles in the U.S. face serious barriers to legal
representation, especially under recent changes in immigration policy.
These policies have increased case backlogs, limited access to legal aid,
and negatively affected outcomes for children seeking protection.
Our group aims to understand how these systemic issues shaped by shifting
policies, institutional structures, and public attitudes impact vulnerable
youth and what can be done to improve fairness and access to justice.

For more details: [0_domain_study](0_domain_study/README.md)

## Stack / Technologies Used

- [Programming Language / Version]
- [Library / Framework]
- [Library / Framework]
- [Library / Framework]
- [Notebook / IDE]

---

## Understanding the Problem Domain

We applied systems thinking to the topic domain to understand the complex,
interconnected issues immigrant juveniles face in accessing legal representation
and reuniting with family in the U.S.
These systemic challenges result from increasingly restrictive immigration
policies, funding instability, enforcement practices, and underlying beliefs
about immigrant children and legal rights.

For a more detailed breakdown of the system, including key events, trends,
structures, and underlying mental models, check out the full overview:
[0_domain_study](0_domain_study/README.md)

## Actionable Research Question

***"How do changes in U.S. immigration policy under the current administration
affect access to legal representation and outcomes for immigrant juveniles
seeking protection?"***

### Context & Constraints

- **Domain:** U.S. immigration law and policy, focused on juveniles (minors) seeking
legal protection (e.g., asylum, Special Immigrant Juvenile Status).

- **Realities:** Immigration policy is dynamic and politically influenced; juvenile
immigrants face complex barriers navigating the legal system; access to legal
counsel is crucial for fair outcomes.

- **Constraints:**
  - **Data Availability:** Data on representation and case outcomes may be fragmented
  (court records, NGO data, government statistics). Policy changes may not be
  immediately or transparently reflected in public data.  
  - **Ethical/Legal:** Privacy concerns for minors; potential bias in available datasets.
  - **Temporal/Geographical Scope:** Defining the appropriate time window may be
  required. The study can be nationwide or limited to areas with sufficient or
  high-priority data.

---

## Data

### Dataset Source

**EOIR Case Data:** [Data.gov](https://catalog.data.gov/dataset/eoir-case-data)

The Executive Office for Immigration Review (EOIR) releases monthly case level  
immigration court data through the U.S. Department of Justice. The dataset is  
collected and updated regularly via official government systems and includes  
information on individual court proceedings.

Files included in this dataset (if applicable):

- `[Schema_Related]` – brief description
- `[Lookup]` – brief description

### Dataset Context

- The purpose of the dataset

The dataset was created to support analysis of how changes in U.S. immigration
policy under the current administration have impacted:

Access to legal representation for immigrant juveniles

Case outcomes such as asylum granted, denied, or terminated

- The population or scenario it represents
  The dataset represents juvenile immigrants (typically unaccompanied children)
  who were:

Involved in U.S. immigration court proceedings between FY 2020 and FY 2025

Identified as being under 18 years old at the time of case filing

Facing deportation, seeking asylum, or applying for other forms of immigration relief

### For more details [1_datasets](1_datasets/README.md)

## Non-Technical Summary

This project investigates how legal representation and case results for juvenile
immigrants have shifted in response to federal immigration policies enacted
between 2018 and 2025. Results indicate the following:

- Juveniles with legal representation are more likely to receive favorable
  decisions (45.3% vs. 0.8% without representation).
- Major policy changes align with changes in representation rates.
- Demographic characteristics affect outcomes, but representation remains the
  most reliable predictor.

Visual materials help communicate these relationships in an accessible way and
can be found in the [notebook](4_data_analysis.ipynb).

Although the dataset is large and informative, limitations such as missing data
and unmeasured local influences should be considered when interpreting results.

## Technical Summary

The analysis is based on four linked datasets examining how immigration policy
affects juvenile immigrants' legal representation and case outcomes. Findings
show a clear relationship between representation and favorable case results.

### Datasets Used

- **juvenile_cases_cleaned.csv.gz**: 1.8 million demographic and procedural records
- **juvenile_history_cleaned.csv.gz**: Records linking juveniles to proceedings
- **juvenile_proceedings_cleaned.csv.gz**: Records of appearances and decisions
- **tblLookup_Juvenile.csv**: Reference table for juvenile categories
- **tblDecCode.csv**: Reference table for decision code descriptions
- **tbl_RepsAssigned.csv**: Reference table for representation

### For more details [4_data_analysis](4_data_analysis/README.md)

---

## Contributors

List each team member (or yourself) and their role or focus area. For example:

- **[Ammar Ibrahim](https://github.com/AmmarIbrahimTech)**
- **[Amro Mohamed](https://github.com/Elshikh-Amro)**
- **[Azza Omer](https://github.com/AzzaOmer1)**
- **[Banu Ozyilmaz](https://github.com/doctorbanu)**
- **[Gennadii Ershov](https://github.com/imwaymaran)**
- **[Muhammad Shahroz](https://github.com/Shahroz657)**
- **[Ramon Colmenares](https://github.com/RamonColmenares)**

## Acknowledgments

Special thanks to the **MIT Emerging Talent Program** for their guidance and feedback.
