# Use USGS dataRetrieval package to access their data

library(dataRetrieval)

# ID's only from Chesapeake Bay watersheds, with at least 20 yrs and more than 100 samples
siteIDs<-c('01594440','01648010','01648000','01649190','01647720','01658000','01658500','01659000','01660500','01650800','01638500','01645762','01646305','01646000','01645745','01644295','01636500','01614500','01619500','01616500','01614000','01613030','01621050','01631000','01632900','01634000','01611500','01608500','01608070','01595000','01604500','01595300','01669520','01668000','01674000','01673000','01667500','01664000','02042500','02041650','02035000','02037618','02024752','015400021','01536000','01518700','01502771','01550000','01552000','01553860','01549700','01548500','01545600','01544500','01546500','01547950','01547400','01548075','01541000','01543000','01578310','01576787','01576085','01574000','01577500','01570500','01571000','01571505','01553990','01567000','01567150','01556009','01562000')
params<-c('00076','00095','00191','00300','00400','00403','00600','00605','00608','00613','00618','00660','00665','00667','01056','01065','01067','30209','31625','32211','70331','71845','71846','71851','71856','80154')

ChesapeakeWQ<-readNWISqw(siteIDs, params)
saveRDS(ChesapeakeWQ, "~/Documents/GitHub/ARAGOG/ChesapeakeWQ.rds")

# Separate the watershed into individual tables
Patuxent1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01594440',]
RockCreek1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01648010',]
RockCreek2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01648000',]
PaintBranch1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01649190',]
RockCreek_NB<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01647720',]
Mattawoman1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01658000',]
QuanticoCreek1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01658500',]
Chopwamsic1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01659000',]
Beaverdam1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01660500',]
Sligo1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01650800',]
Potomac1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01638500',]
littledifficult1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01645762',]
deadrun1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01646305',]
deadrun2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01646000',]
littledifficult2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01645745',]
OldCourthouse1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01644295',]
Shenandoah1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01636500',]
Conococheaque1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01614500',]
Antietam1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01619500',]
Opequon1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01616500',]
Back1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01614000',]
WarmSprings1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01613030',]
Muddy1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01621050',]
Shenandoah_SF<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01631000',]
Smith1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01632900',]
Shenandoah_NF<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01634000',]
Cacapon1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01611500',]
Potomac_SB1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01608500',]
Potomac_SB2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01608070',]
Potomac_NB1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01595000',]
Patterson1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01604500',]
Abran1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01595300',]
Dragon1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01669520',]
Rappahannock1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01668000',]
Mattaponi1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01674000',]
Panunky1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01673000',]
Rapidan1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01667500',]
Rappahannock2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01664000',]
Chickahominy1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='02042500',]
Appomattox1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='02041650',]
James1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='02035000',]
James2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='02037618',]
James3<-ChesapeakeWQ[ChesapeakeWQ$site_no=='02024752',]
Fishing1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='015400021',]
Lackawanna1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01536000',]
Tioga1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01518700',]
Susquehanna1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01502771',]
Lycoming1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01550000',]
Lycoming2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01552000',]
Susquehanna_WB1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01553860',]
Pine1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01549700',]
Pine2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01548500',]
YoungWomans1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01545600',]
Kettle1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01544500',]
Spring1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01546500',]
Beech1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01547950',]
Bald1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01547400',]
Fishing2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01548075',]
Susquehanna_WB2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01541000',]
Driftwood1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01543000',]
Susquehanna2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01578310',]
Pequea1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01576787',]
Conestoga1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01576085',]
Conewago1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01574000',]
Muddy2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01577500',]
Susquehanna3<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01570500',]
Paxton1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01571000',]
Beeches1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01571505',]
Susquehanna4<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01553990',]
Juniata1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01567000',]
Juniata2<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01567150',]
Frankstown1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01556009',]
Raystown1<-ChesapeakeWQ[ChesapeakeWQ$site_no=='01562000',]



