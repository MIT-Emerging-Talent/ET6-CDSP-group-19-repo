# Source Dataset

## Source

The dataset comes from the Executive Office for Immigration Review (EOIR),
available via Data.gov.  
It contains raw case-level data on immigration court
proceedings, including juvenile cases, and covers the period from 2008 to the present.

The full dataset could not be included in this repository due to its size,
but it can be accessed directly through the following link:
[Google Drive Folder](https://drive.google.com/drive/folders/1gv42BRnm6blapzoDEbYbFf6M1IXZJXcL?usp=sharing)

This version reflects the latest public release as of June 2025.

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

The primary tables for this project are `tbl_JuvenileHistory`, `A_TblCase`,
`B_TblProceeding`, and `tbl_RepsAssigned`.

---

### Key Fields in `tbl_JuvenileHistory`

| Field Name          | Description                                           |
|---------------------|-------------------------------------------------------|
| `idnJuvenileHistory` | Primary key for `tbl_JuvenileHistory`                |
| `idnCase`            | Foreign key to `A_TblCase` (`IDNCASE`)               |
| `idnProceeding`      | Foreign key to `B_TblProceeding` (`IDNPROCEEDING`)   |
| `idnJuvenile`        | Foreign key to `tblLookup_Juvenile`                   |

---

### Key Fields in `A_TblCase`

| Field Name        | Description                                               |
|-------------------|-----------------------------------------------------------|
| `IDNCASE`         | Primary key for `A_TblCase`                               |
| `NAT`             | Nationality code of the individual (lookup: nationality) |
| `LANG`            | Primary language code (lookup: language)                  |
| `CUSTODY`         | Custody status code (lookup: custody type)                |
| `CASE_TYPE`       | Type of immigration case (lookup: case type)              |
| `LATEST_HEARING`  | Date of the latest hearing                                |
| `LATEST_TIME`     | Time of the latest hearing                                |
| `LATEST_CAL_TYPE` | Type of hearing: "M" (master) or "I" (individual)         |
| `DATE_OF_ENTRY`   | Date the individual entered the U.S.                      |
| `GENDER`          | Gender code (typically "M" or "F")                        |
| `DATE_DETAINED`   | Date the individual was detained                          |
| `DATE_RELEASED`   | Date of release from detention                            |
| `DETENTION_DATE`  | Date the individual entered current detention facility    |

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

---

### Key Fields in `tbl_RepsAssigned`

| Field Name      | Description                                                 |
|---------------- |-------------------------------------------------------------|
|`IDNREPSASSIGNED`| Primary key for `tbl_RepsAssigned`                          |
|`IDNCASE`        | Foreign key to `A_tblCase`                                  |
|`STRATTYLEVEL`   | Attorney participation level: "COURT" (Immigration Court) or|
|                 | "BOARD" (Board of Immigration Appeals)                      |
|`STRATTYTYPE`    | Who the attorney represents: "ALIEN" (noncitizen) or "INS"  |
|                 | (Immigration and Naturalization Service)                    |
|`E_27_DATE`      | Date of submission of Form EOIR-27 — Notice of Entry of Appearance|
|                 | as Attorney or Representative Before the Board of Immigration|
|                 |  Appeals(BIA)                                               |
|`E_28_DATE`      | Date of submission of Form EOIR-28 — Notice of Entry of Appearance|
|                 | as Attorney or Representative Before the Immigration Court  |

---

## Project Focus

Although the dataset contains a broad range of immigration court records,
focus is specifically placed on juvenile cases.  
For this reason, analysis is
begun with the `tbl_JuvenileHistory` table, which contains one row per juvenile
and serves as the entry point for linking to other case-related tables.

## Possible Flaws and Limitations

- **Incomplete records**: Some fields or entire entries are missing, especially
  in earlier years.

- **Evolving structure**: Code meanings and field usage have changed over time.
  Some fields are marked as "Legacy" and may no longer be consistent.

- **Duplicates**: Individuals may appear in multiple rows or be involved in
  multiple cases, requiring careful handling during analysis.

- **Ambiguous codes**: Some lookup tables contain overlapping or unclear labels,
  making interpretation difficult without external documentation.

- **Long case durations**: Immigration cases may span multiple years and presidential
  administrations, which can affect legal context and outcomes.

- **Misleading columns**: Some fields (e.g., `DATCREATEDON`, `DATMODIFIEDON` in
  `tbl_JuvenileHistory`) do not reflect the actual dates or information they are
  supposed to provide.

- **Outdated snapshot**: The dataset has not been updated since June 2025. This
  is relevant for the project, which aims to analyze recent policy changes.

## Reproducibility

To recreate the dataset and prepare it for analysis:

1. **Download raw data**  
   All 97 .csv files are available from the [EOIR Case Data page on Data.gov]  
   (<https://catalog.data.gov/dataset/eoir-case-data>).

2. **Use organized structure**  
   The data is already organized into 19 main tables and 78 lookup tables.  
   Lookup tables are stored in the `Lookup` folder.

3. **Standardize formats**  
   Missing values should be cleaned, date formats standardized, and consistent
   data types ensured (e.g., string or categorical for code fields).

4. **Join tables**  
   Key fields are used to combine main tables. Code fields are used to join with
   lookup tables and decode categorical values.  
  
   Key relationships include:

   - `tbl_JuvenileHistory` is linked to `tbl_Case` via `IDNCASE`.  
   - `tbl_JuvenileHistory` is linked to `B_TblProceeding` via `IDNPROCEEDING`.  
   - `tblProceeding` is linked to `tbl_Case` via `IDNCASE` for comprehensive case
     information.
   - `tbl_RepsAssigned` is linked to `tbl_Case` via `IDNCASE` to provide detailed
     legal representation information for each case.

5. **Filter for project scope**  
   The analysis is started with `tbl_JuvenileHistory` to focus on juvenile
   cases.  
   Joins are made with `A_TblCase`, `B_TblProceeding` and `tbl_RepsAssigned` to build
   comprehensive case timelines that include demographic information, legal
   proceedings, and legal representation details.  
   This integrated approach provides
   the most complete view of juvenile immigration cases, from initial case creation
   through final legal decisions.

📌 All notebooks used to clean and prepare data are located in the
`2_data_preparation/notebooks` directory of this repository.
