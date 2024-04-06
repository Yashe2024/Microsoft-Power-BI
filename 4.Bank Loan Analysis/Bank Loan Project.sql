SELECT *
  FROM [BankLoanDB].[dbo].[financial_loan]


1.Total number of loan application
select count(ID) AS Total_loan_applications from [dbo].[financial_loan]

2.MTD loan applications( taking december as month of starting)
select count(id) AS Total_loan_application from [dbo].[financial_loan]
where month(issue_date) = 12 and year(issue_date) = 2021

3.PMTD loan applications(taking november as start of starting)
select count(id) AS PMTD_Total_loan_application from [dbo].[financial_loan]
where month(issue_date) = 11 and year(issue_date) = 2021

4.Funded Amount(fund given to customers)
select sum(loan_amount) AS MTD_Funded_amount from [dbo].[financial_loan]
where month(issue_date) = 11 and year(issue_date) = 2021

select sum(loan_amount) AS PMTD_Funded_amount from [dbo].[financial_loan]
where month(issue_date) = 12 and year(issue_date) = 2021

5.Total amount recieved
select sum(total_payment) AS MTD_Total_amount_recieved from [dbo].[financial_loan]
where month(issue_date) = 12 and year(issue_date) = 2021

6.Average Interest rate 
select round(avg(int_rate),4)*100 as Average_Interest_Rate from [dbo].[financial_loan]
where month(issue_date) = 12 and year(issue_date) = 2021

7.Average DTI
select Round(avg(dti),4)*100 AS Avg_DTI from [dbo].[financial_loan]
where month(issue_date) = 12 and year(issue_date) = 2021

8.Good Loan vs bad loan
select 
	COUNT(CASE WHEN loan_status = 'Fully Paid' or loan_status = 'Current' THEN id END) * 100
/
count(id) As good_loan_percentage
from [dbo].[financial_loan]

9.Good loan application

select COUNT(id) as good_loan_applications  from [dbo].[financial_loan]
 where loan_status = 'Fully Paid' or loan_status = 'Current' 

 10.Good Loan funded amount
 select sum(loan_amount) as good_loan_funded_amount from financial_loan
 where loan_status = 'Fully Paid' or loan_status = 'Current' 

 11.Good loan recieved amount
 select sum(total_payment) as good_loan_amount_recieved from financial_loan
 where loan_status = 'Fully Paid' or loan_status = 'Current'
 
 12.Bad loan percentage

select 
	(COUNT(CASE WHEN loan_status = 'Charged off' THEN id END) * 100.0) /
	COUNT (id) As bad_loan_percentage
from [dbo].[financial_loan]


13.Bad Loans applications
select COUNT(id) as bad_loan_applications  from [dbo].[financial_loan]
 where loan_status = 'Charged off' 

14.Bad Loan funded amount
 select sum(loan_amount) as bad_loan_funded_amount from financial_loan
 where loan_status = 'Charged off' 

 15.Bad_loan_amount_recieved
 select sum(total_payment) AS bad_loan_amount_recieved from  [dbo].[financial_loan]
 where loan_status = 'Charged off'

 16.Loan Status
 select 
	loan_status,
	COUNT(id) AS Total_loan_applications,
	SUM(total_payment) AS Total_Amount_Recieved,
	SUM(loan_amount) AS Total_Funded_Amount, 
	AVG(int_rate *100) AS Interest_rate,
	AVG(DTI*100) AS DTI
	from 
		[dbo].[financial_loan]
	group by 
	loan_status

16.MTD recieved and funded amount
Select
	  loan_status,
	  SUM(total_payment) AS MTD_Total_Amount_Recieved,
	  SUM(loan_amount) AS MTD_Total_funded_Amount
      FROM [dbo].[financial_loan]
	  where Month(issue_date) = 12
	  Group by loan_status


17.Monthly date by issue date 
select * FROM [BankLoanDB].[dbo].[financial_loan]
SELECT 
	MONTH(issue_date) AS Month_Munber, 
	DATENAME(MONTH, issue_date) AS Month_name, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY MONTH(issue_date), DATENAME(MONTH, issue_date)
ORDER BY MONTH(issue_date)

18.State wise distribution 

SELECT 
	address_state AS State, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY address_state
ORDER BY address_state


20.Term wise 
SELECT 
	term AS Term, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY term
ORDER BY term

21.Employee name to which loan is given

SELECT 
	emp_length AS Employee_Length, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY emp_length
ORDER BY emp_length

22.Purpose of disbursing the loan
SELECT 
	purpose AS PURPOSE, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY purpose
ORDER BY purpose

23.Loan Disbursed for home_ownership
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
GROUP BY home_ownership
ORDER BY home_ownership


24. Categorising home_ownership with grades 
SELECT 
	home_ownership AS Home_Ownership, 
	COUNT(id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM [BankLoanDB].[dbo].[financial_loan]
where grade = 'A' and address_state = 'CA'
GROUP BY home_ownership
ORDER BY home_ownership


25.