melt.f<-function(d){
  require(reshape2)
  d<-dcast(d,sample_dt~parm_cd, value.var = 'result_va', fun.aggregate=mean)
  d<-within(d, sample_dt<-data.frame(do.call('rbind', strsplit(as.character(sample_dt), '-', fixed=TRUE))))
  d$Year<-d$sample_dt$X1
  d$Month<-d$sample_dt$X2
  d$Day<-d$sample_dt$X3
  d<-d[colnames(d)!="sample_dt"]
  d<-d[d$Year==1999|d$Year==2000|d$Year==2001|d$Year==2002|d$Year==2003|d$Year==2004|d$Year==2005|d$Year==2006|d$Year==2007|d$Year==2008|d$Year==2009|d$Year==2010|d$Year==2011|d$Year==2012|d$Year==2013|d$Year==2014|d$Year==2015|d$Year==2016|d$Year==2017|d$Year==2018|d$Year==2019,]
  d<-d[d$Month==11|d$Month==12|d$Month==1|d$Month==2|d$Month==3|d$Month==4,]
  de<-data.frame("Year"=d$Year,"TN_out"=d$'30209'*d$'00600', "Nitrate"=d$'30209'*d$'00618', "ammonium"=d$'30209'*d$'00608', "Orthophosphate"=d$'30209'*d$'00660')
  de<-aggregate(de[,2:5], list(de$Year), mean)
  de
  
}

function.key<-c("Turbidity"='00076',"Conductance"='00095',"H ion"='00191',"DO"='00300',"pH Field"='00400',"pH lab"='00403',"TN"='00600',"Organic Nitrogen"='00605',"Ammonia"='00608',"Nitrite"='00613',"Nitrate"='00618',"Orthophosphate"='00660',"Phosphorous_unfiltered"='00665',"P_suspended_sediment"='00667',"Manganese"='01056',"Nickel"='01065',"Nickel_unfiltered"='01067',"Discharge_m3"='30209',"Fecal_Coliform"='31625',"Chlorophyll_a"='32211',"Suspended_sediment"='70331',"Ammonia_unfiltered"='71845',"Ammonia"='71846',"Nitrate"='71851',"Nitrite"='71856',"Suspended_sediment_conc"='80154')
# test function
patuxent1<-melt.f(Patuxent1)

# do the rest
RockCreek1<-melt.f(RockCreek1)
PaintBranch1<-melt.f(PaintBranch1)
Mattawoman1<-melt.f(Mattawoman1)
QuanticoCreek1<-melt.f(QuanticoCreek1)
Chopwamsic1<-melt.f(Chopwamsic1)
Beaverdam1<-melt.f(Beaverdam1)
Sligo1<-melt.f(Sligo1)
littledifficult1<-melt.f(littledifficult1)
deadrun1<-melt.f(deadrun1)
deadrun2<-melt.f(deadrun2)
littledifficult2<-melt.f(littledifficult2)
Shenandoah1<-melt.f(Shenandoah1)
Conococheaque1<-melt.f(Conococheaque1)
Opequon1<-melt.f(Opequon1)
Back1<-melt.f(Back1)
WarmSprings1<-melt.f(WarmSprings1)
Cacapon1<-melt.f(Cacapon1)
Potomac_SB1<-melt.f(Potomac_SB1)
Patterson1<-melt.f(Patterson1)
Abran1<-melt.f(Abran1)
Dragon1<-melt.f(Dragon1)
Rappahannock1<-melt.f(Rappahannock1)
Mattaponi1<-melt.f(Mattaponi1)
Panunky1<-melt.f(Panunky1)
Rapidan1<-melt.f(Rapidan1)
Rappahannock2<-melt.f(Rappahannock2)
Chickahominy1<-melt.f(Chickahominy1)
Appomattox1<-melt.f(Appomattox1)
James1<-melt.f(James1)
James2<-melt.f(James2)
Tioga1<-melt.f(Tioga1)
Pine1<-melt.f(Pine1) 
Spring1<-melt.f(Spring1)
Beech1<-melt.f(Beech1)
Bald1<-melt.f(Bald1)
Susquehanna2<-melt.f(Susquehanna2)
Pequea1<-melt.f(Pequea1)
Conewago1<-melt.f(Conewago1)
Muddy2<-melt.f(Muddy2)
Susquehanna3<-melt.f(Susquehanna3)
Paxton1<-melt.f(Paxton1)
Beeches1<-melt.f(Beeches1)
Juniata1<-melt.f(Juniata1)
Raystown1<-melt.f(Raystown1)

# these have inconsistent input data that need to be reconciled...

