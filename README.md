# Barriers to Justice

How Immigration Policies Affect Immigrant Juveniles Seeking Protection

## Project Overview & Problem Statement

Immigrant juveniles in the U.S. face serious barriers to legal representation,
particularly under recent changes in immigration policy.
These policies have increased case backlogs, limited access to legal aid,
and negatively affected outcomes for children seeking protection.

This research examines how these policy changes have affected immigrant juveniles'
access to legal representation and the outcomes of their protection cases.
The study seeks to understand how systemic issues, shaped by shifting policies,
institutional structures, and public attitudes, impact vulnerable youth and
identify potential interventions to improve fairness and access to justice.

The study addresses these key questions:

- How have recent policy shifts impacted access to legal aid for immigrant juveniles?
- What trends can be observed in case outcomes between represented and unrepresented
  youth?
- Which structural or systemic factors contribute to the identified legal representation
  gap?

📌 For more details on the problem domain: [0_domain_study](0_domain_study/README.md)

---

## Domain Analysis & Conceptual Framework

### Systems Approach

Systems thinking was applied to understand the complex, interconnected issues
immigrant juveniles face in accessing legal representation and reuniting with
family in the U.S. These systemic challenges result from increasingly
restrictive immigration policies, funding instability, enforcement practices,
and underlying beliefs about immigrant children and legal rights.

### Actionable Research Question

***"How do changes in U.S. immigration policy under the current administration
affect access to legal representation and outcomes for immigrant juveniles
seeking protection?"***

📌 For a more detailed explanation of the systems thinking behind our research question,
including context, constraints, and objectives: [0_domain_study](0_domain_study/README.md)

---

## Non-Technical Explanation of the Domain Model  

The domain model translates the real-world system of immigration policy,
legal representation, and juvenile case outcomes into analyzable data.
Below is how the data was modeled and what limitations
are recognized in this approach.

### ✅ Features Collected for Each Case  

Each case is represented using the following features:

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

Policy change data is modeled by:

- Identifying relevant policy changes connected to juvenile immigration cases.
- Describing what exactly changed in these policies.
- Explaining how the changes affect juveniles.
- Recording the date of each change.
- Representing this information as structured descriptive data
(e.g., a table of policy changes with dates and impact descriptions).

📌 [A separate document][1] was created summarizing the policies that have
changed, their role in protecting juveniles, and how the changes affect them.

[1]: 3_data_exploration/policy_impact_review.md

### ✅ Modeling Impact on Legal Representation and Case Outcomes  

The percentage of legally represented cases before and after policy change was
collected and compared.

👉 **To keep the model practical and manageable:**

- Legal representation was modeled as a binary yes/no variable.
- Types of representation (e.g., NGO, private) were not differentiated.

The percentage of deportation outcomes before and after each policy change was
collected and compared.

⚠ **Limitation in this approach:**

- Comparing deportation percentages alone doesn’t isolate the effect of legal representation,
  as other factors like case complexity and selection bias may influence outcomes.

👉 **To address this, the following comparisons were made:**

- The deportation rate in legally represented cases before vs after the policy change.
- The deportation rate in unrepresented cases before vs after the policy change.
- Other possible factors, such as language barriers, were also explored where
  data allowed.

### 🧱 Possible Flaws or Limitations  

- **Public datasets may not always be complete:** Some cases might have
missing values (e.g., no outcome listed) or inconsistently reported fields
(e.g., legal aid marked differently across courts).
This could reduce the reliability or comparability of some features.

- **Generalization:** Not every case or region is the same,
but the model examines the system broadly.

- **No direct feedback from affected youth:** The insights are based
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

## Data and Methodology

### Dataset Overview

