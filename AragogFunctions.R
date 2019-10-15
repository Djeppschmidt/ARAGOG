# Use USGS dataRetrieval package to access their data

library(dataRetrieval)

#### Chesapeake Bay Test #
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


# 
melt.fW<-function(d){
  require(reshape2)
  d<-dcast(d,sample_dt~parm_cd, value.var = 'result_va', fun.aggregate=mean)
  d<-within(d, sample_dt<-data.frame(do.call('rbind', strsplit(as.character(sample_dt), '-', fixed=TRUE))))
  d$Year<-d$sample_dt$X1
  d$Month<-d$sample_dt$X2
  d$Day<-d$sample_dt$X3
  d<-d[colnames(d)!="sample_dt"]
  d<-d[d$Year==2011|d$Year==2012|d$Year==2013|d$Year==2014|d$Year==2015,]
  #can be filtered for only certain months ... ? which are most important
  d<-d[d$Month==11|d$Month==12|d$Month==1|d$Month==2|d$Month==3|d$Month==4,]
  #
  de<-data.frame("Year"=d$Year,"TN_out"=d$'00600', "Nitrate"=d$'00618', "ammonium"=d$'00608', "Orthophosphate"=d$'00660')
  
  de<-aggregate(de[,2:5], list(de$Year), mean)
  de
  
}

melt.fS<-function(d){
  require(reshape2)
  d<-dcast(d,sample_dt~parm_cd, value.var = 'result_va', fun.aggregate=mean)
  d<-within(d, sample_dt<-data.frame(do.call('rbind', strsplit(as.character(sample_dt), '-', fixed=TRUE))))
  d$Year<-d$sample_dt$X1
  d$Month<-d$sample_dt$X2
  d$Day<-d$sample_dt$X3
  d<-d[colnames(d)!="sample_dt"]
  d<-d[d$Year==2011|d$Year==2012|d$Year==2013|d$Year==2014|d$Year==2015,]
  #can be filtered for only certain months ... ? which are most important
  d<-d[d$Month==5|d$Month==6|d$Month==7|d$Month==8|d$Month==9|d$Month==10,]
  #
  de<-data.frame("Year"=d$Year,"TN_out"=d$'00600', "Nitrate"=d$'00618', "ammonium"=d$'00608', "Orthophosphate"=d$'00660')
  
  de<-aggregate(de[,2:5], list(de$Year), mean)
  de
  
}
function.key<-c("Turbidity"='00076',"Conductance"='00095',"H ion"='00191',"DO"='00300',"pH Field"='00400',"pH lab"='00403',"TN"='00600',"Organic Nitrogen"='00605',"Ammonia"='00608',"Nitrite"='00613',"Nitrate"='00618',"Orthophosphate"='00660',"Phosphorous_unfiltered"='00665',"P_suspended_sediment"='00667',"Manganese"='01056',"Nickel"='01065',"Nickel_unfiltered"='01067',"Discharge_m3"='30209',"Fecal_Coliform"='31625',"Chlorophyll_a"='32211',"Suspended_sediment"='70331',"Ammonia_unfiltered"='71845',"Ammonia"='71846',"Nitrate"='71851',"Nitrite"='71856',"Suspended_sediment_conc"='80154')
# test function
W.patuxent1<-melt.fW(Patuxent1)
S.patuxent1<-melt.fS(Patuxent1)
# do the rest
W.RockCreek1<-melt.fW(RockCreek1)#not this year?
S.RockCreek1<-melt.fS(RockCreek1)

W.PaintBranch1<-melt.fW(PaintBranch1)
S.PaintBranch1<-melt.fS(PaintBranch1)

W.Mattawoman1<-melt.fW(Mattawoman1)
S.Mattawoman1<-melt.f(Mattawoman1)

