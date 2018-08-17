library(data.table)
library(ggplot2)

rm(list=ls())

setwd("C:/Users/PERELLOA054/Desktop/ESSA SS Material/Project/pollutionModel")

data <- read.csv("pollution-experiment-table.csv", sep=",", skip=6, header=TRUE, stringsAsFactors = FALSE)
e
data <- data[,c(2,3,4,9)]
names(data)[4] <- "Pollution"


# PunishedCounterWeight = 0

aux_data <- aggregate(Pollution ~ punishedTurtlesWeight * surroundingWasteWeight, data = data[which(data$punishedCounterWeight==0),], mean)
aux_data <- data.table(data1)

ggplot(aux_data, aes(x=punishedTurtlesWeight, y=surroundingWasteWeight, fill=Pollution)) + 
  theme(text = element_text(size=20),legend.position="right") + 
  ggtitle("punishedCounterWeight=0") +
  geom_tile(color="grey") + #geom_raster()
  scale_x_continuous(breaks = seq(0,1,0.25)) + 
  scale_y_continuous(breaks = seq(0,1,0.25)) +
  scale_fill_gradient(low = "#FFFFCC", high = "#CC3300", limits=c(0,100))


# PunishedCounterWeight = 0.5

aux_data <- aggregate(Pollution ~ punishedTurtlesWeight * surroundingWasteWeight, data = data[which(data$punishedCounterWeight==0.5),], mean)
aux_data <- data.table(aux_data)

ggplot(aux_data, aes(x=punishedTurtlesWeight, y=surroundingWasteWeight, fill=Pollution)) + 
  theme(text = element_text(size=20),legend.position="right") + 
  ggtitle("punishedCounterWeight=0.5") +
  geom_tile(color="grey") + #geom_raster()
  scale_x_continuous(breaks = seq(0,1,0.25)) + 
  scale_y_continuous(breaks = seq(0,1,0.25)) +
  scale_fill_gradient(low = "#FFFFCC", high = "#CC3300", limits=c(0,100))


# PunishedCounterWeight = 1

aux_data <- aggregate(Pollution ~ punishedTurtlesWeight * surroundingWasteWeight, data = data[which(data$punishedCounterWeight==1),], mean)
aux_data <- data.table(aux_data)

ggplot(aux_data, aes(x=punishedTurtlesWeight, y=surroundingWasteWeight, fill=Pollution)) + 
  theme(text = element_text(size=20),legend.position="right") + 
  ggtitle("punishedCounterWeight=1") +
  geom_tile(color="grey") + #geom_raster()
  scale_x_continuous(breaks = seq(0,1,0.25)) + 
  scale_y_continuous(breaks = seq(0,1,0.25)) +
  scale_fill_gradient(low = "#FFFFCC", high = "#CC3300", limits=c(0,100))