RockCreek2<-melt.f(RockCreek2) # error- check input data
RockCreek_NB<-melt.f(RockCreek_NB) # error- check input data
Potomac1<-melt.f(Potomac1) # error- check input data
OldCourthouse1<-melt.f(OldCourthouse1) # error- check input data
Antietam1<-melt.f(Antietam1) # error- check input data
Muddy1<-melt.f(Muddy1) # no data ?typo?
Shenandoah_SF<-melt.f(Shenandoah_SF) # no data ?typo?
Smith1<-melt.f(Smith1)# no data ?typo?
Shenandoah_NF<-melt.f(Shenandoah_NF) # error- check input data
Potomac_SB2<-melt.f(Potomac_SB2) # error- check input data
Potomac_NB1<-melt.f(Potomac_NB1) # error- check input data
James3<-melt.f(James3) # error- check input data
Fishing1<-melt.f(Fishing1) # error- check input data
Lackawanna1<-melt.f(Lackawanna1) # error- check input data
Susquehanna1<-melt.f(Susquehanna1) # error- check input data
Lycoming1<-melt.f(Lycoming1) # error- check input data
Lycoming2<-melt.f(Lycoming2) # error- check input data
Susquehanna_WB1<-melt.f(Susquehanna_WB1) # error- check input data
Pine2<-melt.f(Pine2) # error- check input data
YoungWomans1<-melt.f(YoungWomans1)
Kettle1<-melt.f(Kettle1) # error- check input data
Fishing2<-melt.f(Fishing2) # error- check input data
Susquehanna_WB2<-melt.f(Susquehanna_WB2) # error- check input data
Driftwood1<-melt.f(Driftwood1) # error- check input data
Conestoga1<-melt.f(Conestoga1) # error- check input data
Susquehanna4<-melt.f(Susquehanna4) # error- check input data
Juniata2<-melt.f(Juniata2) # error- check input data
Frankstown1<-melt.f(Frankstown1) # error- check input data


#CB<-c(Patuxent1,RockCreek1,RockCreek2,PaintBranch1,RockCreek_NB,Mattawoman1,QuanticoCreek1,Chopwamsic1,Beaverdam1,Sligo1,Potomac1,littledifficult1,deadrun1,deadrun2,littledifficult2,OldCourthouse1,Shenandoah1,Conococheaque1,Antietam1,Opequon1,Back1,WarmSprings1,Muddy1,Shenandoah_SF,Smith1,Shenandoah_NF,Cacapon1,Potomac_SB1,Potomac_SB2,Potomac_NB1,Patterson1,Abran1,Dragon1,Rappahannock1,Mattaponi1,Panunky1,Rapidan1,Rappahannock2,Chickahominy1,Appomattox1,James1,James2,James3,Fishing1,Lackawanna1,Tioga1,Susquehanna1,Lycoming1,Lycoming2,Susquehanna_WB1,Pine1,Pine2,YoungWomans1,Kettle1,Spring1,Beech1,Bald1,Fishing2,Susquehanna_WB2,Driftwood1,Susquehanna2,Pequea1,Conestoga1,Conewago1,Muddy2,Susquehanna3,Paxton1,Beeches1,Susquehanna4,Juniata1,Juniata2,Frankstown1,Raystown1)


RockCreek1<-melt(RockCreek1, id.vars="Group.1", measure.vars = "TN_out")
RockCreek1$Site<-c(rep("Rock_Creek1", nrow(RockCreek1)))
RockCreek1$Group<-c(rep("Urban", nrow(RockCreek1)))

PaintBranch1<-melt(PaintBranch1, id.vars="Group.1", measure.vars = "TN_out")
PaintBranch1$Site<-c(rep("PaintBranch1", nrow(PaintBranch1)))
PaintBranch1$Group<-c(rep("Suburban", nrow(PaintBranch1)))

Mattawoman1<-melt(Mattawoman1, id.vars="Group.1", measure.vars = "TN_out")
Mattawoman1$Site<-c(rep("Mattawoman1", nrow(Mattawoman1)))
Mattawoman1$Group<-c(rep("Suburban", nrow(Mattawoman1)))

QuanticoCreek1<-melt(QuanticoCreek1, id.vars="Group.1", measure.vars = "TN_out")
QuanticoCreek1$Site<-c(rep("QuanticoCreek1", nrow(QuanticoCreek1)))
QuanticoCreek1$Group<-c(rep("Suburban", nrow(QuanticoCreek1)))

Chopwamsic1<-melt(Chopwamsic1, id.vars="Group.1", measure.vars = "TN_out")
Chopwamsic1$Site<-c(rep("Chopwamsic1", nrow(Chopwamsic1)))
Chopwamsic1$Group<-c(rep("Suburban", nrow(Chopwamsic1)))

