#Shapefile example 

library(raster)

#Soil is going to be your variable of interest
#County will be your counties or NUTS2 

#The following code creates the soil boundaries and counties because all my examples are giant.
p1 <- shapefile(system.file("external/lux.shp", package="raster"))
# Remove attribute data
p1 <- as(p1, 'SpatialPolygons')
# Add in some fake soil type data
soil <- SpatialPolygonsDataFrame(p1, data.frame(soil=LETTERS[1:12], quality = c(rep(1:3, 4))), match.ID=F)

# County polygons
p2 <- union(as(extent(6, 6.4, 49.75, 50), 'SpatialPolygons'),
            as(extent(5.8, 6.2, 49.5, 49.7), 'SpatialPolygons'))
county <- SpatialPolygonsDataFrame(p2, data.frame(county=c('x','y')), match.ID=F)
projection(county) <- projection(soil)
county$CountyArea <- area(county)/1000000

# An area example using the raster package. (adapted from here: 
#https://gis.stackexchange.com/questions/140504/extracting-intersection-areas-in-r) SF below is another option 
# intersect from raster package - here 
pi <- intersect(soil, #your outcome variable
                county) #counties or administrative units
#or pi <- raster::intersect(soil, county)
plot(soil, axes=T); plot(county, add=T); plot(pi, add=T, col='red')

# Extract areas from polygon objects then attach as attribute
pi$area <- area(pi) / 1000000

# For each field // county or NUTS2, get area per soil type// the variable of interest
aggregate(area~county + soil, data=pi, FUN=sum) #this would be for some kind of weighted deal

#Amount of soil area per county 
g <- as.data.frame(aggregate(area ~ county, data = pi, FUN=sum))
c <- county@data #getting the county areas
gc <- merge(g, c, by="county")
gc$percentSoilArea <- gc$area/gc$CountyArea #just a straight up percent

gc

#OR area weighted average -  I do not exactly remember this and will update code once we discuss at the next meeting! 



#OKay THEN! another way to roll using tidyverse 
#https://rpubs.com/rural_gis/255550
#Directly lifted from above
#import required libraries
library(sf)
library(tidyverse)

#load county areas polygon shapefile 
counties <- st_read("counties_poly.shp") 

#load the arable land polygon data (extracted from the CEH LCM2007 1km land cover raster)
arable <- st_read("arable_poly.shp")

#before further processing, check the coordinate reference systems of both layers (must be same CRS)
#note: project to local coordinate system if current CRS in degrees
st_crs(counties)
st_crs(arable)

#run the intersect function, converting the output to a tibble in the process
int <- as_tibble(st_intersection(arable, counties))

#add in an area count column to the tibble (area of each arable poly in intersect layer)
int$areaArable <- st_area(int$geoms)

#plot the layers to visually check result of intersect
plot (arable$geometry, col='green')
plot(counties$geometry, add=T)
plot(int$geoms, col='red', add=T)

#group data by county area and calculate the total arable land area per county
#output as new tibble
tb_ArableByCounty <- int %>%
  group_by(County_UA) %>%
  summarise(areaArable = sum(areaArable))

#change data type of areaArable field to numeric (from 'S3: units' with m^2 suffix)
tb_ArableByCounty$areaArable <- as.numeric(tb_ArableByCounty$areaArable)

#join tibble to original county polygon shapefile and export as new shapefile
shp_out <- st_write(merge(counties, tb_ArableByCounty, by = 'County_UA'), "ArablebyCounty.shp")



#####Additional code:#####
# wdpa <- shapefile("C:/Users/Kate/Dropbox/R_data/aragog/data/wdpa_outputs/us_wdpa.shp")
# 
# #If you have a world file you want to clip: use below to clip to us boundaries
# #us <- shapefile("data/USCounty/US_County_Boundaries_Continental.shp")
# #uspa <- wdpa[us,] now not necessary 
# #eu <- shapefile("data/NUTS2/NUTS_RG_01M_2013_4326_LEVL_2.shp")
# #eupa <- wdpa[eu,]
# #read in the behemouth files
# 
# 
# s <- raster::intersect(us_wdpa, us) 
# 
# #write the shapefile in case it's massive and a memory hog
# shapefile(s, "data/uscounty_clipped_wdpa.shp")
# 
# s$area <- area(s)/1000000
