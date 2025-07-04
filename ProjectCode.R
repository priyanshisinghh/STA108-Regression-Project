#priyanshi singh
#final exam r code

#import dataset and create subset + push subset into seperate file
sleepdata <- read.csv("~/rstudio stuff/sleepdata.csv")

N <- dim(sleepdata)[1]
sap <- sample(1:N, 200)
mysubset <- sleepdata[sap,]

write.csv(mysubset, "~/rstudio stuff/subset_sleepdata.csv")

#CONTEXT
#ClassesMissed Number of classes missed in a semester
#CognitionZscore Z-score on a test of cognitive skills
#PoorSleepQuality Measure of sleep quality (higher values are poorer sleep)
#DepressionScore Measure of degree of depression
#AnxietyScore Measure of amount of anxiety
#StressScore Measure of amount of stress
#DASScore Combined score for depression, anxiety and stress
#Happiness Measure of degree of happiness
#Drinks Number of alcoholic drinks per week
#AverageSleep Average hours of sleep for all days
#WeekdaySleep Average hours of sleep on weekdays

#getting least square line as well as the slope coefficient for each scatterplot of each potential predictor variable

#figure1
fitClassesMissed = lm(GPA~ClassesMissed,data = mysubset)
plot(mysubset$ClassesMissed,mysubset$GPA,xlab = "# classes missed",ylab = "GPA")
abline(fitClassesMissed,col = "red")
fitClassesMissed_coeff = fitClassesMissed$coefficients[2]
cat("The slope is ", fitClassesMissed_coeff)
#slope is given as -0.02096 

#figure2
fitCognitionZscore = lm(GPA~CognitionZscore,data = mysubset)
plot(mysubset$CognitionZscore,mysubset$GPA,xlab = "z-score on a test of cognition skills",ylab = "GPA")
abline(fitCognitionZscore,col = "red")
fitCognitionZscore_coeff = fitCognitionZscore$coefficients[2]
cat("The slope is ", fitCognitionZscore_coeff)
#slope is given as 0.16768

#figure3
fitPoorSleepQuality = lm(GPA~PoorSleepQuality,data = mysubset)
plot(mysubset$PoorSleepQuality,mysubset$GPA,xlab = "measure of sleep quality",ylab = "GPA")
abline(fitPoorSleepQuality,col = "red")
fitPoorSleepQuality_coeff = fitPoorSleepQuality$coefficients[2]
cat("The slope is ", fitPoorSleepQuality_coeff)
#slope is given as -0.00692

#figure4
fitDepressionScore = lm(GPA~DepressionScore,data = mysubset)
plot(mysubset$DepressionScore,mysubset$GPA,xlab = "measure of degree of depression",ylab = "GPA")
abline(fitDepressionScore,col = "red")
fitDepressionScore_coeff = fitDepressionScore$coefficients[2]
cat("The slope is ", fitDepressionScore_coeff)
#slope is given as -8.66901e-5

#figure5
fitAnxietyScore = lm(GPA~AnxietyScore,data = mysubset)
plot(mysubset$AnxietyScore,mysubset$GPA,xlab = "measure of amount of anxiety",ylab = "GPA")
abline(fitAnxietyScore,col = "red")
fitAnxietyScore_coeff = fitAnxietyScore$coefficients[2]
cat("The slope is ", fitAnxietyScore_coeff)
#slope is given as -0.004122

#figure6
fitStressScore = lm(GPA~StressScore,data = mysubset)
plot(mysubset$StressScore,mysubset$GPA,xlab = "measure of amount of stress",ylab = "GPA")
abline(fitStressScore,col = "red")
fitStressScore_coeff = fitStressScore$coefficients[2]
cat("The slope is ", fitStressScore_coeff)
#slope is given as 0.00939

#figure7
fitDASScore = lm(GPA~DASScore,data = mysubset)
plot(mysubset$DASScore,mysubset$GPA,xlab = "combined measure of degree of depression, anxiety, and stress",ylab = "GPA")
abline(fitDASScore,col = "red")
fitDASScore_coeff = fitDASScore$coefficients[2]
cat("The slope is ", fitDASScore_coeff)
#slope is given as -0.0025094

#figure8
fitHappiness = lm(GPA~Happiness,data = mysubset)
plot(mysubset$Happiness,mysubset$GPA,xlab = "measure of happiness",ylab = "GPA")
abline(fitHappiness,col = "red")
fitHappiness_coeff = fitHappiness$coefficients[2]
cat("The slope is ", fitHappiness_coeff)
#slope is given as -0.0016143

#figure9
fitDrinks = lm(GPA~Drinks,data = mysubset)
plot(mysubset$Drinks,mysubset$GPA,xlab = "measure of number of drinks/week",ylab = "GPA")
abline(fitDrinks,col = "red")
fitDrinks_coeff = fitDrinks$coefficients[2]
cat("The slope is ", fitDrinks_coeff)
#slope is given as -0.01609

#figure10
fitAverageSleep = lm(GPA~AverageSleep,data = mysubset)
plot(mysubset$AverageSleep,mysubset$GPA,xlab = "measure of avg hours of sleep",ylab = "GPA")
abline(fitAverageSleep,col = "red")
fitAverageSleep_coeff = fitAverageSleep$coefficients[2]
cat("The slope is ", fitAverageSleep_coeff)
#slope is given as -0.01963

#figure11
fitWeekdaySleep = lm(GPA~WeekdaySleep,data = mysubset)
plot(mysubset$WeekdaySleep,mysubset$GPA,xlab = "measure of # of sleep on weekdays",ylab = "GPA")
abline(fitWeekdaySleep,col = "red")
fitWeekdaySleep_coeff = fitWeekdaySleep$coefficients[2]
cat("The slope is ", fitWeekdaySleep_coeff)
#slope is given as -0.021072

