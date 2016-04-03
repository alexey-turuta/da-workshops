source("arbuthnot.R")
dim(arbuthnot)
str(arbuthnot)
names(arbuthnot)
arbuthnot$boys
arbuthnot$girls
plot(x = arbuthnot$year, y = arbuthnot$boys)
plot(x = arbuthnot$year, y = arbuthnot$girls, type = "l")
plot(x = arbuthnot$year, y = arbuthnot$boys + arbuthnot$girls, type = "l")
plot(x = arbuthnot$year, y = arbuthnot$boys/arbuthnot$girls, type = "l")
plot(x = arbuthnot$year, y = arbuthnot$boys/(arbuthnot$boys + arbuthnot$girls), type = "l")
arbuthnot$boys > arbuthnot$girls

#1
source("present.R")
dim(present)
names(present)
#2
str(present)
unique(present$year)
#3
plot(x = present$year, y=present$boys/present$girls, type = "l")

present$boys > present$girls
#4.
plot(x = present$year, y=present$boys+present$girls, type = "l")

#ggplot2, leaflet, shiny. 