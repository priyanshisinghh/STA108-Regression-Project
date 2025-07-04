## STA108 Project Analysis Report
Priyanshi Singh

### Introduction
This paper aims to identify the variables that best predict GPA based on the dataset collected and given. Using a random subset of 200 samples, I interpreted predictive models using variables such as sleep quality, cognitive ability, stress levels, and other lifestyle factors. I used a variety of methods but focused on forward selection and backward elimination to identify the most significant predictors.

 ### Exploratory Data Analysis
 I initially started by creating scatterplots and getting their correlation coefficients to assess the linear relationships between GPA and each of the given predictor variables.[Figures 1-11]. However, this was not very helpful as all of the correlations were weak, with the highest coefficient being 0.1676 for CognitionZScore. I then conducted t-tests for each variable to try to determine the potential significance of the model [Figures 12-22]. All of the variables had a p-value below the 0.05 threshold, suggesting that they all had some potential significance and relation to GPA. I then tried to look at the residual and QQ plots for each variable [Figures 23-44] to determine if a linear model was not appropriate and if any transformations were necessary. In this process, preliminary single-predictor models showed some heteroscedasticity and non-normality for some variables- ClassesMissed [Figures 23-24], PoorSleepQuality [Figures 27-28], AnxietyScore [Figures 31-32], Drinks, [Figures 39-40], and WeekdaySleep [Figures 43-44]. I then did Box-Cox transformations for these variables [Figures 45-49] to determine if there was a linear relationship after the transformation, but the multiple R-squared values, p-values, and other statistical values (the R-squared values, p-values, and others) were inconclusive and did not suggest that any one predictor variable had a significant effect.

### Model Selection & Analysis
I decided then to use another model- forward selection and backward elimination. These methods helped me iteratively evaluate each predictor based on their respective contributions toward predicting and explaining GPA variation. Note that I had to remove the DASScore variable when running this model due to its multicollinearity likely to do its correlations with the Depression, Anxiety, and Stress Scores.
#####  1. Forward Selection: 
I started off with having no predictors in the model. Then, with respect to how the forward selection process works, each variable was added stepwise based on their respective p-values and how much contribution they have to predictive accuracy for GPA. This process identified CognitionZScore, StressScore, DepressionScore, ClassesMissed, and AnxietyScore as the key
 predictions that helped contribute significantly to GPA [Figure 51] as seen by the
 addition of the star for each layer.
##### 2. Backward Elimination:
I started off with having all predictors in this model, and each predictor was removed iteratively based on which one contributed the least to the mode. This approach once again retained CognitionZScore, StressScore, DepressionScore, ClassesMissed, and AnxietyScore into its final model, reinforcing the predictive power of these variables for the model. Some other variables such as AnxietyScore and WeekdaySleep were removed towards the beginning of the process due to their minimal impact on the improvement of the adjusted R-squared values.

Diagnostic plots for the final model were conducted to assess the adjusted R-squared value [Figure 53]. We can see that the value is higher when all 6 predictors are used compared to some combination of them, and the r-adjusted squared value is 0.1561.

The final model includes CognitionZScore, CognitionZScore, StressScore, DepressionScore, ClassesMissed, and AnxietyScore, all of which help to explain 15.61% of GPA variability (with the adjusted R-squared = 0.1561). The analysis identified these 6 as significant predictors of GPA. While the model’s predictive power is still sub-par highlights key factors influencing academic performance.
