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

For full context and research objectives: [0_domain_study](0_domain_study/README.md)

---

## Non-Technical Explanation of Our Domain Model  

Our domain model aims to translate the real-world system of immigration policy,
legal representation, and juvenile case outcomes into data we can analyze.
Below is how we chose to model the data and what limitations
we recognize in this approach.

### ✅ Features We Will Collect for Each Case  

We will represent each case using the following features:

- **Case ID**
- **Date of filing / decision**
- **Case duration** (derived from filing and decision dates)
- **Interpreter need** (yes/no) — *if available*
- **Age of juvenile**
- **Country of origin**
- **Type of case** (e.g., asylum, deportation)
- **Legal representation status** (yes/no)
- **Outcome** (e.g., granted, denied, closed)
- **Court location / region**
- **Policy period** (before/after specific policy X)

### ✅ Policy Changes Modeling  

We will model policy change data by:

- Identifying relevant policy changes connected to juvenile immigration cases.
- Describing what exactly changed in these policies.
- Explaining how the changes affect juveniles.
- Recording the date of each change.
- Representing this information as structured descriptive data
(e.g., a table of policy changes with dates and impact descriptions).

👉 We will also create a separate document summarizing the policies that have
changed, their role in protecting juveniles, and how the changes affect them.

### ✅ Modeling Impact on Legal Representation and Case Outcomes  

- We will collect and compare the **percentage of legally represented cases**
before and after policy change.

  👉 To keep our model practical and manageable:
**Legal representation** will be modeled as a binary **yes/no** variable.
We will not differentiate types of representation (e.g., NGO, private).

- We will collect and compare the **percentage of deportation outcomes**
before and after each policy change.

  ⚠ **Limitation in this approach:**  
Comparing deportation percentages alone doesn’t isolate the effect of legal
representation, as other factors like case complexity and selection bias may
influence outcomes.

  👉 To address this, we will compare:

- The **deportation rate in legally represented cases**
before vs after the policy change.
- The **deportation rate in unrepresented cases** before vs after the policy change.

We will also explore other possible factors, such as **language barriers**,
where data allows.

### 🧱 Possible Flaws or Limitations  

- **Public datasets may not always be complete:** Some cases might have
missing values (e.g., no outcome listed) or inconsistently reported fields
(e.g., legal aid marked differently across courts).
This could reduce the reliability or comparability of some features.

- **Generalization:** Not every case or region is the same,
but our model looks at the system broadly.

- **No direct feedback from affected youth:** Our insights are based
on secondhand reports and research, not lived experiences.

- **Causation vs. correlation:** Our analysis may identify associations
between policy changes and outcomes, but cannot definitively establish
that policy changes directly caused the observed differences, as other
factors may have changed simultaneously (e.g. socioeconomic conditions in origin
countries, or shifts in legal aid funding).

- **Selection bias in legal representation:** Juveniles who obtain legal
representation may systematically differ from those who don't (e.g.,
less/more complex cases, worse/better economic resources, living in rural or urban
areas), which could confound our analysis of representation effects.

- **Time lag effects:** Policy changes may take months to fully implement
and show measurable effects. Our before/after comparison approach may
not capture delayed impacts or gradual implementation phases.

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