Beaverdam1<-melt(Beaverdam1, id.vars="Group.1", measure.vars = "TN_out")
Beaverdam1$Site<-c(rep("Beaverdam1", nrow(Beaverdam1)))
Beaverdam1$Group<-c(rep("Suburban", nrow(Beaverdam1)))

Sligo1<-melt(Sligo1, id.vars="Group.1", measure.vars = "TN_out")
Sligo1$Site<-c(rep("Sligo1", nrow(Sligo1)))
Sligo1$Group<-c(rep("Suburban", nrow(Sligo1)))

littledifficult1<-melt(littledifficult1, id.vars="Group.1", measure.vars = "TN_out")
littledifficult1$Site<-c(rep("littledifficult1", nrow(littledifficult1)))
littledifficult1$Group<-c(rep("Suburban", nrow(littledifficult1)))

deadrun1<-melt(deadrun1, id.vars="Group.1", measure.vars = "TN_out")
deadrun1$Site<-c(rep("deadrun1", nrow(deadrun1)))
deadrun1$Group<-c(rep("Suburban", nrow(deadrun1)))

deadrun2<-melt(deadrun2, id.vars="Group.1", measure.vars = "TN_out")
deadrun2$Site<-c(rep("deadrun2", nrow(deadrun2)))
deadrun2$Group<-c(rep("Suburban", nrow(deadrun2)))

littledifficult2<-melt(littledifficult2, id.vars="Group.1", measure.vars = "TN_out")
littledifficult2$Site<-c(rep("littledifficult1", nrow(littledifficult2)))
littledifficult2$Group<-c(rep("Suburban", nrow(littledifficult2)))

Shenandoah1<-melt(Shenandoah1, id.vars="Group.1", measure.vars = "TN_out")
Shenandoah1$Site<-c(rep("Shenandoah1", nrow(Shenandoah1)))
Shenandoah1$Group<-c(rep("Rural", nrow(Shenandoah1)))

Conococheaque1<-melt(Conococheaque1, id.vars="Group.1", measure.vars = "TN_out")
Conococheaque1$Site<-c(rep("Conococheaque1", nrow(Conococheaque1)))
Conococheaque1$Group<-c(rep("Rural", nrow(Conococheaque1)))

Opequon1<-melt(Opequon1, id.vars="Group.1", measure.vars = "TN_out")
Opequon1$Site<-c(rep("Opequon1", nrow(Opequon1)))
Opequon1$Group<-c(rep("Rural", nrow(Opequon1)))

Back1<-melt(Back1, id.vars="Group.1", measure.vars = "TN_out")
Back1$Site<-c(rep("Back1", nrow(Back1)))
Back1$Group<-c(rep("Rural", nrow(Back1)))

WarmSprings1<-melt(WarmSprings1, id.vars="Group.1", measure.vars = "TN_out")
WarmSprings1$Site<-c(rep("WarmSprings1", nrow(WarmSprings1)))
WarmSprings1$Group<-c(rep("Rural", nrow(WarmSprings1)))

Cacapon1<-melt(Cacapon1, id.vars="Group.1", measure.vars = "TN_out")
Cacapon1$Site<-c(rep("Cacapon1", nrow(Cacapon1)))
Cacapon1$Group<-c(rep("Rural", nrow(Cacapon1)))

Potomac_SB1<-melt(Potomac_SB1, id.vars="Group.1", measure.vars = "TN_out")
Potomac_SB1$Site<-c(rep("Potomac_SB1", nrow(Potomac_SB1)))
Potomac_SB1$Group<-c(rep("Rural", nrow(Potomac_SB1)))

Patterson1<-melt(Patterson1, id.vars="Group.1", measure.vars = "TN_out")
Patterson1$Site<-c(rep("Patterson1", nrow(Patterson1)))
Patterson1$Group<-c(rep("Rural", nrow(Patterson1)))

Abran1<-melt(Abran1, id.vars="Group.1", measure.vars = "TN_out")
Abran1$Site<-c(rep("Abran1", nrow(Abran1)))
Abran1$Group<-c(rep("Rural", nrow(Abran1)))

Dragon1<-melt(Dragon1, id.vars="Group.1", measure.vars = "TN_out")
Dragon1$Site<-c(rep("Dragon1", nrow(Dragon1)))
Dragon1$Group<-c(rep("Rural", nrow(Dragon1)))

