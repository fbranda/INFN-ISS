# Covid-19 Vaccine Effectiveness

## Contents

This repository contains data extracted from the [Italian National Institute of Health (ISS)](https://www.iss.it/en/sorveglianze-covid-19) bulletins starting from [14 July 2021](https://www.epicentro.iss.it/coronavirus/bollettino/Bollettino-sorveglianza-integrata-COVID-19_14-luglio-2021.pdf)


## Data schema

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| date      | Formatted String       | Bulletin reference date `YYYY-MM-DD`   |
| publication   | Formatted String        | Bulletin publication date `YYYY-MM-DD`    |
| url | String | Link to the bulletin in pdf format |
| age_group | String | Age groups: `12-39`, `40-59`, `60-79`, `80+` |
| vaccine_status | String | Vaccination status: `non vaccinati`, `vaccinati incompleto`, `vaccinati completo`. Starting from 2021-11-10 `vaccinati completo` are subdivided into: `vaccinati completo <= 6 mesi`, `vaccinati completo > 6 mesi` and `vaccinati completo + aggiuntiva/booster`. Starting from 2021-12-01 the `vaccinati completo` are subdivided into: `vaccinati completo <= 5 mesi`, `vaccinati completo > 5 mesi` and `vaccinati completo + aggiuntiva/booster`. Starting from 2021-12-15 for `<= 5 mesi` and `> 5 mesi` means <=150 giorni e >150 giorni. Starting from 2021-12-28 per `<= 4 mesi` and `> 4 mesi` means <=120 giorni e >120 giorni |
| pop_diagnoses | Integer | Reference population by diagnoses, vaccination status and age group |
| diagnoses | Integer | Number of COVID-19 diagnoses by time interval (see diagnoses_start and diagnoses_end), vaccination status and age group |
| pop_day_diagnoses | Formatted String | Reference day for the population value of diagnoses |
| diagnoses_start | Formatted String | Lower bound of the reference period for the diagnoses value `YYYY-MM-DD` |
| diagnoses_end | Formatted String | Upper bound of the reference period for the diagnosis value `YYYY-MM-DD` |
| total_diagnoses | Integer | Total population in the age group and on the reference day by vaccination status |
| perc_pop_diagnoses | Float | Percentage of vaccinated population per age group, i.e., `pop_diagnoses/total_diagnoses` |
| perc_diagnoses | Float | Ratio between diagnoses and population by age group and vaccination status, i.e., `diagnoses/pop_diagnoses` |
| pop_hosp | Integer | Reference population by hospitalizations, vaccination status and age group |
| hosp | Integer | Number of COVID-19 hospitalizations by time interval (see hosp_start and hosp_end), vaccination status and age group |
| pop_day_hosp | Formatted String | Reference day for the population value of hospitalizations |
| hosp_start | Formatted String | Lower bound of the reference period for the hospitalizations value `YYYY-MM-DD` |
| hosp_end | Formatted String | Upper bound of the reference period for the hospitalizations value `YYYY-MM-DD` |
| total_hosp | Integer | Total population in the age group and on the reference day by vaccination status |
| perc_pop_hosp | Float | Percentage of vaccinated population per age group, i.e., `pop_hosp/total_hosp`|
| perc_hosp | Float | Ratio between hospitalizations and population by age group and vaccination status, i.e., `hosp/pop_hosp` |
| pop_icu | Integer | Reference population by admissions to the intensive care units (ICUs), vaccination status and age group |
| icu | Integer | Number of COVID-19 admissions to the intensive care units (ICUs)  by time interval (see icu_start and icu_end), vaccination status and age group |
| pop_day_icu | Formatted String | Reference day for the population value of admissions to the intensive care units (ICUs) |
| icu_start | Formatted String | Lower bound of the reference period for the icu value `YYYY-MM-DD` |
| icu_end | Formatted String | Upper bound of the reference period for the icu value `YYYY-MM-DD` |
| total_icu | Integer | Total population in the age group and on the reference day by vaccination status |
| perc_pop_icu | Float | Percentage of vaccinated population per age group, i.e., `pop_icu/total_icu` |
| perc_icu | Float | Ratio between hospitalizations and population by age group and vaccination status, i.e., `icu/pop_icu` |
| pop_deaths | Integer | Reference population by deaths, vaccination status and age group |
| deaths | Integer | Number of COVID-19 deaths by time interval (see deaths_start and deaths_end), vaccination status and age group |
| pop_day_deaths | Formatted String | Reference day for the population value of deaths) |
| deaths_start | Formatted String | Lower bound of the reference period for the deaths value `YYYY-MM-DD` |
| deaths_end | Formatted String | Upper bound of the reference period for the deaths value `YYYY-MM-DD` |
| total_deaths | Integer | Total population in the age group and on the reference day by vaccination status |
| perc_pop_deaths | Float | Percentage of vaccinated population per age group, i.e., `pop_deaths/total_deaths` |
| perc_deaths | Float | Ratio between deaths and population by age group and vaccination status, i.e., `deaths/pop_deaths` |


## Getting the data

**Direct download (CSV)**: https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Efficacia_vaccinale/report_iss_efficacia_vaccini.csv  

**Python** (requires `pandas`):
```python
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Efficacia_vaccinale/report_iss_efficacia_vaccini.csv")
```

**R** (requires `httr`):
```r
library(httr)
df <- read.csv(text=content(GET("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Efficacia_vaccinale/report_iss_efficacia_vaccini.csv")))
```

## Contributions

1. Branda, F. Impact of the additional/booster dose of COVID-19 vaccine against severe disease during the epidemic 
phase characterized by the predominance of the Omicron variant in Italy, November 2021 - March 2022. medRxiv 2022, 
[https://www.medrxiv.org/content/early/2022/04/28/2022.04.21.22273567.full.pdf]. doi:10.1101/2022.04.21.22273567. 


## License and attribution

This repository and data exports are published under the CC BY 4.0 license.

If you use this file, please cite it as described in *CITATION.cff* file.



