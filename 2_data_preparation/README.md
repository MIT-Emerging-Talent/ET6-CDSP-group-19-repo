# Data Preparation

This folder contains data cleaning notebooks
[`2_data_preparation/notebooks`](./notebooks) used to prepare raw EOIR data
for analysis, with a focus on juvenile immigration cases.

Cleaned datasets were originally planned to be stored within this folder.
However, due to their size, they are now stored externally in cloud storage:  
[View Cleaned Data in Cloud Storage](https://drive.google.com/drive/folders/1C8HEBVoI0GHZL9kh40bklIkWBWiGIfpu?usp=share_link)

## Overview of Cleaning Process

### `02_clean_core_tables.ipynb` Notebook

The tables in this dataset are extremely large, with some containing
millions of rows. To avoid memory issues and unnecessary processing,
the cleaning process followed an incremental and memory-efficient approach:

1. **Initial Sampling:**  
   A small portion of each table (e.g., first 100–1000 rows) was loaded to:
   - Review data types (`dtypes`)
   - Identify relevant columns for future analysis
   - Detect and exclude irrelevant or fully null fields

2. **Schema Definition:**  
   Data types were explicitly defined (`Int64`, `category`, `string`, etc.)
   to optimize memory usage and preserve null values where necessary.

3. **Full Table Load (Selective):**  
   After defining the schema and selecting relevant columns, the full tables
   were loaded using:
   - Only necessary columns  
   - Memory-efficient types  
   - Error handling for malformed rows

4. **Data Cleaning & Structuring:**  
   After loading, key cleaning tasks were performed:
   - Removed unused category levels  
   - Standardized or filtered unexpected categorical values  
   - Parsed and cleaned date fields  
   - Filtered to only juvenile-related records (where applicable)

5. **Output Saved:**  
   Cleaned tables were saved as compressed `.csv.gz` files to reduce
   storage size and improve read/write performance.

## How to Use

1. Download and place the raw data files into the working directory:  
   [Google Drive folder for raw data][raw-data-link]

2. Run the notebooks located in the [`notebooks`](./notebooks) folder.

3. Cleaned datasets will be generated and saved to a local `../outputs/`
   folder.

## Notes

- Cleaned CSVs are **not versioned** in this repo due to size.
- For downstream analysis, download the files from the cloud folder below.

*The cleaned outputs are stored in a  
[Google Drive folder for cleaned datasets][cleaned-data-link],  
as this folder is not included in the repo due to size constraints.*

[raw-data-link]: https://drive.google.com/drive/folders/1T82lpd3Pwzkhq1nCNJah0FfwkSnphdRz?usp=share_link  
[cleaned-data-link]: https://drive.google.com/drive/folders/1C8HEBVoI0GHZL9kh40bklIkWBWiGIfpu?usp=share_link