#getting the summary table for the t test for each predictor

#figure12
s=summary(fitClassesMissed)
s$coefficients

#figure13
s=summary(fitCognitionZscore)
s$coefficients

#figure14
s=summary(fitPoorSleepQuality)
s$coefficients

#figure15
s=summary(fitDepressionScore)
s$coefficients

#figure16
s=summary(fitAnxietyScore)
s$coefficients

#figure17
s=summary(fitStressScore)
s$coefficients

#figure18
s=summary(fitDASScore)
s$coefficients

#figure19
s=summary(fitHappiness)
s$coefficients

#figure20
s=summary(fitDrinks)
s$coefficients

#figure21
s=summary(fitAverageSleep)
s$coefficients

#figure22
s=summary(fitWeekdaySleep)
s$coefficients

#skipping anova and f-testing, reasoning explained in paper
#residual testing on fitted values and normal values

#figure23 - fitted values vs residual plot
plot(fitClassesMissed, which = 1)
#figure24 - predictor vs residual plot
plot(fitClassesMissed,which = 2)

#figure25 - fitted values vs residual plot
plot(fitCognitionZscore, which = 1)
#figure26 - predictor vs residual plot
plot(fitCognitionZscore, which = 2)

#figure27 - fitted values vs residual plot
plot(fitPoorSleepQuality, which = 1)
#figure28 - predictor vs residual plot
plot(fitPoorSleepQuality, which = 2)

#figure29 - fitted values vs residual plot
plot(fitDepressionScore, which = 1)
#figure30 - predictor vs residual plot
plot(fitDepressionScore, which = 2)

#figure31 - fitted values vs residual plot
plot(fitAnxietyScore, which = 1)
#figure32 - predictor vs residual plot
plot(fitAnxietyScore, which = 2)

#figure33 - fitted values vs residual plot
plot(fitStressScore, which = 1)
#figure34 - predictor vs residual plot
plot(fitStressScore, which = 2)

#figure35 - fitted values vs residual plot
plot(fitDASScore, which = 1)
#figure36 - predictor vs residual plot
plot(fitDASScore, which = 2)

#figure37 - fitted values vs residual plot
plot(fitHappiness, which = 1)
#figure38 - predictor vs residual plot
plot(fitHappiness, which = 2)

#figure39 - fitted values vs residual plot
plot(fitDrinks, which = 1)
#figure40 - predictor vs residual plot
plot(fitDrinks, which = 2)

#figure41 - fitted values vs residual plot
plot(fitAverageSleep, which = 1)
#figure42 - predictor vs residual plot
plot(fitAverageSleep, which = 2)

#figure43 - fitted values vs residual plot
plot(fitWeekdaySleep, which = 1)
#figure44 - predictor vs residual plot
plot(fitWeekdaySleep, which = 2)

#applying boxcox to those necessary
#figure45
library(MASS)
boxcox(fitClassesMissed)
fitClassesMissed_boxCox = lm(GPA^1.25~ClassesMissed, data=mysubset)
summary(fitClassesMissed_boxCox)
#figure46
boxcox(fitPoorSleepQuality)
fitPoorSleepQuality_boxCox = lm(GPA^1.2~PoorSleepQuality, data=mysubset)
summary(fitPoorSleepQuality_boxCox)
#figure47
boxcox(fitAnxietyScore)
fitAnxietyScore_boxCox = lm(GPA^1.2~AnxietyScore, data=mysubset)
summary(fitAnxietyScore_boxCox)
#figure 48
boxcox(fitDrinks)
fitDrinks_boxCox = lm(GPA^1.25~Drinks, data=mysubset)
summary(fitDrinks_boxCox)
#figure49
boxcox(fitWeekdaySleep)
fitWeekdaySleep_boxCox = lm(GPA^1.2~WeekdaySleep, data=mysubset)
summary(fitWeekdaySleep_boxCox)

#moving along using leaps
#MAIN PART OF ANALYSIS AND FINAL REPORT ---------------------------------------------------

install.packages("leaps")
library(leaps)

#figure 50- fit with all variables
fit_null = lm(GPA~1, data = mysubset)
fit1 = lm(GPA~ClassesMissed+CognitionZscore+PoorSleepQuality+DepressionScore+AnxietyScore+StressScore+DASScore+Happiness+Drinks+AverageSleep+WeekdaySleep, data=mysubset)
#anova(fit_null, fit1)
summary(fit1)

#doing a forward selection o build a model for GPA
#removing DASScore due to multicollinearity likely due to the fact its dependent on the Depression, Anxiety, and Stress Score
#figure51
reg1 = regsubsets(GPA~ClassesMissed+CognitionZscore+PoorSleepQuality+DepressionScore+AnxietyScore+StressScore+Happiness+Drinks+AverageSleep+WeekdaySleep, data=mysubset, method='forward')
summary(reg1)

#figure 52 - backwards elimination
reg2 = regsubsets(GPA~ClassesMissed+CognitionZscore+PoorSleepQuality+DepressionScore+AnxietyScore+StressScore+Happiness+Drinks+AverageSleep+WeekdaySleep, data=mysubset, method = 'backward')
summary(reg2)

#figure 53
#getting r adjusted value
Radj = cbind(mysubset$CognitionZscore, mysubset$StressScore, mysubset$DepressionScore, mysubset$ClassesMissed, mysubset$AnxietyScore)
lep = leaps(Radj,mysubset$GPA,method = 'adjr2',names = c('CognitionZScore','StressScore', 'DepressionScore', 'classes missed', 'anxiety score'))
cbind(lep$which,'adjr2' = lep$adjr2)


