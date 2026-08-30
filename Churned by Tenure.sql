

WITH Totalcustomers AS 
(
SELECT Tenure,

COUNT(Tenure) AS Total_customers

FROM dbo.Churn_Modelling

GROUP BY Tenure
),

ChurnedCustomers AS 
(
SELECT Tenure,

COUNT(Tenure) AS Churned_customers

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY Tenure
)
SELECT T.Tenure,
Total_customers,
Churned_customers,
Churned_customers*100.0/Total_customers AS Churn_Rate

FROM Totalcustomers AS T

LEFT JOIN ChurnedCustomers AS C

ON T.Tenure = C.Tenure

ORDER BY Tenure ASC