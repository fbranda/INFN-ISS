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

Please cite: 
@article {Branda2022.04.21.22273567,
	author = {Branda, Francesco},
	title = {Impact of the additional/booster dose of COVID-19 vaccine against severe disease during the epidemic phase characterized by the predominance of the Omicron variant in Italy, November 2021 - March 2022},
	elocation-id = {2022.04.21.22273567},
	year = {2022},
	doi = {10.1101/2022.04.21.22273567},
	publisher = {Cold Spring Harbor Laboratory Press},
	abstract = {Despite the stunning speed with which highly effective and safe vaccines have been developed, increasingly transmissible variants are emerging. Using surveillance data from Italy (November 2021-March 2022), during the epidemic phase characterized by the predominance of the Omicron variant, vaccination with additional/booster dose significantly reduces the risk at all ages for hospitalization (relative risk (RR): 0.16; 95\% confidence interval (CI): 0.13-0.19), admission to ICU (RR: 0.08; 95\% CI: 0.06-0.09) and death (RR: 0.13; 95\% CI: 0.10-0.16). Results support the importance of receiving a third dose of mRNA COVID-19 vaccine.Competing Interest StatementThe authors have declared no competing interest.Funding StatementThis study did not receive any fundingAuthor DeclarationsI confirm all relevant ethical guidelines have been followed, and any necessary IRB and/or ethics committee approvals have been obtained.YesI confirm that all necessary patient/participant consent has been obtained and the appropriate institutional forms have been archived, and that any patient/participant/sample identifiers included were not known to anyone (e.g., hospital staff, patients or participants themselves) outside the research group so cannot be used to identify individuals.YesI understand that all clinical trials and any other prospective interventional studies must be registered with an ICMJE-approved registry, such as ClinicalTrials.gov. I confirm that any such study reported in the manuscript has been registered and the trial registration ID is provided (note: if posting a prospective study registered retrospectively, please provide a statement in the trial ID field explaining why the study was not registered in advance).YesI have followed all appropriate research reporting guidelines and uploaded the relevant EQUATOR Network research reporting checklist(s) and other pertinent material as supplementary files, if applicable.YesAll the data produced in this work are contained in the weekly reports published by the Istituto Superiore di Sanita (ISS) at https://www.iss.it/en/sorveglianze-covid-19},
	URL = {https://www.medrxiv.org/content/early/2022/04/27/2022.04.21.22273567},
	eprint = {https://www.medrxiv.org/content/early/2022/04/27/2022.04.21.22273567.full.pdf},
	journal = {medRxiv}
}

