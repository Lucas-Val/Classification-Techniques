# Classification-Techniques
This repository demonstrates the use of **logistic regression** for binary classification tasks across multiple datasets.  

## Datasets and Models
1. **Default Dataset (ISLR package)**  
   - Explores relationship between credit card default and balance.  
   - Logistic regression models predicting default using balance, income, and student status.  
   - Predicted probabilities computed manually and using `predict()`.  

2. **Heart Disease Dataset (`heart.csv`)**  
   - Preprocessed data (categorical variables converted to factors, ID column removed).  
   - Logistic regression model predicting heart disease (`AHD`) using key predictors (Sex, ChestPain, Ca).  

3. **Smarket Dataset (ISLR package)**  
   - Logistic regression model predicting stock market direction (`Up`/`Down`) using lag variables and volume.  
   - Predicted probabilities and class predictions generated.  
   - Model performance evaluated with confusion matrix and misclassification rate.  

## Key Outcomes
- Logistic regression is effective for binary classification.  
- **Default dataset:** Balance is a strong predictor of default probability.  
- **Heart dataset:** Sex, ChestPain, and Ca influence likelihood of heart disease.  
- **Smarket dataset:** Logistic regression shows limited predictive power, with misclassification close to random chance.  
