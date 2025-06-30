
# Dataset Overview

This dataset contains approximately 2.85 million historical records
activity from the U.S. Executive Office for Immigration Review (EOIR). It includes
metadata related to court proceedings and an indicator for whether each record involves
a juvenile.

## Key Explorations and Insights

Total Juvenile Records: 233,667 rows where idnJuvenile = 1

Unique Juvenile Cases: 126,236 out of ~1.9 million total unique cases

Juvenile Case Ratio: 6.58% of all immigration cases

Proceedings per Case:

Average: ~1.46

Range: 1 to 16 proceedings

Duplicate Records: 55,805 duplicate combinations of idnCase and idnProceeding

Missing Values:

999 missing idnJuvenile entries

98 missing idnProceeding values

## How to use the NoteBook

1.Make sure you have Python 3 and the following Python libraries installed

2.Prepare the Data File
   Place the juvenile_cases_only.csv file (or the original raw EOIR dataset) in
    a known directory on your computer.

``` code
file_path = "D:/data/juvenile_cases_only.csv"  # Modify as needed
```

3.Run the Notebook
