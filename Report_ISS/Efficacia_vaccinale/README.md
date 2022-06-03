# Covid-19 Vaccine Effectiveness

## Contents

This repository contains data extracted from the [Italian National Institute of Health (ISS)](https://www.iss.it/en/sorveglianze-covid-19) bulletins starting from [14 July 2021](https://www.epicentro.iss.it/coronavirus/bollettino/Bollettino-sorveglianza-integrata-COVID-19_14-luglio-2021.pdf)


##

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| data      | Formatted String       | Data di riferimento del Report `YYYY-MM-DD`   |
| pubblicazione   | Formatted String        | Data di pubblicazione del Report `YYYY-MM-DD`    |
| url | String | Link al Report in formato pdf |
| fascia | String | Fascia d'età: `12-39`, `40-59`, `60-79`, `80+` |
| vaccino | String | Stato vaccinale: `non vaccinati`, `vaccinati incompleto`, `vaccinati completo`. Dal 2021-11-10 i `vaccinati completo` sono suddivisi in: `vaccinati completo <= 6 mesi`, `vaccinati completo > 6 mesi` e `vaccinati completo + aggiuntiva/booster`. Dal 2021-12-01 i `vaccinati completo` sono suddivisi in: `vaccinati completo <= 5 mesi`, `vaccinati completo > 5 mesi` e `vaccinati completo + aggiuntiva/booster`. Dal 2021-12-15 per `<= 5 mesi` e `> 5 mesi` si intende <=150 giorni e >150 giorni. Dal 2021-12-28 per `<= 4 mesi` e `> 4 mesi` si intende <=120 giorni e >120 giorni |
| popolazione | Integer | Popolazione di riferimento per data, stato vaccinale e fascia d'età (vedi popolazione_giorno) |
| diagnosi | Integer | Numero di diagnosi di COVID-19 per intervallo temporale, stato vaccinale e fascia d'età (vedi diagnosi_start e diagnosi_end) |
| ricoveri | Integer | Numero di ricoveri di COVID-19 per intervallo temporale, stato vaccinale e fascia d'età (vedi ricoveri_start e ricoveri_end) |
| intensive | Integer | Numero di intensive di COVID-19 per intervallo temporale, stato vaccinale e fascia d'età (vedi intensive_start e intensive_end) |
| decessi | Integer | Numero di decessi di COVID-19 per intervallo temporale, stato vaccinale e fascia d'età (vedi decessi_start e decessi_end) |
| popolazione_giorno | Formatted String | Giorno di riferimento per il valore di popolazione |
| diagnosi_start | Formatted String | Estremo inferiore del periodo di riferimento per il valore diagnosi `YYYY-MM-DD` |
| diagnosi_end | Formatted String | Estremo superiore del periodo di riferimento per il valore diagnosi `YYYY-MM-DD` |
| ricoveri_start | Formatted String | Estremo inferiore del periodo di riferimento per il valore ricoveri `YYYY-MM-DD` |
| ricoveri_end | Formatted String | Estremo superiore del periodo di riferimento per il valore ricoveri `YYYY-MM-DD` |
| intensive_start | Formatted String | Estremo inferiore del periodo di riferimento per il valore intensive `YYYY-MM-DD` |
| intensive_end | Formatted String | Estremo superiore del periodo di riferimento per il valore intensive `YYYY-MM-DD` |
| decessi_start | Formatted String | Estremo inferiore del periodo di riferimento per il valore decessi `YYYY-MM-DD` |
| decessi_end | Formatted String | Estremo superiore del periodo di riferimento per il valore decessi `YYYY-MM-DD` |
| totale | Integer | Totale della popolazione nella fascia d'età e nel giorno di riferimento: `non vaccinati` + `vaccinati incompleto` + `vaccinati completo` (o somma delle sotto categorie di `vaccinati completo` dal 2021-11-10 in poi) |
| percentuale_popolazione | Float | Percentuale di popolazione vaccinata per fascia d'età, ovvero rapporto popolazione / totale |
| percentuale_diagnosi | Float | Rapporto tra diagnosi e popolazione per fascia d'età e stato vaccinale |
| percentuale_ricoveri | Float | Rapporto tra ricoveri e popolazione per fascia d'età e stato vaccinale |
| percentuale_intensive | Float | Rapporto tra intensive e popolazione per fascia d'età e stato vaccinale |
| percentuale_decessi | Float | Rapporto tra decessi e popolazione per fascia d'età e stato vaccinale |



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