W.QuanticoCreek1<-melt.fW(QuanticoCreek1)
S.QuanticoCreek1<-melt.fS(QuanticoCreek1)
W.Chopwamsic1<-melt.fW(Chopwamsic1)#no rows
S.Chopwamsic1<-melt.fS(Chopwamsic1)#no rows
W.Sligo1<-melt.fW(Sligo1)
S.Sligo1<-melt.fS(Sligo1)
W.littledifficult1<-melt.fW(littledifficult1)
S.littledifficult1<-melt.fS(littledifficult1)
W.deadrun1<-melt.fW(deadrun1)
S.deadrun1<-melt.fS(deadrun1)
W.deadrun2<-melt.fW(deadrun2)
S.deadrun2<-melt.fS(deadrun2)
W.littledifficult2<-melt.fW(littledifficult2)
S.littledifficult2<-melt.fS(littledifficult2)
W.Shenandoah1<-melt.fW(Shenandoah1)
S.Shenandoah1<-melt.fS(Shenandoah1)
W.Opequon1<-melt.fW(Opequon1)
S.Opequon1<-melt.fS(Opequon1)
W.Back1<-melt.fW(Back1)
S.Back1<-melt.fS(Back1)
W.WarmSprings1<-melt.fW(WarmSprings1)
S.WarmSprings1<-melt.fS(WarmSprings1)
W.Cacapon1<-melt.fW(Cacapon1)
S.Cacapon1<-melt.fS(Cacapon1)
W.Potomac_SB1<-melt.fW(Potomac_SB1)
S.Potomac_SB1<-melt.fS(Potomac_SB1)
W.Patterson1<-melt.fW(Patterson1)
S.Patterson1<-melt.fS(Patterson1)
W.Abran1<-melt.fW(Abran1)
S.Abran1<-melt.fS(Abran1)
W.Dragon1<-melt.fW(Dragon1)
S.Dragon1<-melt.fS(Dragon1)
W.Rappahannock1<-melt.fW(Rappahannock1)
S.Rappahannock1<-melt.fS(Rappahannock1)
W.Mattaponi1<-melt.fW(Mattaponi1)
S.Mattaponi1<-melt.fS(Mattaponi1)
W.Panunky1<-melt.fW(Panunky1)
S.Panunky1<-melt.fS(Panunky1)
W.Rapidan1<-melt.fW(Rapidan1)
S.Rapidan1<-melt.fS(Rapidan1)
W.Rappahannock2<-melt.fW(Rappahannock2)
S.Rappahannock2<-melt.fS(Rappahannock2)
W.Chickahominy1<-melt.fW(Chickahominy1)
S.Chickahominy1<-melt.fS(Chickahominy1)
W.Appomattox1<-melt.fW(Appomattox1)
S.Appomattox1<-melt.fS(Appomattox1)
W.James1<-melt.fW(James1)
S.James1<-melt.fS(James1)
W.James2<-melt.fW(James2)
S.James2<-melt.fS(James2)
W.Tioga1<-melt.fW(Tioga1)
S.Tioga1<-melt.fS(Tioga1)
W.Pine1<-melt.fW(Pine1) 
S.Pine1<-melt.fS(Pine1)
W.Spring1<-melt.fW(Spring1)
S.Spring1<-melt.fS(Spring1)
W.Beech1<-melt.fW(Beech1)
S.Beech1<-melt.fS(Beech1)
W.Bald1<-melt.fW(Bald1)
S.Bald1<-melt.fS(Bald1)
W.Susquehanna2<-melt.fW(Susquehanna2)
S.Susquehanna2<-melt.fS(Susquehanna2)
W.Pequea1<-melt.fW(Pequea1) # no rows
S.Pequea1<-melt.fS(Pequea1)
W.Conewago1<-melt.fW(Conewago1) # no rows
S.Conewago1<-melt.fS(Conewago1)
W.Muddy2<-melt.fW(Muddy2)
S.Muddy2<-melt.fS(Muddy2)
W.Susquehanna3<-melt.fW(Susquehanna3)
S.Susquehanna3<-melt.fS(Susquehanna3)
W.Paxton1<-melt.fW(Paxton1)
S.Paxton1<-melt.fS(Paxton1)
W.Beeches1<-melt.fW(Beeches1)
S.Beeches1<-melt.fS(Beeches1)
W.Juniata1<-melt.fW(Juniata1)
S.Juniata1<-melt.fS(Juniata1)
W.Raystown1<-melt.fW(Raystown1)
S.Raystown1<-melt.fS(Raystown1)

