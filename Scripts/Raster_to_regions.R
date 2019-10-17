# ARAGOG 14/10/19 

## General script to convert spatial raster data to NUTS2/County regions, in table form
## example is from N balance

# set local working directory
#setwd("~/PhD Leeds/ARAGOG project/Data")

source("Scripts/library.R")

# open shapefile of NUTS2 2013
OGR_NUTS2 <- readOGR("NUTS2_shapes/NUTS_RG_01M_2013_4326_LEVL_2.shp", stringsAsFactors = FALSE)
# check projection
crs(OGR_NUTS2)

# open shapefile of US Counties 2014
OGR_CTFIPS <- readOGR("County_shapes/tl_2014_us_county.shp", stringsAsFactors = FALSE)
# check projection
crs(OGR_CTFIPS)

# convert projection of US to WGS84
US_proj <- spTransform(OGR_CTFIPS, CRS("+proj=longlat +datum=WGS84 +no_defs +ellps=WGS84 +towgs84=0,0,0"))
crs(US_proj)

# load raster of Global N balance, ** OR ANY OTHER RASTER DATASET *** 
# NB: raster datasets should not be uploaded in the Git folder, set the directory from your own computer
raster_N <- raster("../NitrogenBalanceOnLandscape_140crops.tif")

# ONLY for raster data that is not yet in units per hectare!
# Convert N data to values per 9.25x9.25km pixels, so 85.5625 km2 per pixel, or 8556.25 ha per pixel
raster_N_ha <- raster_N*(1/8556.25)

# check that projections is similar to US/EU shp
crs(raster_N_ha)

# extract values from raster per shapefile area, calculate mean, and weighted mean for boundaries
N.ha.EU <- extract(raster_N_ha,OGR_CTFIPS,fun=mean,na.rm=TRUE,weights=TRUE,normalizeWeights=TRUE,sp=TRUE)

N.ha.US <- extract(raster_N_ha,US_proj,fun=mean,na.rm=TRUE,weights=TRUE,normalizeWeights=TRUE,sp=TRUE)

# load excel table of NUTS2 regions
NUTS <- read.xlsx("ready_datasets/NUTS2_regions.xlsx")

# load excel table of US counties and convert FIP codes to 5 digits
Counties <- read.xlsx("read_datasets/US_County_FIPS_Code.xlsx")
Counties <- as_tibble(Counties) %>%
  mutate(CTFIPS =
           ifelse(is.na(Counties$CTFIPS),NA,sprintf("%05d", Counties$CTFIPS)))

# give similar column name to county codes from excel and extracted polygons
colnames(N.ha.US@data)[4] = "CTFIPS" 

# merge mean data values from polygon with the regions table for EU and US
EU_NUTS2_N_balance_ha_140_crops <- merge(NUTS,N.ha.EU@data, by = "NUTS_ID", sort = FALSE)
US_Counties_N_balance_ha_140_crops <- merge(Counties, N.ha.US@data, by = "CTFIPS", sort=FALSE)

# export to table
write.xlsx(EU_NUTS2_N_balance_ha_140_crops,"NUTS2_Nitrogen_balance_ha_140_crops.xlsx")
write.xlsx(US_Counties_N_balance_ha_140_crops, "CTFIPS_Nitrogen_balance_ha_140_crops.xlsx")

