# MechaCar_Statistical_Analysis-
Multiple linear regression analysis to identify which variables in the dataset predict the mpg of an automotive data set.


## Linear Regression to Predict MPG

### Data Analysis
1st Model used:	summary(lm(mpg ~  vehicle_length + vehicle_weight + spoiler_angle  + ground_clearance + AWD, data=mecha_mpg))
Summary:	Coefficients:
                   	Estimate 	Std.Error	t value 		Pr(>|t|)    
(Intercept)      	-1.040e+02  	1.585e+01  	-6.559 		5.08e-08 ***
vehicle_length    6.267e+00	 6.553e-01   	9.563 		2.60e-12 ***
vehicle_weight    1.245e-03	 6.890e-04	1.807   		0.0776  
spoiler_angle     6.877e-02 	 6.653e-02   	1.034   		0.3069    
ground_clearance  3.546e+00  5.412e-01   	6.551		5.21e-08 ***
AWD              -3.411e+00	2.535e+00 	-1.346		   0.1852    
---
Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

2nd Model used:	summary(lm(mpg ~  vehicle_length + ground_clearance, data=mecha_mpg))
Summary:	Coefficients:
                 	Estimate 	Std. Error 	t value 		Pr(>|t|)    
(Intercept)      -91.5573    	13.9649  	-6.556 		3.86e-08 ***
vehicle_length     6.0811     	0.6732   	9.033 		7.68e-12 ***
ground_clearance   3.5669     	0.5401   	6.604 		3.26e-08 ***
---
Residual standard error: 9.078 on 47 degrees of freedom
Multiple R-squared:  0.674,	Adjusted R-squared:  0.6601 
F-statistic: 48.59 on 2 and 47 DF,  p-value: 3.637e-12

## Results

### Statistically Significant Variables
In the first model used, where all of the variables are checked against mpg, vehicle length and ground clearance are statistically significant (2.6x10-12 and 5.2x10-8, respectively). Also, there is a strong correlation given these variables (71.5%).
On the second model used, I ran a linear regression on just the vehicle length and the ground clearance. Vehicle length becomes less statistically significant (7.7x10-12 ) but ground clearance becomes more statistically significant (3.3x10-8). Also, correlation is still strong but not as strong as using all of the given variables (67.4%).

### Zero or Non-zero Slopes
The slopes of each variable used in the linear model are all non-zero: 
vehicle_length    	vehicle_weight     	spoiler_angle  
6.267e+00         	1.245e-03         	6.877e-02  
ground_clearance 	AWD  
3.546e+00        	-3.411e+00 

### The Linear Regression Model's Effectiveness
The model predicts that vehicle length and ground clearance have a strong effect on mpg. The correlation is high but not perfect. This indicates that although the variables are strongly corelated, other unlisted variables may affect mpg.