Rappahannock1<-melt(Rappahannock1, id.vars="Group.1", measure.vars = "TN_out")
Rappahannock1$Site<-c(rep("Rappahannock1", nrow(Rappahannock1)))
Rappahannock1$Group<-c(rep("Rural", nrow(Rappahannock1)))

Mattaponi1<-melt(Mattaponi1, id.vars="Group.1", measure.vars = "TN_out")
Mattaponi1$Site<-c(rep("Mattaponi1", nrow(Mattaponi1)))
Mattaponi1$Group<-c(rep("Rural", nrow(Mattaponi1)))

Panunky1<-melt(Panunky1, id.vars="Group.1", measure.vars = "TN_out")
Panunky1$Site<-c(rep("Panunky1", nrow(Panunky1)))
Panunky1$Group<-c(rep("Rural", nrow(Panunky1)))

Rapidan1<-melt(Rapidan1, id.vars="Group.1", measure.vars = "TN_out")
Rapidan1$Site<-c(rep("Rapidan1", nrow(Rapidan1)))
Rapidan1$Group<-c(rep("Rural", nrow(Rapidan1)))

Rappahannock2<-melt(Rappahannock2, id.vars="Group.1", measure.vars = "TN_out")
Rappahannock2$Site<-c(rep("Rappahannock2", nrow(Rappahannock2)))
Rappahannock2$Group<-c(rep("Rural", nrow(Rappahannock2)))

Chickahominy1<-melt(Chickahominy1, id.vars="Group.1", measure.vars = "TN_out")
Chickahominy1$Site<-c(rep("Chickahominy1", nrow(Chickahominy1)))
Chickahominy1$Group<-c(rep("Suburban", nrow(Chickahominy1)))

Appomattox1<-melt(Appomattox1, id.vars="Group.1", measure.vars = "TN_out")
Appomattox1$Site<-c(rep("Appomattox1", nrow(Appomattox1)))
Appomattox1$Group<-c(rep("Rural", nrow(Appomattox1)))

James1<-melt(James1, id.vars="Group.1", measure.vars = "TN_out")
James1$Site<-c(rep("James1", nrow(James1)))
James1$Group<-c(rep("Rural", nrow(James1)))

James2<-melt(James2, id.vars="Group.1", measure.vars = "TN_out")
James2$Site<-c(rep("James2", nrow(James2)))
James2$Group<-c(rep("Rural", nrow(James2)))

Tioga1<-melt(Tioga1, id.vars="Group.1", measure.vars = "TN_out")
Tioga1$Site<-c(rep("Tioga1", nrow(Tioga1)))
Tioga1$Group<-c(rep("Suburban", nrow(Tioga1)))

Pine1<-melt(Pine1, id.vars="Group.1", measure.vars = "TN_out") 
Pine1$Site<-c(rep("Pine1", nrow(Pine1)))
Pine1$Group<-c(rep("Rural", nrow(Pine1)))

Spring1<-melt(Spring1, id.vars="Group.1", measure.vars = "TN_out")
Spring1$Site<-c(rep("Spring1", nrow(Spring1)))
Spring1$Group<-c(rep("Rural", nrow(Spring1)))

Beech1<-melt(Beech1, id.vars="Group.1", measure.vars = "TN_out")
Beech1$Site<-c(rep("Beech1", nrow(Beech1)))
Beech1$Group<-c(rep("Rural", nrow(Beech1)))

Bald1<-melt(Bald1, id.vars="Group.1", measure.vars = "TN_out")
Bald1$Site<-c(rep("Bald1", nrow(Bald1)))
Bald1$Group<-c(rep("Rural", nrow(Bald1)))

Susquehanna2<-melt(Susquehanna2, id.vars="Group.1", measure.vars = "TN_out")
Susquehanna2$Site<-c(rep("Susquehanna2", nrow(Susquehanna2)))
Susquehanna2$Group<-c(rep("Rural", nrow(Susquehanna2)))

Pequea1<-melt(Pequea1, id.vars="Group.1", measure.vars = "TN_out")
Pequea1$Site<-c(rep("Pequea1", nrow(Pequea1)))
Pequea1$Group<-c(rep("Rural", nrow(Pequea1)))

Conewago1<-melt(Conewago1, id.vars="Group.1", measure.vars = "TN_out")
Conewago1$Site<-c(rep("Conewago1", nrow(Conewago1)))
Conewago1$Group<-c(rep("Suburban", nrow(Conewago1)))

