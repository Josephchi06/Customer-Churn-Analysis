WITH Totalcustomer AS
(
SELECT Geography,
COUNT(*) AS Total_customer

FROM dbo.Churn_Modelling

GROUP BY Geography
),
ChurnedCustomer AS 
(
SELECT Geography,
COUNT(*) AS Churned_customer

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY Geography
)
SELECT
T.Geography,
Total_customer,
Churned_customer,
Churned_customer *100.0/Total_customer AS Churned_rate

FROM Totalcustomer AS T

LEFT JOIN ChurnedCustomer AS C

ON T.Geography=C.Geography