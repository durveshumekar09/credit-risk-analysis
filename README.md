# Credit Risk / Loan Default Risk Analysis

## Business Problem

Loan defaults lead to significant financial losses for financial institutions.  
The objective of this project is to predict the probability of loan default and segment borrowers into risk categories to support data-driven lending decisions.

The solution aims to:

- Minimize default risk  
- Improve portfolio stability  
- Enhance risk visibility  
- Support smarter credit approval decisions  

---

## Dataset Overview

The dataset contains borrower-level financial and demographic attributes:

- person_age  
- person_income  
- person_home_ownership  
- person_emp_length  
- loan_intent  
- loan_grade  
- loan_amnt  
- loan_int_rate  
- loan_percent_income  
- cb_person_default_on_file  
- cb_person_cred_hist_length  
- loan_status (Target Variable: 0 = Non-default, 1 = Default)

---

## Tools & Technologies

- **Python** (pandas, numpy, scikit-learn, xgboost, matplotlib)
- **SQL** (MySQL via SQLAlchemy)
- **Power BI**
- **Jupyter Notebook**

---

## Project Workflow

### 1. Data Cleaning & Preparation (Python)

- Handled missing values using median imputation  
- Removed invalid and inconsistent records  
- Ensured correct data types  
- Exported cleaned dataset  

Output: `data_clean/credit_risk_clean.csv`

---

### 2. SQL-Based Business Aggregation

- Loaded cleaned data into MySQL database  
- Performed segment-level aggregations using GROUP BY queries  
- Calculated default rate by:
  - loan_grade  
  - loan_intent  
  - prior default history  

This step enabled structured business analysis using SQL.

---

### 3. Exploratory Data Analysis (EDA)

Analyzed borrower attributes to identify patterns in default behavior.

Key insights:

- Higher loan grades are associated with increased default risk  
- Certain loan intents show higher default rates  
- Previous default history significantly increases risk  

---

### 4. Machine Learning Modeling

Built and evaluated multiple classification models:

- Logistic Regression  
- Random Forest  
- XGBoost  

**Evaluation Metrics:**

- ROC-AUC  
- Confusion Matrix  
- Precision, Recall, F1-score  

**Sample Performance (Logistic Regression):**

- ROC-AUC: 0.87  
- Accuracy: 87%  
- Strong discrimination between defaulters and non-defaulters  

---

### 5. Risk Segmentation

Based on predicted default probability:

- Low Risk → probability < 0.20  
- Medium Risk → 0.20–0.50  
- High Risk → ≥ 0.50  

This segmentation supports actionable lending decisions.

Output: `data_scored/credit_risk_scored.csv`

---

### 6. Power BI Dashboard

Developed an interactive dashboard displaying:

- Total Loans  
- Default Rate  
- Average Loan Amount  
- Risk Band Distribution  
- Default Rate by Loan Grade  
- Default Rate by Loan Intent  
- Interactive slicers for dynamic filtering  

Dashboard file: `powerbi/credit_risk_dashboard.pbix`

---

## Project Structure
