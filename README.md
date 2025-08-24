# Classification-Techniques
This script demonstrates the use of logistic regression for binary classification tasks across different datasets.

Steps Covered

Default Dataset (ISLR package)

Explores the relationship between credit card default and balance.

Fits logistic regression models predicting default using balance, income, and student status.

Computes predicted probabilities manually and using the predict() function.

Heart Disease Dataset (heart.csv)

Preprocesses data (converts categorical variables to factors, drops ID column).

Fits a logistic regression model predicting the presence of heart disease (AHD) using key predictors (Sex, ChestPain, Ca).

Smarket Dataset (ISLR package)

Fits a logistic regression model to predict stock market direction (Up or Down) using lag variables and volume.

Generates predicted probabilities and class predictions.

Evaluates model performance with a confusion matrix and misclassification rate.

Key Outcomes

Logistic regression is effective for binary classification.

Default dataset: Balance is a strong predictor of default probability.

Heart dataset: Certain categorical and numeric factors influence heart disease risk.

Smarket dataset: Logistic regression shows limited predictive power, with misclassification close to random chance.
