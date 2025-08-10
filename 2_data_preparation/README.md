# Data Preparation

This folder contains data cleaning notebooks in [`2_data_preparation/notebooks`](./notebooks) used to prepare raw EOIR data for analysis, focusing on juvenile immigration cases.

Cleaned datasets are stored externally due to size constraints:  
[View Cleaned Data in Cloud Storage](https://drive.google.com/drive/folders/1C8HEBVoI0GHZL9kh40bklIkWBWiGIfpu?usp=share_link)

## Cleaning Notebooks

Each notebook processes one core EOIR table:

| Notebook | Description |
|----------|-------------|
| **`clean_tbl_JuvenileHistory.ipynb`** | Extracts the list of juvenile case IDs from the juvenile history table for downstream filtering. |
| **`clean_A_TblCase.ipynb`** | Cleans the main case table, filters to juvenile cases, standardizes categorical values, and parses date fields. |
| **`clean_B_TblProceeding.ipynb`** | Cleans the proceeding table, filters to juvenile-related proceedings, standardizes categories, and parses dates. |
| **`clean_tbl_RepsAssigned.ipynb`** | Cleans the legal representation table, filters to juvenile cases with `STRATTYTYPE = "ALIEN"`, standardizes categories, parses dates, and documents the representation identification logic. |

## General Cleaning Workflow

1. **Initial Data Inspection**  
   Load a small sample (100–1000 rows) to:
   - Inspect data types
   - Detect irrelevant or null-heavy columns
   - Define memory-efficient dtypes (`Int64`, `category`, `string`, etc.)

2. **Schema Definition & Selective Loading**  
   Load full tables with:
   - Only relevant columns
   - Predefined dtypes to reduce memory usage
   - Error handling for malformed rows

3. **Cleaning & Standardization**  
   - Drop unused categories  
   - Normalize categorical values  
   - Convert date strings to `datetime64[ns]`  
   - Apply table-specific filtering (e.g., juvenile cases, alien representation)

4. **Output**  
   Save cleaned datasets as `.csv.gz` to optimize storage and I/O performance.

## How to Use

1. Download the raw EOIR data:  
   [Raw Data Folder][raw-data-link]
2. Run the notebooks in logical order:  
   1. `clean_tbl_JuvenileHistory.ipynb`  
   2. `clean_A_TblCase.ipynb`  
   3. `clean_B_TblProceeding.ipynb`  
   4. `clean_tbl_RepsAssigned.ipynb`
3. Use the cleaned `.csv.gz` outputs for downstream analysis.

## Notes

- Cleaned CSVs are **not stored in the repo** due to size. Download them from the [cleaned datasets folder][cleaned-data-link].
- Outputs are gzip-compressed for efficiency.

[raw-data-link]: https://drive.google.com/drive/folders/1T82lpd3Pwzkhq1nCNJah0FfwkSnphdRz?usp=share_link  
[cleaned-data-link]: https://drive.google.com/drive/folders/1C8HEBVoI0GHZL9kh40bklIkWBWiGIfpu?usp=share_link
