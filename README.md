# Credit Risk / Loan Default Risk Analysis

## Business Problem

Loan defaults lead to significant financial losses for lending institutions.  
The objective of this project is to analyze borrower data, predict the probability of loan default, and segment applicants into risk categories to support data-driven credit decisions.

This project aims to:

- Minimize default risk  
- Improve portfolio stability  
- Enhance risk visibility  
- Enable smarter lending decisions  

---

## Dataset Overview

The dataset contains borrower-level attributes including:

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

## Tools & Technologies Used

- Python  
- SQL (MySQL via SQLAlchemy)  
- Power BI  
- Jupyter Notebook  

---

## Project Approach

### 1. Data Cleaning (Python)

Handled missing values using median imputation and removed invalid records.  
Exported cleaned dataset for structured analysis.

### 2. SQL-Based Business Aggregation

Loaded clean data into MySQL and performed segment-level aggregations using GROUP BY queries to compute default rates across key borrower attributes.

### 3. Machine Learning Modeling

Built and evaluated Logistic Regression, Random Forest, and XGBoost using ROC-AUC, confusion matrix, and classification metrics.

### 4. Risk Segmentation

Applicants were categorized into:

- Low Risk (< 0.20)  
- Medium Risk (0.20–0.50)  
- High Risk (≥ 0.50)  

### 5. Power BI Dashboard

Built an interactive dashboard showing KPIs, default trends, and risk segmentation insights.

---

## Project Structure
