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
summary(present$boys/present$girls)

png(filename = "lab0/boy-to-girl_ratio.png", width = 960, height = 480,
    pointsize = 12, bg = "white")
plot(boys/girls ~ year, data = present, 
     main = "Figure 1. Boy to girl ratio",
     type = "l",  ylim = c(1.045, 1.06),
     xlab="Year", ylab="Boy-to-girl Ratio")
dev.off()
plot(x = arbuthnot$year, y=B2G_RationArbuthnot, type = "l",
     xlab="Year", ylab="Boy-to-girl Ratio")

summary(present$boys/(present$girls + present$boys))

png(filename = "lab0/boy-to-all_proportion.png", width = 960, height = 480,
    pointsize = 12, bg = "white")
plot(boys/(girls+boys) ~ year, data = present, 
     main = "Figure 2. Boys proportion",
     type = "l",  ylim = c(0.51, 0.515),
     xlab="Year", ylab="Boys proportion")
dev.off()
#4.

present[which.max(present$boys + present$girls),1] 

