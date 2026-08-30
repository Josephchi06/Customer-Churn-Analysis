WITH Totalcustomers AS 
(
SELECT NumOfProducts,

COUNT(NumOfProducts) AS Total_customers

FROM dbo.Churn_Modelling

GROUP BY NumOfProducts
),

ChurnedCustomers AS 
(
SELECT NumOfProducts,

COUNT(NumOfProducts) AS Churned_customers

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY NumOfProducts
)
SELECT T.NumOfProducts,
Total_customers,
Churned_customers,
ROUND(Churned_customers*100,2)/Total_customers AS Churn_Rate

FROM Totalcustomers AS T

LEFT JOIN ChurnedCustomers AS C

ON T.NumOfProducts = C.NumOfProducts

ORDER BY NumOfProducts ASC