# Covid-19 Vaccine Effectiveness

## Contents

This repository contains dated records extracted from the Italian National Institute of Health (ISS) reports from the 14 July 2021.

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

## License and attribution

This repository and data exports are published under the CC BY 4.0 license.
