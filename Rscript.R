library(data.table)
library(ggplot2)

rm(list=ls())

setwd("C:/Users/PERELLOA054/Desktop/ESSA SS Material/Project/pollutionModel")

data <- read.csv("pollution-experiment-table.csv", sep=",", skip=6, header=TRUE, stringsAsFactors = FALSE)

data <- data[,c(2,3,4,9)]
names(data)[4] <- "Pollution"


data1 <- aggregate(Pollution ~ punishedTurtlesWeight * surroundingWasteWeight, data = data[which(data$punishedCounterWeight==0),], mean)

data1 <- data.table(data1)

ggplot(data1, aes(x=punishedTurtlesWeight, y=surroundingWasteWeight, fill=Pollution)) + 
  theme(text = element_text(size=26),legend.position="right") + 
  geom_raster() +
  scale_x_continuous(breaks = seq(0,1,0.25)) + 
  scale_y_continuous(breaks = seq(0,1,0.25)) +
  scale_fill_gradient(low = "#FFFFCC", high = "#CC3300", limits=c(0,100))