**Executive Office for Immigration Review (EOIR) Case Data**  
Source: [Data.gov](https://catalog.data.gov/dataset/eoir-case-data)

Monthly case-level immigration court data are released by the EOIR through
the U.S. Department of Justice. The dataset is collected and updated regularly
via official government systems and includes information on individual court proceedings.

### Population Represented

The dataset represents juvenile immigrants (typically unaccompanied children) who:

- Were involved in U.S. immigration court proceedings between FY 2020-2025
- Were identified as under 18 years old at the time of case filing
- Were seeking various forms of relief (asylum, withholding of removal, etc.)
- Represented diverse countries of origin, predominantly from Central America
- Had varying access to legal representation across jurisdictions

### Research Purpose

The dataset was created to support analysis of how changes in U.S. immigration
policy under the current administration have impacted:

- Access to legal representation for immigrant juveniles
- Case outcomes such as asylum granted, denied, or terminated
- Processing times and procedural fairness in juvenile cases
- Regional and demographic disparities in legal outcomes

### Data Files

Files included in this dataset (available via Google Drive due to size limitations):

- **juvenile_cases_cleaned.csv.gz** - 1.8 million demographic and procedural records
- **juvenile_history_cleaned.csv.gz** - Records linking juveniles to proceedings
- **juvenile_proceedings_cleaned.csv.gz** - Records of appearances and decisions
- **juvenile_reps_assigned.csv.gz** - Records of legal representation assignments
- **tblLookup_Juvenile.csv** - Reference table for juvenile categories
- **tblDecCode.csv** - Reference table for decision code descriptions

**Note:** Due to the large size of these datasets, files are not included directly
in this repository.
To replicate the analysis,
download these files from the shared [Google Drive](https://drive.google.com/drive/u/2/folders/1gv42BRnm6blapzoDEbYbFf6M1IXZJXcL)
and place them in the working directory.

📌 For more details: [1_datasets](1_datasets/README.md)

### Data Preparation

Raw data required significant preprocessing to transform it into an analyzable format.
The data preparation process included:

- **Data Cleaning**: Removing duplicate records, handling missing values, and
  correcting inconsistent entries
- **Data Integration**: Merging separate tables to create comprehensive
  juvenile case records
- **Data Validation**: Implementing quality checks to ensure data integrity and consistency
- **Standardization**: Normalizing fields like court locations and case types for
  consistent analysis

📌 For complete data preparation methodology and code: [2_data_preparation](2_data_preparation/README.md)

### Exploratory Data Analysis

Before conducting formal hypothesis testing, exploratory analysis was performed to:

- **Identify Patterns**: Visualize distributions and relationships between variables
- **Detect Anomalies**: Find outliers and unusual patterns requiring investigation
- **Assess Data Quality**: Evaluate the completeness and reliability of key variables
- **Inform Modeling**: Determine appropriate statistical approaches based on
  data characteristics

📌 For detailed exploration findings: [3_data_exploration](3_data_exploration/README.md)

### Analytical Approach

This project investigates how legal representation and case results for juvenile
immigrants have shifted in response to federal immigration policies enacted
between 2018 and 2025. The analysis employed several methodological approaches:

1. **Time Series Analysis**
   - Trends were analyzed across three distinct administration periods
   - Policy implementation timelines were mapped against representation rates

2. **Statistical Testing**
   - Chi-square tests evaluated associations between variables
   - p-values < 0.001 were consistently obtained for representation effects

3. **Regression Modeling**
   - Logistic regression models controlled for confounding factors
   - Demographic variables were included as covariates

### Initial Findings Summary

Key results from the analysis indicate:

- Juveniles with legal representation are significantly more likely to receive favorable
  decisions (45.3% vs. 0.8% without representation)
- Major policy changes align with observable changes in representation rates
- Demographic characteristics affect outcomes, but representation remains the
  most reliable predictor of favorable case results

Although the dataset is large and informative, limitations such as missing data
and unmeasured local influences should be considered when interpreting results.

📌 Visual materials help communicate these relationships in an accessible way and
can be found in the [analysis notebook](4_data_analysis/4_data_analysis.ipynb).

📌 A detailed methodology and all findings can be found in [4_data_analysis](4_data_analysis/README.md)

---

## Key Findings

The comprehensive data analysis revealed several critical insights:

- **Legal Representation Impact**: A stark disparity exists in case outcomes,
  with represented juveniles receiving favorable decisions at a rate of 45.3%
  compared to only 0.8% for unrepresented juveniles.
  
- **Policy Period Effects**: Significant fluctuations in representation rates
  correlate directly with major immigration policy transitions between
  administrations.
  
- **Demographic Influences**: While demographic factors influence case outcomes,
  legal representation consistently serves as the strongest predictor of
  favorable decisions.
  
- **Time Trends**: Clear patterns of declining representation rates occur during
  restrictive policy periods, with corresponding negative impacts on case
  outcomes.

### Statistical Significance

The relationship between representation and favorable outcomes was confirmed
through rigorous statistical testing (p < 0.001), demonstrating that these
findings are not attributable to random variation.

Visual representations of these relationships are presented in the
[analysis notebook](4_data_analysis/4_data_analysis.ipynb).

Despite the robust dataset utilized, certain limitations including missing data
points and unmeasured local policy influences should be considered when
interpreting these results.

---

## Technical Implementation

### Technologies Used

The data analysis was performed using the following technologies:

- **Python 3.8+**: Core programming language
- **Jupyter Notebooks**: Interactive analysis environment
- **pandas 1.3.0+**: Data manipulation and analysis
- **numpy 1.20.0+**: Numerical operations
- **matplotlib 3.4.0+**: Data visualization
- **matplotlib.dates**: Handling dates in visualizations
- **seaborn**: Statistical data visualization (built on matplotlib)
- **statsmodels**: Statistical modeling and hypothesis testing
- **scipy**: Scientific computing and advanced statistical functions
- **scikit-learn 0.24.0+**: Data splitting (train_test_split) and
  classification metrics(accuracy_score, roc_auc_score)

### Development Environment and Tools

- **Version Control**: Git with GitHub  
- **Code Editor**: Visual Studio Code (VSCode) with Jupyter extension  
- **Analysis Environment**: Jupyter Notebooks (opened and edited via VSCode)  
- **Collaboration Tools**: Slack, GitHub Issues, Google Drive, Google Docs  
- **Documentation**: Markdown  

### Reproducibility

To reproduce the analysis:

1. Clone this repository
2. Download the datasets from the [Google Drive link](https://drive.google.com/drive/u/2/folders/1gv42BRnm6blapzoDEbYbFf6M1IXZJXcL)
3. Place dataset files in the `4_data_analysis/` directory
4. Run the Jupyter notebooks in sequence

📌 For detailed setup instructions, see [4_data_analysis/README.md](4_data_analysis/README.md).

---

## Future Work & Recommendations

Based on the findings, several directions for future research and policy
recommendations emerge:

### Research Extensions

- Conduct longitudinal studies tracking outcomes for juveniles over extended timeframes
- Investigate regional variations in representation access and policy implementation
- Explore correlations between local NGO funding and representation rates
- Develop predictive models for case outcomes based on multiple variables

### Policy Recommendations

- Increase funding for legal aid organizations serving juvenile immigrants
- Implement specialized training for immigration judges handling juvenile cases
- Establish mandatory representation requirements for all juvenile cases
- Create streamlined processes for asylum applications from vulnerable populations

📌 For comprehensive methodological details and additional recommendations:
[4_data_analysis](4_data_analysis/README.md)

---

## Contributors

This research was conducted through collaborative efforts by a multidisciplinary
team:

- [Ammar Ibrahim](https://github.com/AmmarIbrahimTech)  
- [Amro Mohamed](https://github.com/Elshikh-Amro)  
- [Azza Omer](https://github.com/AzzaOmer1)  
- [Banu Ozyilmaz](https://github.com/doctorbanu)  
- [Gennadii Ershov](https://github.com/imwaymaran)  
- [Muhammad Shahroz](https://github.com/Shahroz657)  
- [Muhammet Ali Isik](https://github.com/misik-eng)  
- [Ramon Colmenares](https://github.com/RamonColmenares)  

## Acknowledgments

Special thanks to the **MIT Emerging Talent Program** for their guidance and feedback
throughout the project.
