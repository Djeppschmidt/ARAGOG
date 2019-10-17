###########
# Create EU and US maps for one variable
# of choice from a table in the Ready_tables folder
###########

source("Scripts/library.R")

#plots functions
make_EU_plot <- function (df, variable_to_plot) {
  ggplot(df, aes(fill = as.numeric(variable_to_plot)))+
    geom_sf(color = "grey", size = 0.001)+ #lwd = 0
    coord_sf(xlim = c(-20, 30), ylim = c(30,70))+
    scale_fill_gradient(low = "#ef8a62", high = "#67a9cf")+
    theme_bw()
}
make_US_plot <- function (df, variable_to_plot) {
  ggplot(df, aes(fill = as.numeric(variable_to_plot)))+
    geom_sf(color = "grey", size = 0.001)+
    coord_sf(xlim = c(-125, -60), ylim = c(20,50))+
    scale_fill_gradient(low = "#ef8a62", high = "#67a9cf")+
    theme_bw()
}

#load shapefiles of NUTS2 and Counties
ShapeEU <- readShapeSpatial("NUTS2_shapes/NUTS_RG_01M_2013_4326_LEVL_2.shp")
ShapeUS <- readShapeSpatial("County_shapes/us_county_updated.shp")


#Load tables of the variable to plot. Set variable name and path
NUTS2_N_balance <- read_xlsx("Ready_datasets/NUTS2_Nitrogen_balance_ha_140_crops.xlsx")
CTFIPS_N_balance <- read_xlsx("Ready_datasets/CTFIPS_NitrogenBalance_140crops.xlsx")

#merge shapefile with variable to plot, by region ID, then turn back into a spatial file (sf)
EU_N <- merge(ShapeEU, NUTS2_N_balance, by = "NUTS_ID", sort = FALSE)
EU_N <- st_as_sf(EU_N)

US_N <- merge(ShapeUS, CTFIPS_N_balance, by = "CTFIPS", sort = FALSE)
US_N <- st_as_sf(US_N)

#plot EU and US separately
EUplot <- make_EU_plot(df = EU_N, variable_to_plot = EU_N$N_b_140)
USplot <- make_US_plot(df = US_N, variable_to_plot = US_N$N_balance_140crops)

#arrange plots in one
US_EU_N <- grid.arrange(EUplot, USplot, nrow = 2)
