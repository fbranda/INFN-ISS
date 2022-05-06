getPartDataFromJH <- function(link, us=FALSE) {

	library(dplyr)
	library(reshape)
	library(stringr)
	
	data_raw<-read.csv(link)
	# aggregate data and remove not useful ones
	if (us) {
		data_raw_sub<-subset(data_raw, select = -c(Country_Region,UID,iso2,iso3,code3,FIPS,Admin2,Lat,Long_,Combined_Key))
		if("Population" %in% colnames(data_raw_sub)) {
			data_raw_sub$Population<-NULL
		}
		colnames(data_raw_sub)[1] <- "Country.Region"
		data_raw<-data_raw_sub
	} else {
		data_raw$Province.State<-NULL
		data_raw$Lat<-NULL
		data_raw$Long<-NULL
	}
	data_raw.agg<-data_raw %>%
		group_by(Country.Region) %>% 
		summarize_all(sum, na.rm = TRUE)
	data_raw.agg.df<-as.data.frame(data_raw.agg)
	data_raw.agg.df$country<-data_raw.agg.df$Country.Region
	data_raw.agg.df$Country.Region<-NULL	
	mdata<-melt(data_raw.agg.df, id=c("country"))
	mdata$variable<-as.Date(str_replace_all(str_replace(mdata$variable, "X", ""), '\\.', "-"), format="%m-%d-%y")
	return(mdata)
}

getSingleCountryData <- function(data_all=NULL, country=NULL, source=NULL ) {
	ord_data<-NULL
	if (!is.null(data_all)) {
		if (country %in% data_all$country) {
			single_data<-data_all[grep(country, data_all$country), ]
			merge_data<-single_data
			death<-as.data.frame(diff(single_data$deaths))
			row.names(death)<-tail(row.names(single_data), -1)
			merge_data<-merge(tail(single_data, -1), death, by="row.names")
			merge_data$Row.names<-NULL
			merge_data$deaths<-NULL
			names(merge_data)<-c("country", "date","cases", "deaths")
			merge_data <- merge_data[order(merge_data$date),]
			rownames(merge_data) <- 1:nrow(merge_data)

			if (!grepl("PC", source, fixed = TRUE)) {
				pos<-as.data.frame(diff(merge_data$cases))
				row.names(pos)<-tail(row.names(merge_data), -1)
				merge_data2 <- merge(tail(merge_data, -1), pos, by="row.names")
				merge_data2$Row.names<-NULL
				merge_data2$cases<-NULL
				names(merge_data2)<-c("country", "date","deaths", "cases")
				merge_data <- merge_data2[, c(1, 2, 4, 3)]
				merge_data<-merge_data2	
			}
			ord_data <- merge_data[order(merge_data$date),]
			rownames(ord_data) <- 1:nrow(ord_data)
		}
	}
	return (ord_data)
}

getDataFromJH<-function(death_web, cases_web, single=FALSE){
	deat_jh<-getPartDataFromJH(death_web, single)
	pos_jh<-getPartDataFromJH(cases_web, single)
	colnames(deat_jh)<-c("country", "date", "deaths")
	colnames(pos_jh)<-c("country", "date", "cases")
	jh_data<-pos_jh
	jh_data$deaths<-deat_jh$deaths
	jh_data$country<-gsub("[()]","",as.character(jh_data$country))
	return(jh_data)

}