Muddy2<-melt(Muddy2, id.vars="Group.1", measure.vars = "TN_out")
Muddy2$Site<-c(rep("Muddy2", nrow(Muddy2)))
Muddy2$Group<-c(rep("Rural", nrow(Muddy2)))

Susquehanna3<-melt(Susquehanna3, id.vars="Group.1", measure.vars = "TN_out")
Susquehanna3$Site<-c(rep("Susquehanna3", nrow(Susquehanna3)))
Susquehanna3$Group<-c(rep("Rural", nrow(Susquehanna3)))

Paxton1<-melt(Paxton1, id.vars="Group.1", measure.vars = "TN_out")
Paxton1$Site<-c(rep("Paxton1", nrow(Paxton1)))
Paxton1$Group<-c(rep("Suburban", nrow(Paxton1)))

Beeches1<-melt(Beeches1, id.vars="Group.1", measure.vars = "TN_out")
Beeches1$Site<-c(rep("Beeches1", nrow(Beeches1)))
Beeches1$Group<-c(rep("Rural", nrow(Beeches1)))

Juniata1<-melt(Juniata1, id.vars="Group.1", measure.vars = "TN_out")
Juniata1$Site<-c(rep("Juniata1", nrow(Juniata1)))
Juniata1$Group<-c(rep("Rural", nrow(Juniata1)))

Raystown1<-melt(Raystown1, id.vars="Group.1", measure.vars = "TN_out")
Raystown1$Site<-c(rep("Raystown1", nrow(Raystown1)))
Raystown1$Group<-c(rep("Rural", nrow(Raystown1)))

library(ggplot2)

TN_recent20<-rbind(RockCreek1,PaintBranch1,Mattawoman1,QuanticoCreek1,Chopwamsic1,Beaverdam1,Sligo1,littledifficult1,deadrun1,deadrun2,littledifficult2,Shenandoah1,Conococheaque1,Opequon1,Back1,WarmSprings1,Cacapon1,Potomac_SB1,Patterson1,Abran1,Dragon1,Rappahannock1,Mattaponi1,Panunky1,Rapidan1,Rappahannock2,Chickahominy1,Appomattox1,James1,James2,Tioga1,Pine1,Spring1,Beech1,Bald1,Pequea1,Conewago1,Muddy2,Susquehanna3,Paxton1,Beeches1,Juniata1,Raystown1)
# has outliers: Susquehanna2,
data$Treatment <- factor(data$Treatment, levels=c("Y", "X", "Z"))
TN_recent20$Group.1<-factor(TN_recent20$Group.1, levels=c('1999','2000','2001','2002','2003','2004','2005','2006','2007','2008','2009','2010','2011','2012','2013','2014','2015','2016','2017','2018','2019'))


ggplot(data=TN_recent20, aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic()

ggplot(data=TN_recent20, aes(x=Group.1, y=value, color=Group))+geom_point()+theme_classic()

ggplot(data=TN_recent20[TN_recent20$Group=="Suburban",], aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic() + ggtitle("Suburban Sites")

ggplot(data=TN_recent20[TN_recent20$Group=="Rural",], aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic()+ ggtitle("Rural Sites")

ggplot(data=TN_recent20[TN_recent20$Group=="Urban",], aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic()+ ggtitle("Urban Sites")

# scratch space ####

p1<-ggplot(data=Sligo1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
p1

p2<-ggplot(data=RockCreek1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
p2


ggplot(data=PaintBranch1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Mattawoman1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=QuanticoCreek1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Chopwamsic1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Beaverdam1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()# no data
ggplot(data=Sligo1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=littledifficult1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=deadrun1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=deadrun2, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=littledifficult2, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Shenandoah1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Conococheaque1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Opequon1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Back1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=WarmSprings1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Cacapon1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Potomac_SB1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Patterson1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Abran1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Dragon1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Rappahannock1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Mattaponi1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Panunky1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Rapidan1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Rappahannock2, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Chickahominy1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Appomattox1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=James1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=James2, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Tioga1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Pine1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Spring1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Beech1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Bald1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()


ggplot(data=Susquehanna2, aes(x=Group.1, y=value, group=1))+geom_point(color="blue")+theme_classic() # source of many outliers- why so high?


ggplot(data=Pequea1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Conewago1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Muddy2, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Susquehanna3, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Paxton1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()#no data
ggplot(data=Beeches1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Juniata1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
ggplot(data=Raystown1, aes(x=Group.1, y=TN_out, group=1))+geom_point(color="blue")+theme_classic()
