WITH Totalcustomers AS
(
SELECT
IsActiveMember,
COUNT(*) AS Total_customers

FROM dbo.Churn_Modelling

WHERE Age BETWEEN 50 AND 69

GROUP BY IsActiveMember
)
,Churnedcustomers AS 

(
SELECT
IsActiveMember,
COUNT(*) AS Churned_customers

FROM dbo.Churn_Modelling

WHERE Age BETWEEN 50 AND 69 AND Exited = 1

GROUP BY IsActiveMember
)

SELECT
T.IsActiveMember,
Total_customers,
Churned_customers,
Churned_customers * 100.0/Total_customers AS Churned_rate

FROM Totalcustomers AS T

LEFT JOIN Churnedcustomers AS C

ON T.IsActiveMember=C.IsActiveMember

