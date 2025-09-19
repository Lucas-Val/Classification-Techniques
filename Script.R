library(ISLR)
attach(Default)
?Default
str(Default)
head(Default)

# Association between default & balance
boxplot(balance ~ default, data = Default)

# Fitting a logistic model 
model1 = glm(default ~ balance, data = Default, family = "binomial")
summary(model1)

# Predicted probability 
# Method 1
exp(-10.65 + 0.005499*500)/(1 + exp(-10.65 + 0.005499*500))
# Method 2 
predict(model1, newdata = list(balance = 500), type =  "response")

model2 = glm(default ~ . , data = Default, family = "binomial")                            
summary(model2)

model3 = glm(default ~ . -income, data = Default, family = "binomial")
summary(model3)

# Exploring the heart data
heart = read.csv("heart.csv")
str(heart)

heart$Sex = as.factor(heart$Sex)
heart$ChestPain = as.factor(heart$ChestPain)
heart$Thal = as.factor(heart$Thal)
heart$AHD = as.factor(heart$AHD)

heart = heart[ , -1]

# Fitting a logistic regression 
model4 = glm(AHD ~ Sex + ChestPain + Ca, data = heart, family = "binomial")
summary(model4)  

attach(Smarket)  
model5 = glm(Direction ~ Lag1 + Lag2 + Lag3 + Lag4 + Lag5 + Volume, data = Smarket,
             family = "binomial")
summary(model5)

# Prediction 
contrasts((Direction))

glm_prob = predict(model5, type = "response")
hist(glm_prob)

pred_class = rep("Down", nrow(Smarket))
pred_class[glm_prob > 0.5] = "Up"
pred_class

#  Misclassifications matrix 
table(Predicted = pred_class, Observed = Direction)
# misclassification rate
(141 + 457) / (145 + 141 + 457 + 507)
