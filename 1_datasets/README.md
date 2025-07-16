# Source Dataset

## Source

The dataset comes from the Executive Office for Immigration Review (EOIR),  
available via [Data.gov](https://catalog.data.gov/dataset/eoir-case-data).  
It contains raw case-level data on immigration court proceedings, including  
juvenile cases, and covers the period from 2008 to the present.

We could not include the full dataset in this repository due to its size,  
but it can be accessed directly through the following link:  
[Google Drive Folder](https://drive.google.com/drive/folders/1gv42BRnm6blapzoDEbYbFf6M1IXZJXcL?usp=sharing)

> This version reflects the latest public release as of **March 2025**.

## Structure

The dataset is composed of 97 tables (.csv) in total:

- 19 main tables containing case-level information.
- 78 lookup tables providing reference values for codes used in the main tables.

These tables form a relational schema, where:

- Each table has a primary key and may use foreign keys to reference others.
- Code fields in the main tables act as foreign keys to lookup tables, mapping  
  short codes to full descriptions.
- Tables can be joined on shared keys to follow a case through its full lifecycle.

## Key Tables and Fields

The primary tables for this project are `tbl_JuvenileHistory`, `A_TblCase` and `B_TblProceeding`.

---

### Key Fields in `tbl_JuvenileHistory`

| Field Name         | Description                                              |
|--------------------|----------------------------------------------------------|
| `idnJuvenileHistory` | Primary key for `tbl_JuvenileHistory`                  |
| `idnCase`            | Foreign key to `A_TblCase` (`IDNCASE`)                 |
| `idnProceeding`      | Foreign key to `B_TblProceeding` (`IDNPROCEEDING`)     |
| `idnJuvenile`        | Foreign key to `tblLookup_Juvenile` |

---

### Key Fields in `A_TblCase`

| Field Name           | Description                                            |
|----------------------|--------------------------------------------------------|
| `IDNCASE`            | Primary key for `A_TblCase`                            |
| `NAT`                | Nationality code of the individual (lookup: nationality)|
| `LANG`               | Primary language code (lookup: language)               |
| `CUSTODY`            | Custody status code (lookup: custody type)             |
| `CASE_TYPE`          | Type of immigration case (lookup: case type)           |
| `LATEST_HEARING`     | Date of the latest hearing                             |
| `LATEST_TIME`        | Time of the latest hearing                             |
| `LATEST_CAL_TYPE`    | Type of hearing: `"M"` (master) or `"I"` (individual)  |
| `DATE_OF_ENTRY`      | Date the individual entered the U.S.                   |
| `GENDER`             | Gender code (typically `"M"` or `"F"`)                 |
| `DATE_DETAINED`      | Date the individual was detained                       |
| `DATE_RELEASED`      | Date of release from detention                         |
| `DETENTION_DATE`     | Date the individual entered current detention facility |

---

### Key Fields in `B_tblProceeding`

| Field Name         | Description                                              |
|--------------------|----------------------------------------------------------|
| `IDNPROCEEDING`    | Primary key for `B_TblProceeding`                        |
| `IDNCASE`          | Foreign key to `A_tblCase`                               |
| `OSC_DATE`         | Date the charging document was issued to the individual  |
| `INPUT_DATE`       | Date the court received and created the proceeding record|
| `BASE_CITY_CODE`   | Code for the immigration court jurisdiction (lookup: BaseCity)|
| `HEARING_LOC_CODE` | Code for the assigned hearing location (lookup: Hloc)    |
| `DEC_CODE`         | Decision code of the immigration judge (lookup: DecCode) |
| `COMP_DATE`        | Date of the proceeding was completed                     |
| `ABSENTIA`         | Indicates if the case was decided without the individual present|
| `CUSTODY`          | Custody status code (lookup: custody type)               |
| `CASE_TYPE`        | Type of immigration case (lookup: case type)             |
| `NAT`              | Nationality code of the individual (lookup: country)     |
| `LANG`             | Primary language code (lookup: language)                 |
| `CRIM_IND`         | Indicates whether the case involved criminal charges     |
| `DATE_DETAINED`    | Date the individual was detained                         |
| `DATE_RELEASED`    | Date of release from detention                           |

## Project Focus

Although the dataset contains a broad range of immigration court records,
this project focuses specifically on juvenile cases.
For this reason, our analysis begins with the `tbl_JuvenileHistory` table,
which contains one row per juvenile and serves as the entry point for linking
to other case-related tables.

## Possible Flaws and Limitations

- **Incomplete records**: Some fields or entire entries are missing, especially
  in earlier years.

- **Evolving structure**: Code meanings and field usage have changed over time.
  Some fields are marked as "Legacy" and may no longer be consistent.

- **Duplicates**: Individuals may appear in multiple rows or be involved in
  multiple cases, which requires careful handling during analysis.

- **Ambiguous codes**: Some lookup tables contain overlapping or unclear labels,
  making interpretation difficult without external documentation.

- **Long case durations**: Immigration cases can span multiple years and
  presidential administrations, which may affect legal context and outcomes.

- **Misleading columns**: Some fields (e.g., `DATCREATEDON`, `DATMODIFIEDON` in
  `tbl_JuvenileHistory`) do not reflect the actual dates or information they are
  supposed to provide.

- **Outdated snapshot**: The dataset has not been updated since March 2025.
  This is relevant for our project, which aims to analyze recent policy changes.

## Reproducibility

To recreate the dataset and prepare it for analysis:

1. **Download raw data**  
   All 97 .csv files are available from the [EOIR Case Data page on Data.gov]  
   (<https://catalog.data.gov/dataset/eoir-case-data>).

2. **Use organized structure**  
   The data is already organized into 19 main tables and 78 lookup tables.  
   Lookup tables are stored in the `Lookup` folder.

3. **Standardize formats**  
   Clean missing values, standardize date formats, and ensure consistent data  
   types (e.g., string or categorical for code fields).

4. **Join tables**  
   Use key fields to combine main tables. Use code fields to join with lookup  
   tables and decode categorical values.  Key relationships include:

   - `tbl_JuvenileHistory` links to `tbl_Case` via `IDNCASE`
   - `tbl_JuvenileHistory` links to `B_TblProceeding` via `IDNPROCEEDING`
   - `tblProceeding` links to `tbl_Case` via `IDNCASE` for comprehensive case information

5. **Filter for project scope**
   Start with `tbl_JuvenileHistory` to focus on juvenile cases. Join with  
   `A_TblCase` and and `B_TblProceeding` to build complete case timelines that include
  both demographic information and legal proceedings. This three-table foundation
  provides the most comprehensive view of juvenile immigration cases, from initial
  case creation through final legal decisions.

All notebooks used to clean and prepare data are located in the  
`2_data_preparation/notebooks` directory of this repository.
