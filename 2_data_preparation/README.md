# Data Preparation

This folder contains data cleaning notebooks
[`2_data_preparation/notebooks`](./notebooks)
used to prepare raw EOIR data for analysis,
with a focus on juvenile immigration cases.

Cleaned datasets were originally planned to be stored within this folder.
However, due to their size, they are now stored externally in cloud storage:  
[View Cleaned Data in Cloud Storage](<link-to-folder>)

## Overview of Cleaning Process

### `02_clean_core_tables.ipynb` Notebook

The tables in this dataset are extremely large,
with some containing millions of rows.
To avoid memory issues and unnecessary processing,
the cleaning process followed an incremental and memory-efficient approach:

1. **Initial Sampling:**  
   A small portion of each table (e.g., first 100–1000 rows) was loaded to:
   - Review data types (`dtypes`)
   - Identify relevant columns for future analysis
   - Detect and exclude irrelevant or fully null fields

   This early inspection ensured that only meaningful columns were retained for
   full processing.

2. **Schema Definition:**  
   Data types were explicitly defined (`Int64`, `category`, `string`, etc.)
   to optimize memory usage and preserve null values where necessary.

3. **Full Table Load (Selective):**  
   After defining the schema and relevant columns, the full tables were loaded using:
   - Selected columns only  
   - Memory-efficient data types  
   - Error handling for known malformed rows

4. **Data Inspection (No EDA):**  
   The focus remained on validating the structure and quality of
   the cleaned data (e.g., shape, missing values, duplicates),
   not on exploratory data analysis.
