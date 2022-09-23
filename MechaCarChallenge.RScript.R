# 1
mecha_mpg <- read.csv(file="MechaCar_mpg.csv")
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg)
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_mpg))
summary(lm(mpg ~ vehicle_length+ground_clearance,data=mecha_mpg))

# 2
suspension <- read.csv(file="Suspension_Coil.csv")
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=(sd(PSI)*sd(PSI)), SD=sd(PSI), .groups = 'keep')