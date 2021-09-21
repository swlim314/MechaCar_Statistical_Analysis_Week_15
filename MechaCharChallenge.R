#Import library
library(dbplyr)
#Import and read in the MechaCar_mpg.csv files as a dataframe
MechaCarDf <- read.csv(file='MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCarDf)
#Perform linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarDf)) 

#Part 2
#Import and read in Suspension_coil.csv as a dataframe
SCoilDf <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#Create a 'total_summary' dataframe using summarize()
total_summary <- SCoilDf %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- SCoilDf%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
total_summary
lot_summary

#Part 3
#T.test() to determine if PSI is statistically different
t.test(SCoilDf$PSI,mu=1500)
lot1 <- subset(SCoilDf, Manufacturing_Lot=="Lot1")
lot2 <- subset(SCoilDf, Manufacturing_Lot=="Lot2")
lot3 <- subset(SCoilDf, Manufacturing_Lot=="Lot3")
t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
