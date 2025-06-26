# Source Dataset

## Source

The dataset comes from the Executive Office for Immigration Review (EOIR),  
available via [Data.gov](https://catalog.data.gov/dataset/eoir-case-data).  
It contains raw case-level data on immigration court proceedings, including  
juvenile cases, and covers the period from 2008 to the present.

We could not include the full dataset in this repository due to its size,  
but it can be accessed directly through the following link:  
[Google Drive Folder](https://drive.google.com/drive/folders/1JG-012KL7qboQgenAWe7kLK5-pohHbKq?usp=share_link)

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

The primary tables for this project are `tbl_JuvenileHistory` and `tbl_Case`.

---

### Key Fields in `tbl_JuvenileHistory`

| Field Name         | Description                                              |
|--------------------|----------------------------------------------------------|
| `idnJuvenileHistory` | Primary key for `tbl_JuvenileHistory`                  |
| `idnCase`            | Foreign key to `tbl_Case` (`IDNCASE`)                  |
| `idnProceeding`      | Foreign key to `tbl_Proceeding`                        |
| `idnJuvenile`        | Foreign key to `tblLookup_Juvenile` |
