# Tracking SARS-CoV-2 variants in Italy

## Contents

This repository contains data extracted from the [Italian National Institute of Health (ISS)](https://www.iss.it/en/cov19-cosa-fa-iss-varianti) bulletins starting from [25 May 2021](https://www.iss.it/en/web/guest/cov19-cosa-fa-iss-varianti/-/asset_publisher/yJS4xO2fauqM/content/online-il-primo-bollettino-sulla-distribuzione-delle-varianti-in-italia?_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_assetEntryId=5746202&_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_redirect=https%3A%2F%2Fwww.iss.it%2Fen%2Fweb%2Fguest%2Fcov19-cosa-fa-iss-varianti%3Fp_p_id%3Dcom_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM%26p_p_lifecycle%3D0%26p_p_state%3Dnormal%26p_p_mode%3Dview%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_assetEntryId%3D5746202%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_cur%3D2%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_delta%3D20%26p_r_p_resetCur%3Dfalse)


## Data schema

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| period_start      | Formatted String       | Bulletin reference date `DD/MM/YYYY`   |
| period_end     | Formatted String       | Bulletin reference date `DD/MM/YYYY`   |
| publication   | Formatted String        | Bulletin publication date `DD/MM/YYYY`    |
| url | String | Link to the bulletin in pdf format |
| variant | String | Name of the variant |
| number_cases | Integer | Number of detections reported of the variants |
| percent_cases_variant | Float | 100 x number_detections_variant/number_cases |
| variant_sex_female | Integer | Number of detections reported of the variant by female sex |
| percent_variant_female | Float | 100 x number_detections_variant/variant_sex_female |
| variant_sex_male| Integer | Number of detections reported of the variant by male sex |
| percent_variant_male | Float | 100 x number_detections_variant/variant_sex_male |
| native_case | Integer | Number of persons who have contracted the virus in Italy | 
| imported_case | Integer | Number of persons who have contracted the virus in a country other than Italy |


## Getting the data

**Direct download (CSV)**: https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Bollettino/data_variants.csv 

**Python** (requires `pandas`):
```python
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Bollettino/data_variants.csv")
```

**R** (requires `httr`):
```r
library(httr)
df <- read.csv(text=content(GET("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Bollettino/data_variants.csv")))
```

## Contributions
1) Spread investigation of SARS-CoV-2 variants of concern (VOCs). Available at the link https://trackingvariants.shinyapps.io/europe/


## License and attribution

This repository and data exports are published under the CC BY 4.0 license.

If you use this file, please cite it as described in *CITATION.cff* file.
