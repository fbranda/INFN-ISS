# Covid-19 Vaccine Effectiveness

## Contents

This repository contains dated records extracted from the [Italian National Institute of Health (ISS)](https://www.iss.it/en/sorveglianze-covid-19) reports from the [14 July 2021](https://www.epicentro.iss.it/coronavirus/bollettino/Bollettino-sorveglianza-integrata-COVID-19_14-luglio-2021.pdf)

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



