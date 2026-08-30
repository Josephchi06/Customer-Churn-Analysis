WITH Totalcustomer AS
(
SELECT Gender,
COUNT(*) AS Total_customer

FROM dbo.Churn_Modelling

GROUP BY Gender
),
ChurnedCustomer AS 
(
SELECT Gender,
COUNT(*) AS Churned_customer

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY Gender
)
SELECT
T.Gender,
Total_customer,
Churned_customer,
Churned_customer *100.0/Total_customer AS Churned_rate

FROM Totalcustomer AS T

LEFT JOIN ChurnedCustomer AS C

ON T.Gender=C.Gender