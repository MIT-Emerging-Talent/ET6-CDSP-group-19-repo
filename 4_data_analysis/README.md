# Data Analysis

## Folder Overview

This folder presents an analysis of how U.S. immigration policy shifts between 2018
and 2025 (Trump-Biden-Trump II) have influenced legal representation and
case outcomes for immigrant juveniles seeking protection.

## Contents of Folder

* **`4_data_analysis.ipynb`**: Main Jupyter notebook containing the full analysis
* **`README.md`**: Overview, methodology, and replication instructions
* **External Data Files** (to be downloaded separately from [Google Drive](https://drive.google.com/drive/u/2/folders/1gv42BRnm6blapzoDEbYbFf6M1IXZJXcL)):
  * `juvenile_cases_cleaned.csv.gz`: Case-level data with demographics
  * `juvenile_history_cleaned.csv.gz`: History records linked to juvenile cases
  * `juvenile_proceedings_cleaned.csv.gz`: Decision and hearing-level data
  * `juvenile_reps_assigned.csv.gz`: Records of juvenile legal representation
  * `tblLookup_Juvenile.csv`: Reference table for juvenile categories
  * `tblDecCode.csv`: Reference table for decision code descriptions

## File Structure

* [Folder Overview](#folder-overview)
* [Contents of Folder](#contents-of-folder)
* [Non-Technical Summary](#non-technical-summary)
* [Technical Summary](#technical-summary)
* [Replication Guide](#replication-guide)

---

## Non-Technical Summary

This project investigates how legal representation and case results for juvenile
immigrants have shifted in response to federal immigration policies enacted
between 2018 and 2025. Results indicate the following:

* Legal representation is the strongest predictor of favorable outcomes;
juveniles with representation are over 5× more likely to succeed than those without.
* Major policy changes align with changes in cases outcomes:
  > Biden Era improves outcomes (37.1% favorable) compared to Trump I (20.6%)
  and Trump II (22.7%).

   However, policy changes have only a small effect size compared to representation.
* Representation rates are only slightly affected by policy changes:
  > Representation rates were 43% for Biden, 40% for Trump I, and 51% for
  Trump II's first era
* Demographic characteristics slightly affect outcomes,
  but representation remains the most reliable predictor.

Visual materials help communicate these relationships in an accessible way and
can be found in the [notebook](4_data_analysis.ipynb).

Although the dataset is large and informative, limitations such as missing data
and unmeasured local influences should be considered when interpreting results.

## Technical Summary

The analysis is based on four linked datasets examining how immigration policy
affects juvenile immigrants' legal representation and case outcomes. Findings
show a clear relationship between representation and favorable case results.

### Datasets Used

* **juvenile_cases_cleaned.csv.gz**: 1.8 million demographic and procedural records
* **juvenile_history_cleaned.csv.gz**: Records linking juveniles to proceedings

* **juvenile_reps_assigned.csv.gz**: Records of juvenile legal representation

* **juvenile_proceedings_cleaned.csv.gz**: Records of proceedings and decisions
* **tblLookup_Juvenile.csv**: Reference table for juvenile categories
* **tblDecCode.csv**: Reference table for decision code descriptions

### Analytical Methods

1. **Time Series Analysis**
   * Trends analyzed across administration periods (Trump Era I, Biden Era, Trump
  Era II)
   * Analysis of patterns across policy eras

2. **Chi-Square Tests**
   * Association tests between outcomes and representation, and policy eras

3. **Logistic Regression**
   * Modeled probability of favorable outcomes while controlling for policy era,
  gender, and age.

### Method Rationale

* Time series methods captured long-term trends tied to policy shifts
* Chi-square tests provided robust evaluation of categorical relationships
* Logistic models allowed adjustment for confounding demographic variables

### Analytical Caveats

* Missing values in some variables may slightly limit the precision of results.

* Policy implementation may vary by court location (not captured here).

* Other unmeasured factors (e.g., socioeconomic status or language barriers)
  could influence outcomes.

* Results are correlational, not causal.

* Trump Era II (2025–) data are still incomplete due to the recency of this period.

---

## Replication Guide

### Data Setup

**Note:** Due to size limitations, data files are excluded from this repository.

1. Access all required files using the shared Google Drive link above.
2. Place all downloaded files in the `4_data_analysis` folder.
3. Ensure the following Python packages are available:
   * pandas>=1.3.0
   * numpy>=1.20.0
   * matplotlib>=3.4.0
   * seaborn>=0.11.0
   * statsmodels>=0.12.0
   * scikit-learn>=0.24.0
4. Confirm the working directory is set to match the notebook location.

### Running the Analysis

1. **Environment Setup**
   * Use Python 3.8 or newer
   * Install required packages listed above
   * Open Jupyter Notebook or JupyterLab

2. **Execute the Notebook**
   * Open `4_data_analysis.ipynb`
   * Run all cells sequentially
   * Built-in checkpoints verify loading and cleaning steps

3. **Output Verification**
   * Charts and tables showing trends and relationships
   * Summary stats and test results
   * Analysis of relationships between representation and outcomes

4. **Customization Options**
   * Time period definitions can be adjusted
   * Plot styles can be modified
   * Model parameters can be adjusted as needed

5. **Troubleshooting**
   * Confirm correct file paths and zip status
   * Use a system with adequate RAM for optimal performance

All results can be reproduced and extended using the provided resources.
