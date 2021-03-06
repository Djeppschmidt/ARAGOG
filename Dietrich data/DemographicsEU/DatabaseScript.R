# ARAGOG EU Demographics Table Construction

library(RColorBrewer)
pal <- colorRampPalette(brewer.pal(11, "RdYlGn"))(100)

make.heatmap<-function(x, title){
  m1<-x
  m1[]<- lapply(x, function(x) as.numeric(gsub(",","", x)))
  m2<-data.frame("2015"=m1$`2015`-m1$`2014`,"2016"=m1$`2016`-m1$`2015`, "2017"=m1$`2017`-m1$`2016`)
  #m2<-data.frame("2009"=m1$`2009`-m1$`2008`, "2010"=m1$`2010`-m1$`2009`, "2011"=m1$`2011`-m1$`2010`, "2012"= m1$`2012`-m1$`2011`, "2013"=m1$`2013`-m1$`2012`, "2014"=m1$`2014`-m1$`2013`, "2015"=m1$`2015`-m1$`2014`,"2016"=m1$`2016`-m1$`2015`, "2017"=m1$`2017`-m1$`2016`)
  heatmap(as.matrix(m2), Rowv=NA, Colv="Rowv", scale = "none",col=pal, main=title)
}

incomePcap<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/PerCapIncome/nama_10r_2hhinc_1_Data.csv") # euro per person
incomePcap.w<-dcast(incomePcap, GEO~TIME, value.var="Value")
rownames(incomePcap.w)<-incomePcap.w$GEO
incomePcap.w<-incomePcap.w[,-1]
incomePcap.w[] <- lapply(incomePcap.w, function(x) as.numeric(gsub(",","", x)))
D.income<-data.frame("2009"=incomePcap.w$`2009`-incomePcap.w$`2008`, "2010"=incomePcap.w$`2010`-incomePcap.w$`2009`, "2011"=incomePcap.w$`2011`-incomePcap.w$`2010`, "2012"= incomePcap.w$`2012`-incomePcap.w$`2011`, "2013"=incomePcap.w$`2013`-incomePcap.w$`2012`, "2014"=incomePcap.w$`2014`-incomePcap.w$`2013`, "2015"=incomePcap.w$`2015`-incomePcap.w$`2014`,"2016"=incomePcap.w$`2016`-incomePcap.w$`2015`, "2017"=incomePcap.w$`2017`-incomePcap.w$`2016`)
heatmap(as.matrix(D.income), Rowv=NA, Colv="Rowv", scale = "none",col=pal, main="Delta per cap. income")
saveRDS(incomePcap.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/PerCapIncome/PerCapIncome.RDS")

RegionAgIncome<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/AgIncome/nama_10r_2coe_1_Data.csv") # agricultural income per region in million EU
AgIncome.w<-dcast(RegionAgIncome, GEO~TIME, value.var="Value")
make.heatmap(AgIncome.w, "Delta Agricultural Income")
AgIncome.w[] <- lapply(AgIncome.w, function(x) as.numeric(gsub(",","", x)))
AgIncome.w<-AgIncome.w[,-1]
saveRDS(AgIncome.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/AgIncome/AgIncome.RDS")

Employement<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/EmployementKhr/nama_10r_2emhrw_1_Data.csv") # per region, thousands of hours
Employement.w<-dcast(Employement, GEO~TIME, value.var="Value")
make.heatmap(Employement.w, "Delta Employement")
Employement.w[] <- lapply(Employement.w, function(x) as.numeric(gsub(",","", x)))
Employement.w<-Employement.w[,-1]
saveRDS(Employement.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/EmployementKhr/Employement.RDS")

Poverty<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/Poverty_percent/ilc_lvhl21_1_Data.csv")
Poverty.w<-dcast(Poverty, UNIT+GEO~TIME, value.var="Value")
Poverty.w<-Poverty.w[Poverty.w$UNIT=="Percentage of total population aged less than 60",]
rownames(Poverty.w)<-Poverty.w$GEO
make.heatmap(Poverty.w, "Delta poverty") # needs some work...
Poverty.w[] <- lapply(Poverty.w, function(x) as.numeric(gsub(",","", x)))
Poverty.w<-Poverty.w[,-c(1,2)]
saveRDS(Poverty.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/Poverty_percent/Poverty.RDS")

ATRiskPoverty<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/AtRiskPoverty.csv")
rownames(ATRiskPoverty)<-ATRiskPoverty$geo.time
ATRiskPoverty<-ATRiskPoverty[,-c(1,2)]
ATRiskPoverty[]<-lapply(ATRiskPoverty, function(x) as.numeric(gsub("b", "", x)))
make.heatmap(Poverty.w, "Delta poverty") # needs some work...
saveRDS(ATRiskPoverty, "~/Documents/GitHub/ARAGOG/DemographicsEU/Poverty_percent/ATRiskPoverty.RDS")
### don't know how to plot shapefile #
library(maptools)
library(raster)
library(rgdal)
library(sf)
EU_map<-st_read("/Downloads/NUTS_RG_01M_2013_4326_LEVL_2")
?readOGR
f<-system.file("~/Downloads/NUTS_RG_01M_2013_4326_LEVL_2.shp", package="raster")
s1 <- shapefile("~/Downloads/NUTS_RG_01M_2013_4326_LEVL_2.shp") 
s2 <- st_read("~/Downloads/NUTS_RG_01M_2013_4326_LEVL_2.shp")


# spatial data plug and play ####
ExtractSpatialToTable<-function(cat, input.raster, counties, NUTS2){
  if(cat=="EU"){
    EU <- readOGR(input, stringsAsFactors = FALSE)
    EU_proj <- spTransform(EU, CRS("+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"))
crs(US_proj)
raster <- raster("FertilizerBalance_Geotiff/FertilizerBalance_Geotiff/NitrogenBalanceOnLandscape_140Crops.tif")
raster.values.EU <- extract(raster,EU)
mean.EU <- lapply(raster.values.EU, FUN=mean)
mean.EU.df<-t(as.data.frame(mean.EU))
EU@data <- data.frame(EU@data, N_balance_140crops = mean.EU.df)
colnames(US_proj@data)[4] = "CTFIPS" 
    }
  if(cat=="US"){
    US <- readOGR("~/PhD Leeds/ARAGOG project/Data/tl_2014_us_county/tl_2014_us_county.shp")
    US_proj <- spTransform(US, CRS("+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"))
crs(US_proj)


colnames(US_proj@data)[4] = "CTFIPS" 
}
  if(cat=="GLOBAL"){} else (print("Check cat; Must be one of EU, US, GLOBAL"))
  
}

