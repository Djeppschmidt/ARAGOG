# ARAGOG EU Demographics Table Construction

library(RColorBrewer)
pal <- colorRampPalette(brewer.pal(11, "RdYlGn"))(100)

make.heatmap<-function(x, title){
  m1<-x
  m1[]<- lapply(x, function(x) as.numeric(gsub(",","", x)))
  m2<-data.frame("2009"=m1$`2009`-m1$`2008`, "2010"=m1$`2010`-m1$`2009`, "2011"=m1$`2011`-m1$`2010`, "2012"= m1$`2012`-m1$`2011`, "2013"=m1$`2013`-m1$`2012`, "2014"=m1$`2014`-m1$`2013`, "2015"=m1$`2015`-m1$`2014`,"2016"=m1$`2016`-m1$`2015`, "2017"=m1$`2017`-m1$`2016`)
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
saveRDS(AgIncome.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/AgIncome/AgIncome.RDS")

Employement<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/EmployementKhr/nama_10r_2emhrw_1_Data.csv") # per region, thousands of hours
Employement.w<-dcast(Employement, GEO~TIME, value.var="Value")
make.heatmap(Employement.w, "Delta Employement")
saverds(Employement.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/EmployementKhr/Employement.RDS")

Poverty<-read.csv("~/Documents/GitHub/ARAGOG/DemographicsEU/Poverty_percent/ilc_lvhl21_1_Data.csv")
Poverty.w<-dcast(Poverty, UNIT+GEO~TIME, value.var="Value")
make.heatmap(Poverty.w, "Delta poverty") # needs some work...
saveRDS(Poverty.w, "~/Documents/GitHub/ARAGOG/DemographicsEU/Poverty_percent/Poverty.RDS")
