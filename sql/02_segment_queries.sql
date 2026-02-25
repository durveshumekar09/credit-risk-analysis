-- Default rate by loan_grade
SELECT loan_grade,
       COUNT(*) AS total_loans,
       AVG(loan_status) AS default_rate,
       AVG(loan_amnt) AS avg_loan_amount,
       AVG(loan_int_rate) AS avg_interest_rate
FROM credit_risk_clean
GROUP BY loan_grade
ORDER BY default_rate DESC;

-- Default rate by loan_intent
SELECT loan_intent,
       COUNT(*) AS total_loans,
       AVG(loan_status) AS default_rate
FROM credit_risk_clean
GROUP BY loan_intent
ORDER BY default_rate DESC;

-- Default rate by past default flag
SELECT cb_person_default_on_file,
       COUNT(*) AS total_loans,
       AVG(loan_status) AS default_rate
FROM credit_risk_clean
GROUP BY cb_person_default_on_file;