# file 'present.R' and 'arbuthnot.R' downloaded in lab0 folder
source("lab0/arbuthnot.R")
source("lab0/present.R")

#1
summary(present$year)
dim(present)
names(present)

#2
summary(present) #2.1
summary(arbuthnot)

colMeans(present)[1]-colMeans(arbuthnot)[1] #2.2
colMeans(present)/colMeans(arbuthnot)

#3
B2G_RationPresent <-present$boys/present$girls
B2G_RationArbuthnot <-arbuthnot$boys/arbuthnot$girls

png(filename = "lab0/boy-to-girl_ratio.png", width = 960, height = 480,
    pointsize = 12, bg = "white")

plot(x = present$year, y=B2G_RationPresent, type = "l",
     xlab="Year", ylab="Boy-to-girl Ratio")


dev.off()
plot(x = arbuthnot$year, y=B2G_RationArbuthnot, type = "l",
     xlab="Year", ylab="Boy-to-girl Ratio")
#present$boys > present$girls
#4.

present[which.max(present$boys + present$girls),1] 

plot(x = present$year, y=present$boys+present$girls, type = "l")

