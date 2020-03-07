
###~~~~~~~~~~~~~~LOAD PACKAGES~~~~~~~~~~~~~~~~~~########

library("sp")
library("rgdal")
library("rgeos")
library("raster")
library("tmap")
library("ggplot2")
library("ggmap")  # has the crim df
library("leaflet")
library("spatstat")
library("gstat")
library("dplyr")
library(tidyr)
library(tidyverse)

suppressPackageStartupMessages(library(magrittr))
###########################
## READ DATA


crime_df <- subset(crime)


View(crime_df)

#############
## the foundation class is the SPATIAL CLASS

getClass("Spatial")



##### WE ONLY WANT THE FIRST FIVE OBS

head(crime_df, n=5)

summary(crime_df)


### DATES NEED TO BE CHANGED TO DATES, NAs Need to be removed


crime_df <- data.frame(crime_df) %>% 
  select_all()%>%
  drop_na()%>%
  distinct()


crime_df$offense <- as.factor(crime_df$offense)
crime_df$month <- as.factor(crime_df$month)
crime_df$day <- as.factor(crime_df$day)
crime_df$date <- as.Date(crime_df$date)

View(crime_df)


#~~~~~~~~~~~~~~~~~create a df with spatial coord ~~~~~~~~~~~~~~#
## The Coordinate Reference System (CRS) is a Geographic CRS called WGS84

## THESE FUNCTIONS ARE FROM THE 'SP' PACKAGE

coords <- SpatialPoints(crime_df[, c("lon", "lat")])

crime_spatial_df<- SpatialPointsDataFrame(coords, crime_df)


proj4string(crime_spatial_df)<-CRS("+proj=longlat +ellps=WGS84")

View(crime_spatial_df)

getClass("Spatial")

##SAVE THE FILE, IT HAS TEH DATA PLUS THE COORDINATES

saveRDS(crime_spatial_df, "./crime_spatial_df.rds")

## SAVE THE FILE TO MAINTAIN THE SPATIAL INTEGRITY 

library(rgdal)
writeOGR(crime_spatial_df, dsn = "./shapefiles", 
         layer = "crime-shapefile", 
         driver = "ESRI Shapefile", 
         overwrite_layer = TRUE)


#####~~~~~~~~~~OPEN UP THE ZIP FILE WITH THE CONSENSUS FILE



unzip("./tl_2015_48_tract.zip", exdir = "./shapefiles", overwrite = TRUE)
texas_shp <- readOGR(dsn = "./shapefiles", layer = "tl_2015_48_tract")



##


class(texas_shp)

View(texas_shp)

###############~~~~~plot~~~~~~~############


plot(texas_shp)







########~~~~~~~~~~ DATA EXPLORATION~~~~~~~~~~~~~~~~~~~########################

## EXPLORE THE BOUNDING AREA OF THE SPATIAL DATA

bbox(crime_spatial_df)



#min       max
#lon -99.50555 -91.94627        ## WEST-EAST
#lat  27.50711  37.33690        ## SOUTH-NORTH



# EXPLORE THE PROJECTION SYSTEM 

proj4string(crime_spatial_df)




