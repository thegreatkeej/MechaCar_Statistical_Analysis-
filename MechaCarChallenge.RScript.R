# 1
mecha_mpg <- read.csv(file="MechaCar_mpg.csv")
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg))
summary(lm(mpg ~ vehicle_length+ground_clearance,data=mecha_mpg))

# 2
suspension <- read.csv(file="Suspension_Coil.csv")
head(suspension)

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI)*sd(PSI)), SD=sd(PSI), .groups = 'keep')
lot_summary

# 3
t.test(log10(suspension$PSI),mu=log10(1500))

lot1 <- subset(suspension, Manufacturing_Lot == "Lot1")
lot2 <- subset(suspension, Manufacturing_Lot == "Lot2")
lot3 <- subset(suspension, Manufacturing_Lot == "Lot3")

ttest1 <- t.test(log10(lot1$PSI),mu=log10(1500))
ttest1

ttest2 <-t.test(log10(lot2$PSI),mu=log10(1500))
ttest2

ttest3 <-t.test(log10(lot3$PSI),mu=log10(1500))
ttest3