Winter.RockCreek1<-melt(W.RockCreek1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.RockCreek1$Site<-c(rep("Rock_Creek1", nrow(Winter.RockCreek1)))
Winter.RockCreek1$Group<-c(rep("Urban", nrow(Winter.RockCreek1)))

Summer.RockCreek1<-melt(S.RockCreek1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.RockCreek$Site<-c(rep("Rock_Creek1", nrow(Summer.RockCreek)))
Summer.RockCreek$Group<-c(rep("Urban", nrow(Summer.RockCreek)))

Summer.PaintBranch1<-melt(S.PaintBranch1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.PaintBranch1$Site<-c(rep("PaintBranch1", nrow(Summer.PaintBranch1)))
Summer.PaintBranch1$Group<-c(rep("Suburban", nrow(Summer.PaintBranch1)))

Winter.PaintBranch1<-melt(W.PaintBranch1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.PaintBranch1$Site<-c(rep("PaintBranch1", nrow(Winter.PaintBranch1)))
Winter.PaintBranch1$Group<-c(rep("Suburban", nrow(Winter.PaintBranch1)))

Summer.Mattawoman1<-melt(S.Mattawoman1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Mattawoman1$Site<-c(rep("Mattawoman1", nrow(Summer.Mattawoman1)))
Summer.Mattawoman1$Group<-c(rep("Suburban", nrow(Summer.Mattawoman1)))

Winter.Mattawoman1<-melt(W.Mattawoman1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Mattawoman1$Site<-c(rep("Mattawoman1", nrow(Winter.Mattawoman1)))
Winter.Mattawoman1$Group<-c(rep("Suburban", nrow(Winter.Mattawoman1)))

Summer.QuanticoCreek1<-melt(S.QuanticoCreek1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.QuanticoCreek1$Site<-c(rep("QuanticoCreek1", nrow(Summer.QuanticoCreek1)))
Summer.QuanticoCreek1$Group<-c(rep("Suburban", nrow(Summer.QuanticoCreek1)))

#Summer.Chopwamsic1<-melt(S.Chopwamsic1, id.vars="Group.1", measure.vars = "TN_out")
#Summer.Chopwamsic1$Site<-c(rep("Chopwamsic1", nrow(Summer.Chopwamsic1)))
#Summer.Chopwamsic1$Group<-c(rep("Suburban", nrow(Summer.Chopwamsic1)))

#Summer.Beaverdam1<-melt(S.Beaverdam1, id.vars="Group.1", measure.vars = "TN_out")
#Summer.Beaverdam1$Site<-c(rep("Beaverdam1", nrow(Summer.Beaverdam1)))
#Summer.Beaverdam1$Group<-c(rep("Suburban", nrow(Summer.Beaverdam1))) # chcke this...

Summer.Sligo1<-melt(S.Sligo1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Sligo1$Site<-c(rep("Sligo1", nrow(Summer.Sligo1)))
Summer.Sligo1$Group<-c(rep("Suburban", nrow(Summer.Sligo1)))

Summer.littledifficult1<-melt(S.littledifficult1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.littledifficult1$Site<-c(rep("littledifficult1", nrow(Summer.littledifficult1)))
Summer.littledifficult1$Group<-c(rep("Suburban", nrow(Summer.littledifficult1)))

Summer.deadrun1<-melt(S.deadrun1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.deadrun1$Site<-c(rep("deadrun1", nrow(Summer.deadrun1)))
Summer.deadrun1$Group<-c(rep("Suburban", nrow(Summer.deadrun1)))

Summer.deadrun2<-melt(S.deadrun2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.deadrun2$Site<-c(rep("deadrun2", nrow(Summer.deadrun2)))
Summer.deadrun2$Group<-c(rep("Suburban", nrow(Summer.deadrun2)))

Summer.littledifficult2<-melt(S.littledifficult2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.littledifficult2$Site<-c(rep("littledifficult1", nrow(Summer.littledifficult2)))
Summer.littledifficult2$Group<-c(rep("Suburban", nrow(Summer.littledifficult2)))

Summer.Shenandoah1<-melt(S.Shenandoah1, id.vars="Group.1", measure.vars = "TN_out")
Summer.Shenandoah1$Site<-c(rep("Shenandoah1", nrow(Summer.Shenandoah1)))
Summer.Shenandoah1$Group<-c(rep("Rural", nrow(Summer.Shenandoah1)))

#Summer.Conococheaque1<-melt(S.Conococheaque1, id.vars="Group.1", measure.vars = "TN_out") # check this
#Summer.Conococheaque1$Site<-c(rep("Conococheaque1", nrow(Summer.Conococheaque1)))
#Summer.Conococheaque1$Group<-c(rep("Rural", nrow(Summer.Conococheaque1)))

Summer.Opequon1<-melt(S.Opequon1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Opequon1$Site<-c(rep("Opequon1", nrow(Summer.Opequon1)))
Summer.Opequon1$Group<-c(rep("Rural", nrow(Summer.Opequon1)))

Summer.Back1<-melt(S.Back1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Back1$Site<-c(rep("Back1", nrow(Summer.Back1)))
Summer.Back1$Group<-c(rep("Rural", nrow(Summer.Back1)))

Summer.WarmSprings1<-melt(S.WarmSprings1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.WarmSprings1$Site<-c(rep("WarmSprings1", nrow(Summer.WarmSprings1)))
Summer.WarmSprings1$Group<-c(rep("Rural", nrow(Summer.WarmSprings1)))

Summer.Cacapon1<-melt(S.Cacapon1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Cacapon1$Site<-c(rep("Cacapon1", nrow(Summer.Cacapon1)))
Summer.Cacapon1$Group<-c(rep("Rural", nrow(Summer.Cacapon1)))

Summer.Potomac_SB1<-melt(S.Potomac_SB1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Potomac_SB1$Site<-c(rep("Potomac_SB1", nrow(Potomac_SB1)))
Summer.Potomac_SB1$Group<-c(rep("Rural", nrow(Summer.Potomac_SB1)))

Summer.Patterson1<-melt(S.Patterson1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Patterson1$Site<-c(rep("Patterson1", nrow(Summer.Patterson1)))
Summer.Patterson1$Group<-c(rep("Rural", nrow(Summer.Patterson1)))

Summer.Abran1<-melt(S.Abran1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Abran1$Site<-c(rep("Abran1", nrow(Summer.Abran1)))
Summer.Abran1$Group<-c(rep("Rural", nrow(Summer.Abran1)))

Summer.Dragon1<-melt(S.Dragon1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Dragon1$Site<-c(rep("Dragon1", nrow(Summer.Dragon1)))
Summer.Dragon1$Group<-c(rep("Rural", nrow(Summer.Dragon1)))

Summer.Rappahannock1<-melt(S.Rappahannock1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Rappahannock1$Site<-c(rep("Rappahannock1", nrow(Summer.Rappahannock1)))
Summer.Rappahannock1$Group<-c(rep("Rural", nrow(Summer.Rappahannock1)))

Summer.Mattaponi1<-melt(S.Mattaponi1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Mattaponi1$Site<-c(rep("Mattaponi1", nrow(Summer.Mattaponi1)))
Summer.Mattaponi1$Group<-c(rep("Rural", nrow(Summer.Mattaponi1)))

Summer.Panunky1<-melt(S.Panunky1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Panunky1$Site<-c(rep("Panunky1", nrow(Summer.Panunky1)))
Summer.Panunky1$Group<-c(rep("Rural", nrow(Summer.Panunky1)))

Summer.Rapidan1<-melt(S.Rapidan1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Rapidan1$Site<-c(rep("Rapidan1", nrow(Summer.Rapidan1)))
Summer.Rapidan1$Group<-c(rep("Rural", nrow(Summer.Rapidan1)))

Summer.Rappahannock2<-melt(S.Rappahannock2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Rappahannock2$Site<-c(rep("Rappahannock2", nrow(Summer.Rappahannock2)))
Summer.Rappahannock2$Group<-c(rep("Rural", nrow(Summer.Rappahannock2)))

Summer.Chickahominy1<-melt(S.Chickahominy1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Chickahominy1$Site<-c(rep("Chickahominy1", nrow(Summer.Chickahominy1)))
Summer.Chickahominy1$Group<-c(rep("Suburban", nrow(Summer.Chickahominy1)))

Summer.Appomattox1<-melt(S.Appomattox1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Appomattox1$Site<-c(rep("Appomattox1", nrow(Summer.Appomattox1)))
Summer.Appomattox1$Group<-c(rep("Rural", nrow(Summer.Appomattox1)))

Summer.James1<-melt(S.James1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.James1$Site<-c(rep("James1", nrow(Summer.James1)))
Summer.James1$Group<-c(rep("Rural", nrow(Summer.James1)))

Summer.James2<-melt(S.James2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.James2$Site<-c(rep("James2", nrow(Summer.James2)))
Summer.James2$Group<-c(rep("Rural", nrow(Summer.James2)))

Summer.Tioga1<-melt(S.Tioga1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Tioga1$Site<-c(rep("Tioga1", nrow(Summer.Tioga1)))
Summer.Tioga1$Group<-c(rep("Suburban", nrow(Summer.Tioga1)))

Summer.Pine1<-melt(S.Pine1, id.vars="Group.1", measure.vars = "Nitrate") 
Summer.Pine1$Site<-c(rep("Pine1", nrow(Summer.Pine1)))
Summer.Pine1$Group<-c(rep("Rural", nrow(Summer.Pine1)))

Summer.Spring1<-melt(S.Spring1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Spring1$Site<-c(rep("Spring1", nrow(Summer.Spring1)))
Summer.Spring1$Group<-c(rep("Rural", nrow(Summer.Spring1)))

Summer.Beech1<-melt(S.Beech1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Beech1$Site<-c(rep("Beech1", nrow(Summer.Beech1)))
Summer.Beech1$Group<-c(rep("Rural", nrow(Summer.Beech1)))

Summer.Bald1<-melt(S.Bald1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Bald1$Site<-c(rep("Bald1", nrow(Summer.Bald1)))
Summer.Bald1$Group<-c(rep("Rural", nrow(Summer.Bald1)))

Summer.Susquehanna2<-melt(S.Susquehanna2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Susquehanna2$Site<-c(rep("Susquehanna2", nrow(Summer.Susquehanna2)))
Summer.Susquehanna2$Group<-c(rep("Rural", nrow(Summer.Susquehanna2)))

Summer.Pequea1<-melt(S.Pequea1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Pequea1$Site<-c(rep("Pequea1", nrow(Summer.Pequea1)))
Summer.Pequea1$Group<-c(rep("Rural", nrow(Summer.Pequea1)))

Summer.Conewago1<-melt(S.Conewago1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Conewago1$Site<-c(rep("Conewago1", nrow(Summer.Conewago1)))
Summer.Conewago1$Group<-c(rep("Suburban", nrow(Summer.Conewago1)))

Summer.Muddy2<-melt(S.Muddy2, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Muddy2$Site<-c(rep("Muddy2", nrow(Summer.Muddy2)))
Summer.Muddy2$Group<-c(rep("Rural", nrow(Summer.Muddy2)))

Summer.Susquehanna3<-melt(S.Susquehanna3, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Susquehanna3$Site<-c(rep("Susquehanna3", nrow(Summer.Susquehanna3)))
Summer.Susquehanna3$Group<-c(rep("Rural", nrow(Summer.Susquehanna3)))

Summer.Paxton1<-melt(S.Paxton1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Paxton1$Site<-c(rep("Paxton1", nrow(Summer.Paxton1)))
Summer.Paxton1$Group<-c(rep("Suburban", nrow(Summer.Paxton1)))

Summer.Beeches1<-melt(S.Beeches1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Beeches1$Site<-c(rep("Beeches1", nrow(Summer.Beeches1)))
Summer.Beeches1$Group<-c(rep("Rural", nrow(Summer.Beeches1)))

Summer.Juniata1<-melt(S.Juniata1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Juniata1$Site<-c(rep("Juniata1", nrow(Summer.Juniata1)))
Summer.Juniata1$Group<-c(rep("Rural", nrow(Summer.Juniata1)))

Summer.Raystown1<-melt(S.Raystown1, id.vars="Group.1", measure.vars = "Nitrate")
Summer.Raystown1$Site<-c(rep("Raystown1", nrow(Summer.Raystown1)))
Summer.Raystown1$Group<-c(rep("Rural", nrow(Summer.Raystown1)))

###

Winter.QuanticoCreek1<-melt(W.QuanticoCreek1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.QuanticoCreek1$Site<-c(rep("QuanticoCreek1", nrow(Winter.QuanticoCreek1)))
Winter.QuanticoCreek1$Group<-c(rep("Suburban", nrow(Winter.QuanticoCreek1)))

#Winter.Chopwamsic1<-melt(W.Chopwamsic1, id.vars="Group.1", measure.vars = "Nitrate")
##Winter.Chopwamsic1$Site<-c(rep("Chopwamsic1", nrow(Winter.Chopwamsic1)))
#Winter.Chopwamsic1$Group<-c(rep("Suburban", nrow(Winter.Chopwamsic1)))

Winter.Beaverdam1<-melt(W.Beaverdam1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Beaverdam1$Site<-c(rep("Beaverdam1", nrow(Winter.Beaverdam1)))
Winter.Beaverdam1$Group<-c(rep("Suburban", nrow(Winter.Beaverdam1))) # chcke this...

Winter.Sligo1<-melt(W.Sligo1, id.vars="Group.1", measure.vars = "TN_out")
Winter.Sligo1$Site<-c(rep("Sligo1", nrow(Winter.Sligo1)))
Winter.Sligo1$Group<-c(rep("Suburban", nrow(Winter.Sligo1)))

Winter.littledifficult1<-melt(W.littledifficult1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.littledifficult1$Site<-c(rep("littledifficult1", nrow(Winter.littledifficult1)))
Winter.littledifficult1$Group<-c(rep("Suburban", nrow(Winter.littledifficult1)))

Winter.deadrun1<-melt(W.deadrun1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.deadrun1$Site<-c(rep("deadrun1", nrow(Winter.deadrun1)))
Winter.deadrun1$Group<-c(rep("Suburban", nrow(Winter.deadrun1)))

Winter.deadrun2<-melt(W.deadrun2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.deadrun2$Site<-c(rep("deadrun2", nrow(Winter.deadrun2)))
Winter.deadrun2$Group<-c(rep("Suburban", nrow(Winter.deadrun2)))

Winter.littledifficult2<-melt(W.littledifficult2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.littledifficult2$Site<-c(rep("littledifficult1", nrow(Winter.littledifficult2)))
Winter.littledifficult2$Group<-c(rep("Suburban", nrow(Winter.littledifficult2)))

Winter.Shenandoah1<-melt(W.Shenandoah1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Shenandoah1$Site<-c(rep("Shenandoah1", nrow(Winter.Shenandoah1)))
Winter.Shenandoah1$Group<-c(rep("Rural", nrow(Winter.Shenandoah1)))

#Winter.Conococheaque1<-melt(W.Conococheaque1, id.vars="Group.1", measure.vars = "TN_out") # check this
#Winter.Conococheaque1$Site<-c(rep("Conococheaque1", nrow(Winter.Conococheaque1)))
#Winter.Conococheaque1$Group<-c(rep("Rural", nrow(Winter.Conococheaque1)))

Winter.Opequon1<-melt(W.Opequon1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Opequon1$Site<-c(rep("Opequon1", nrow(Winter.Opequon1)))
Winter.Opequon1$Group<-c(rep("Rural", nrow(Winter.Opequon1)))

Winter.Back1<-melt(W.Back1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Back1$Site<-c(rep("Back1", nrow(Winter.Back1)))
Winter.Back1$Group<-c(rep("Rural", nrow(Winter.Back1)))

Winter.WarmSprings1<-melt(W.WarmSprings1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.WarmSprings1$Site<-c(rep("WarmSprings1", nrow(Winter.WarmSprings1)))
Winter.WarmSprings1$Group<-c(rep("Rural", nrow(Winter.WarmSprings1)))

Winter.Cacapon1<-melt(W.Cacapon1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Cacapon1$Site<-c(rep("Cacapon1", nrow(Winter.Cacapon1)))
Winter.Cacapon1$Group<-c(rep("Rural", nrow(Winter.Cacapon1)))

Winter.Potomac_SB1<-melt(W.Potomac_SB1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Potomac_SB1$Site<-c(rep("Potomac_SB1", nrow(Potomac_SB1)))
Winter.Potomac_SB1$Group<-c(rep("Rural", nrow(Winter.Potomac_SB1)))

Winter.Patterson1<-melt(W.Patterson1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Patterson1$Site<-c(rep("Patterson1", nrow(Winter.Patterson1)))
Winter.Patterson1$Group<-c(rep("Rural", nrow(Winter.Patterson1)))

Winter.Abran1<-melt(W.Abran1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Abran1$Site<-c(rep("Abran1", nrow(Winter.Abran1)))
Winter.Abran1$Group<-c(rep("Rural", nrow(Winter.Abran1)))

Winter.Dragon1<-melt(W.Dragon1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Dragon1$Site<-c(rep("Dragon1", nrow(Winter.Dragon1)))
Winter.Dragon1$Group<-c(rep("Rural", nrow(Winter.Dragon1)))

Winter.Rappahannock1<-melt(W.Rappahannock1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Rappahannock1$Site<-c(rep("Rappahannock1", nrow(Winter.Rappahannock1)))
Winter.Rappahannock1$Group<-c(rep("Rural", nrow(Winter.Rappahannock1)))

Winter.Mattaponi1<-melt(W.Mattaponi1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Mattaponi1$Site<-c(rep("Mattaponi1", nrow(Winter.Mattaponi1)))
Winter.Mattaponi1$Group<-c(rep("Rural", nrow(Winter.Mattaponi1)))

Winter.Panunky1<-melt(W.Panunky1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Panunky1$Site<-c(rep("Panunky1", nrow(Winter.Panunky1)))
Winter.Panunky1$Group<-c(rep("Rural", nrow(Winter.Panunky1)))

Winter.Rapidan1<-melt(W.Rapidan1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Rapidan1$Site<-c(rep("Rapidan1", nrow(Winter.Rapidan1)))
Winter.Rapidan1$Group<-c(rep("Rural", nrow(Winter.Rapidan1)))

Winter.Rappahannock2<-melt(W.Rappahannock2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Rappahannock2$Site<-c(rep("Rappahannock2", nrow(Winter.Rappahannock2)))
Winter.Rappahannock2$Group<-c(rep("Rural", nrow(Winter.Rappahannock2)))

Winter.Chickahominy1<-melt(W.Chickahominy1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Chickahominy1$Site<-c(rep("Chickahominy1", nrow(Winter.Chickahominy1)))
Winter.Chickahominy1$Group<-c(rep("Suburban", nrow(Winter.Chickahominy1)))

Winter.Appomattox1<-melt(W.Appomattox1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Appomattox1$Site<-c(rep("Appomattox1", nrow(Winter.Appomattox1)))
Winter.Appomattox1$Group<-c(rep("Rural", nrow(Winter.Appomattox1)))

Winter.James1<-melt(W.James1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.James1$Site<-c(rep("James1", nrow(Winter.James1)))
Winter.James1$Group<-c(rep("Rural", nrow(Winter.James1)))

Winter.James2<-melt(W.James2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.James2$Site<-c(rep("James2", nrow(Winter.James2)))
Winter.James2$Group<-c(rep("Rural", nrow(Winter.James2)))

Winter.Tioga1<-melt(W.Tioga1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Tioga1$Site<-c(rep("Tioga1", nrow(Winter.Tioga1)))
Winter.Tioga1$Group<-c(rep("Suburban", nrow(Winter.Tioga1)))

Winter.Pine1<-melt(W.Pine1, id.vars="Group.1", measure.vars = "Nitrate") 
Winter.Pine1$Site<-c(rep("Pine1", nrow(Winter.Pine1)))
Winter.Pine1$Group<-c(rep("Rural", nrow(Winter.Pine1)))

Winter.Spring1<-melt(W.Spring1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Spring1$Site<-c(rep("Spring1", nrow(Winter.Spring1)))
Winter.Spring1$Group<-c(rep("Rural", nrow(Winter.Spring1)))

Winter.Beech1<-melt(W.Beech1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Beech1$Site<-c(rep("Beech1", nrow(Winter.Beech1)))
Winter.Beech1$Group<-c(rep("Rural", nrow(Winter.Beech1)))

Winter.Bald1<-melt(W.Bald1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Bald1$Site<-c(rep("Bald1", nrow(Winter.Bald1)))
Winter.Bald1$Group<-c(rep("Rural", nrow(Winter.Bald1)))

Winter.Susquehanna2<-melt(W.Susquehanna2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Susquehanna2$Site<-c(rep("Susquehanna2", nrow(Winter.Susquehanna2)))
Winter.Susquehanna2$Group<-c(rep("Rural", nrow(Winter.Susquehanna2)))

#Winter.Pequea1<-melt(W.Pequea1, id.vars="Group.1", measure.vars = "TN_out")
#Winter.Pequea1$Site<-c(rep("Pequea1", nrow(Winter.Pequea1)))
#Winter.Pequea1$Group<-c(rep("Rural", nrow(Winter.Pequea1)))

#Winter.Conewago1<-melt(W.Conewago1, id.vars="Group.1", measure.vars = "TN_out")
#Winter.Conewago1$Site<-c(rep("Conewago1", nrow(Winter.Conewago1)))
#Winter.Conewago1$Group<-c(rep("Suburban", nrow(Winter.Conewago1)))

Winter.Muddy2<-melt(W.Muddy2, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Muddy2$Site<-c(rep("Muddy2", nrow(Winter.Muddy2)))
Winter.Muddy2$Group<-c(rep("Rural", nrow(Winter.Muddy2)))

Winter.Susquehanna3<-melt(W.Susquehanna3, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Susquehanna3$Site<-c(rep("Susquehanna3", nrow(Winter.Susquehanna3)))
Winter.Susquehanna3$Group<-c(rep("Rural", nrow(Winter.Susquehanna3)))

Winter.Paxton1<-melt(W.Paxton1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Paxton1$Site<-c(rep("Paxton1", nrow(Winter.Paxton1)))
Winter.Paxton1$Group<-c(rep("Suburban", nrow(Winter.Paxton1)))

Winter.Beeches1<-melt(W.Beeches1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Beeches1$Site<-c(rep("Beeches1", nrow(Winter.Beeches1)))
Winter.Beeches1$Group<-c(rep("Rural", nrow(Winter.Beeches1)))

Winter.Juniata1<-melt(W.Juniata1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Juniata1$Site<-c(rep("Juniata1", nrow(Winter.Juniata1)))
Winter.Juniata1$Group<-c(rep("Rural", nrow(Winter.Juniata1)))

Winter.Raystown1<-melt(W.Raystown1, id.vars="Group.1", measure.vars = "Nitrate")
Winter.Raystown1$Site<-c(rep("Raystown1", nrow(Winter.Raystown1)))
Winter.Raystown1$Group<-c(rep("Rural", nrow(Winter.Raystown1)))


library(ggplot2)

N_Winter<-rbind(Winter.RockCreek1,Winter.PaintBranch1,Winter.Mattawoman1,Winter.QuanticoCreek1,Winter.Sligo1,Winter.littledifficult1,Winter.deadrun1,Winter.deadrun2,Winter.littledifficult2,Winter.Shenandoah1,Winter.Opequon1,Winter.Back1,Winter.WarmSprings1,Winter.Cacapon1,Winter.Patterson1,Winter.Abran1,Winter.Dragon1,Winter.Rappahannock1,Winter.Mattaponi1,Winter.Panunky1,Winter.Rapidan1,Winter.Rappahannock2,Winter.Chickahominy1,Winter.Appomattox1,Winter.James1,Winter.James2,Winter.Tioga1,Winter.Pine1,Winter.Spring1,Winter.Beech1,Winter.Bald1,Winter.Muddy2,Winter.Susquehanna3,Winter.Paxton1,Winter.Beeches1,Winter.Juniata1,Winter.Susquehanna2,Winter.Raystown1)

N_RuralWinter<-N_Winter[N_Winter$Group=="Rural",]

N_Summer<-rbind(Summer.PaintBranch1,Summer.Mattawoman1,Summer.QuanticoCreek1,Summer.Sligo1,Summer.littledifficult1,Summer.deadrun1,Summer.deadrun2,Summer.littledifficult2,Summer.Shenandoah1,Summer.Opequon1,Summer.Back1,Summer.WarmSprings1,Summer.Cacapon1,Summer.Patterson1,Summer.Abran1,Summer.Dragon1,Summer.Rappahannock1,Summer.Mattaponi1,Summer.Panunky1,Summer.Rapidan1,Summer.Rappahannock2,Summer.Chickahominy1,Summer.Appomattox1,Summer.James1,Summer.James2,Summer.Tioga1,Summer.Pine1,Summer.Spring1,Summer.Beech1,Summer.Bald1,Summer.Pequea1,Summer.Conewago1,Summer.Muddy2,Summer.Susquehanna3,Summer.Paxton1,Summer.Beeches1,Summer.Juniata1,Summer.Susquehanna2,Summer.Raystown1)



N_RuralSummer<-N_Summer[N_Summer$Group=="Rural",]
# has outliers: Susquehanna2,
all_ruralN<-rbind(N_RuralWinter,N_RuralSummer)

TN_recent20$Group.1<-factor(TN_recent20$Group.1, levels=c('2011','2012','2013','2014','2015'))

library(ggplot2)

ggplot(data=TN_recent20, aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic()

ggplot(data=N_RuralWinter, aes(x=Group.1, y=value, color=Group))+geom_point()+theme_classic()+geom_boxplot()+ggtitle("Winter")
ggplot(data=N_RuralSummer, aes(x=Group.1, y=value, color=Group))+geom_point()+theme_classic()+geom_boxplot()+ggtitle("Summer")

ggplot(data=all_ruralN, aes(x=Group.1, y=value, color=))+geom_point()+theme_classic()+geom_boxplot()

ggplot(data=TN_recent20[TN_recent20$Group=="Suburban",], aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic() + ggtitle("Suburban Sites") + ggtitle("Total Nitrogen")

ggplot(data=N_RuralWinter, aes(x=Group.1, y=value, color=Site))+geom_point()+theme_classic() + ggtitle("urban Sites") + ggtitle("Nitrate")

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


# example run ####

penn.siteIDs<-c('01550000',)
params<-c('00076','00095','00191','00300','00400','00403','00600','00605','00608','00613','00618','00660','00665','00667','01056','01065','01067','30209','31625','32211','70331','71845','71846','71851','71856','80154')

function.key<-c("Turbidity"='00076',"Conductance"='00095',"H ion"='00191',"DO"='00300',"pH Field"='00400',"pH lab"='00403',"TN"='00600',"Organic Nitrogen"='00605',"Ammonia"='00608',"Nitrite"='00613',"Nitrate"='00618',"Orthophosphate"='00660',"Phosphorous_unfiltered"='00665',"P_suspended_sediment"='00667',"Manganese"='01056',"Nickel"='01065',"Nickel_unfiltered"='01067',"Discharge_m3"='30209',"Fecal_Coliform"='31625',"Chlorophyll_a"='32211',"Suspended_sediment"='70331',"Ammonia_unfiltered"='71845',"Ammonia"='71846',"Nitrate"='71851',"Nitrite"='71856',"Suspended_sediment_conc"='80154')

ChesapeakeWQ<-readNWISqw(siteIDs, params)
saveRDS(ChesapeakeWQ, "~/Documents/GitHub/ARAGOG/ChesapeakeWQ.rds")