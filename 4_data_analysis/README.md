# Immigration Policy Impact Analysis

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

* Juveniles with legal representation are more likely to receive favorable
  decisions (45.3% vs. 0.8% without representation).
* Major policy changes align with changes in representation rates.
* Demographic characteristics affect outcomes, but representation remains the
  most reliable predictor.

Visual materials help communicate these relationships in an accessible way and
can be found in the [notebook](4_data_analysis.ipynb).

Although the dataset is large and informative, limitations such as missing data
and unmeasured local influences should be considered when interpreting results.

## Technical Summary

The analysis is based on three linked datasets examining how immigration policy
affects juvenile immigrants' legal representation and case outcomes. Findings
show a clear relationship between representation and favorable case results.

### Datasets Used

* **juvenile_cases_cleaned.csv.gz**: 1.8 million demographic and procedural records
* **juvenile_history_cleaned.csv.gz**: Records linking juveniles to proceedings
* **juvenile_proceedings_cleaned.csv.gz**: Records of appearances and decisions
* **tblLookup_Juvenile.csv**: Reference table for juvenile categories
* **tblDecCode.csv**: Reference table for decision code descriptions

### Analytical Methods

1. **Time Series Analysis**
   * Trends analyzed across administration periods (Trump Era I, Biden Era, Trump
  Era II)
   * Analysis of patterns across policy eras

2. **Chi-Square Tests**
   * Association tests between outcomes and representation
   * Comparisons across demographic groups

3. **Logistic Regression**
   * Probability of favorable outcomes modeled using multiple factors
   * Controls for demographic and case characteristics

### Method Rationale

* Time series methods captured long-term trends tied to policy shifts
* Chi-square tests provided robust evaluation of categorical relationships
* Logistic models allowed adjustment for confounding demographic variables

### Analytical Caveats

* High rates of missing values may distort estimates
* Legal representation is not directly recorded in the selected tables.
  Cases marked as “absentia” are treated as likely unrepresented,
  based on the assumption that absence during hearings often reflects lack of
  legal counsel. Case outcomes were classified using decision codes from tblDecCode.csv
* Representation quality cannot be measured, affecting interpretation
* The study identifies correlations, but establishing causation would require
  experimental research design

### Key Results

1. **Representation Effects**
   * Juveniles with legal representation have significantly higher favorable outcomes
     (approximately 45.3%) compared to those without representation
     (approximately 0.8%)
   * Overall legal representation rate is around 65.7%

2. **Policy Transitions**
   * Analysis shows shifts in representation rates across different policy eras
   * Data segmented by policy periods (Trump Era I, Biden Era, Trump Era II)

3. **Cross-Tabulation Analysis**
   * Strong statistical relationship between legal representation and case outcomes
   * Chi-square tests confirm the significance of this relationship

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
