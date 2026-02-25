Credit Risk / Loan Default Risk Analysis
Business Problem

Loan defaults lead to significant financial losses for lending institutions. The objective of this project is to analyze borrower data, predict the probability of loan default, and segment applicants into risk categories to support data-driven credit decisions.

This project aims to:

Minimize default risk

Improve portfolio stability

Enhance risk visibility

Enable smarter lending decisions

Dataset Overview

The dataset contains borrower-level attributes including:

person_age

person_income

person_home_ownership

person_emp_length

loan_intent

loan_grade

loan_amnt

loan_int_rate

loan_percent_income

cb_person_default_on_file

cb_person_cred_hist_length

loan_status (Target Variable: 0 = Non-default, 1 = Default)

Tools & Technologies Used

Python (pandas, numpy, scikit-learn, xgboost, matplotlib)

SQL (MySQL via SQLAlchemy)

Power BI

Jupyter Notebook

Project Approach
1. Data Cleaning (Python)

Handled missing values using median imputation

Removed invalid or unrealistic records

Ensured correct data types

Exported cleaned dataset for structured analysis

Output file:
data_clean/credit_risk_clean.csv

2. SQL-Based Business Aggregation

Using MySQL and SQLAlchemy:

Loaded clean data into a relational database

Created structured, segment-level aggregations

Calculated default rate by:

loan_grade

loan_intent

previous default history

This step enables business-level analysis using SQL and supports structured reporting.

3. Exploratory Data Analysis (EDA)

Explored borrower characteristics and their relationship with default risk.

Key findings:

Higher loan grades show increased default rates

Certain loan purposes carry higher credit risk

Applicants with previous defaults exhibit significantly higher default probability

Visualizations are available in the screenshots/ folder.

4. Machine Learning Modeling

Built and evaluated multiple classification models:

Logistic Regression

Random Forest

XGBoost

Evaluation Metrics Used:

ROC-AUC

Confusion Matrix

Precision, Recall, F1-score

Sample Logistic Regression Performance:

ROC-AUC: 0.87

Accuracy: 87%

Default Class Recall: 56%

The models demonstrate strong ability to distinguish between defaulters and non-defaulters.

5. Risk Segmentation

Based on predicted default probability, applicants were categorized into:

Low Risk → probability < 0.20

Medium Risk → 0.20–0.50

High Risk → ≥ 0.50

This segmentation makes the model output actionable for lending decisions.

Output file:
data_scored/credit_risk_scored.csv

6. Power BI Dashboard

An interactive dashboard was developed to present key insights:

Total Loans

Default Rate

Average Loan Amount

Risk Band Distribution

Default Rate by Loan Grade

Default Rate by Loan Intent

Interactive slicers for dynamic filtering

Dashboard file:
powerbi/credit_risk_dashboard.pbix

Project Structure
Credit Risk / Loan Default Risk Analysis
Business Problem

Loan defaults lead to significant financial losses for lending institutions. The objective of this project is to analyze borrower data, predict the probability of loan default, and segment applicants into risk categories to support data-driven credit decisions.

This project aims to:

Minimize default risk

Improve portfolio stability

Enhance risk visibility

Enable smarter lending decisions

Dataset Overview

The dataset contains borrower-level attributes including:

person_age

person_income

person_home_ownership

person_emp_length

loan_intent

loan_grade

loan_amnt

loan_int_rate

loan_percent_income

cb_person_default_on_file

cb_person_cred_hist_length

loan_status (Target Variable: 0 = Non-default, 1 = Default)

Tools & Technologies Used

Python (pandas, numpy, scikit-learn, xgboost, matplotlib)

SQL (MySQL via SQLAlchemy)

Power BI

Jupyter Notebook

Project Approach
1. Data Cleaning (Python)

Handled missing values using median imputation

Removed invalid or unrealistic records

Ensured correct data types

Exported cleaned dataset for structured analysis

Output file:
data_clean/credit_risk_clean.csv

2. SQL-Based Business Aggregation

Using MySQL and SQLAlchemy:

Loaded clean data into a relational database

Created structured, segment-level aggregations

Calculated default rate by:

loan_grade

loan_intent

previous default history

This step enables business-level analysis using SQL and supports structured reporting.

3. Exploratory Data Analysis (EDA)

Explored borrower characteristics and their relationship with default risk.

Key findings:

Higher loan grades show increased default rates

Certain loan purposes carry higher credit risk

Applicants with previous defaults exhibit significantly higher default probability

Visualizations are available in the screenshots/ folder.

4. Machine Learning Modeling

Built and evaluated multiple classification models:

Logistic Regression

Random Forest

XGBoost

Evaluation Metrics Used:

ROC-AUC

Confusion Matrix

Precision, Recall, F1-score

Sample Logistic Regression Performance:

ROC-AUC: 0.87

Accuracy: 87%

Default Class Recall: 56%

The models demonstrate strong ability to distinguish between defaulters and non-defaulters.

5. Risk Segmentation

Based on predicted default probability, applicants were categorized into:

Low Risk → probability < 0.20

Medium Risk → 0.20–0.50

High Risk → ≥ 0.50

This segmentation makes the model output actionable for lending decisions.

Output file:
data_scored/credit_risk_scored.csv

6. Power BI Dashboard

An interactive dashboard was developed to present key insights:

Total Loans

Default Rate

Average Loan Amount

Risk Band Distribution

Default Rate by Loan Grade

Default Rate by Loan Intent

Interactive slicers for dynamic filtering

Dashboard file:
powerbi/credit_risk_dashboard.pbix

Project Structure
Credit_Risk_Default_Analysis/
│
├── data_raw/
├── data_clean/
├── data_scored/
├── notebooks/
├── models/
├── screenshots/
├── sql/
└── powerbi/
