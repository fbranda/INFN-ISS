# Tracking SARS-CoV-2 variants per Region in Italy

## Contents

This repository contains data extracted from the [Italian National Institute of Health (ISS)](https://www.iss.it/en/cov19-cosa-fa-iss-varianti) bulletins starting from [25 May 2021](https://www.iss.it/en/web/guest/cov19-cosa-fa-iss-varianti/-/asset_publisher/yJS4xO2fauqM/content/online-il-primo-bollettino-sulla-distribuzione-delle-varianti-in-italia?_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_assetEntryId=5746202&_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_redirect=https%3A%2F%2Fwww.iss.it%2Fen%2Fweb%2Fguest%2Fcov19-cosa-fa-iss-varianti%3Fp_p_id%3Dcom_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM%26p_p_lifecycle%3D0%26p_p_state%3Dnormal%26p_p_mode%3Dview%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_assetEntryId%3D5746202%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_cur%3D2%26_com_liferay_asset_publisher_web_portlet_AssetPublisherPortlet_INSTANCE_yJS4xO2fauqM_delta%3D20%26p_r_p_resetCur%3Dfalse)


## Data schema

| Column      | DataType | Description     |
| :---        |    :----:   |          ---: |
| date      | Formatted String       | Bulletin reference date `DD/MM/YYYY`   |
| url | String | Link to the bulletin in pdf format |
| region | String | Name of the region |
| number_laboratories | Integer | Number of laboratories  |
| number_detections_variant | Float | Number of detections reported of the
variant |
| number_sequenced | Integer |  Number of sequenced samples |
| n_B-1-1-7 | Integer | Number of detections reported of the Alpha variant (B.1.1.7) |
| percent_B-1-1-7 | Float | 100 x n_B-1-1-7/number_detections_variant |
| n_P-1 | Integer | Number of detections reported of the Gamma variant (P.1) |
| percent_P-1 | Float | 100 x n_P-1/number_detections_variant |
| n_B-1-351 | Integer | Number of detections reported of the Beta variant (B.1.351) |
| percent_B-1-351 | Float | 100 x n_B-1-351/number_detections_variant |
| n_B-1-617-2 | Integer | Number of detections reported of the Delta variant (B.1.617.2) |
| percent_B-1-617-2 | Float | 100 x n_B-1-617-2/number_detections_variant |
| n_B-1-1-529 | Integer | Number of detections reported of the Omicron variant (B.1.1.529) |
| percent_B-1-1-529 | Float | 100 x n_B-1-1-529/number_detections_variant |
| n_BA-1 | Integer | Number of detections reported of the sublineage Omicron variant (BA.1) |
| percent_BA-1 | Float | 100 x n_BA-1/number_detections_variant |
| n_BA-2 | Integer | Number of detections reported of the sublineage Omicron variant (BA.2) |
| percent_BA-2 | Float | 100 x n_BA-2/number_detections_variant |
| n_BA-3 | Integer | Number of detections reported of the sublineage Omicron variant (BA.3) |
| percent_BA-3 | Float | 100 x n_BA-3/number_detections_variant |
| n_BA-4 | Integer | Number of detections reported of the sublineage Omicron variant (BA.4) |
| percent_BA-4 | Float | 100 x n_BA-4/number_detections_variant |
| n_BA-5 | Integer | Number of detections reported of the sublineage Omicron variant (BA.5) |
| percent_BA-5 | Float | 100 x n_BA-5/number_detections_variant |
| n_XJ | Integer | Number of detections reported of the sublineage Omicron variant (XJ) |
| percent_XJ | Float | 100 x n_XJ/number_detections_variant |
| n_XL | Integer | Number of detections reported of the sublineage Omicron variant (XL) |
| percent_XL | Float | 100 x n_XL/number_detections_variant |
| n_XM | Integer | Number of detections reported of the sublineage Omicron variant (XM) |
| percent_XM | Float | 100 x n_XM/number_detections_variant |
| n_XN | Integer | Number of detections reported of the sublineage Omicron variant (XN) |
| percent_XN | Float | 100 x n_XN/number_detections_variant |
| n_XT | Integer | Number of detections reported of the sublineage Omicron variant (XT) |
| percent_XT | Float | 100 x n_XT/number_detections_variant |
| n_P-2 | Integer | Number of detections reported of the Zeta variant (P.2) |
| percent_P-2 | Float | 100 x n_P-2-/number_detections_variant |
| n_B-1-525 | Integer | Number of detections reported of the Eta variant (B.1.525) |
| percent_B-1-525 | Float | 100 x n_B-1-525/number_detections_variant |





## Getting the data

**Direct download (CSV)**: https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Flash_survey/data_variants_per_region.csv 

**Python** (requires `pandas`):
```python
import pandas as pd
df = pd.read_csv("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Flash_survey/data_variants_per_region.csv ")
```

**R** (requires `httr`):
```r
library(httr)
df <- read.csv(text=content(GET("https://raw.githubusercontent.com/fbranda/INFN-ISS/main/Report_ISS/Varianti/Flash_survey/data_variants_per_region.csv ")))
```

## Contributions


## License and attribution

This repository and data exports are published under the CC BY 4.0 license.
