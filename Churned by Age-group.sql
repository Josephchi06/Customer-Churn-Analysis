WITH Churnedcustomer AS 
(
SELECT COUNT(Exited) AS Churned_customer,

CASE
    WHEN Age BETWEEN 18 AND 29 THEN '18-29'
    WHEN Age BETWEEN 30 AND 49 THEN '30-49'
    WHEN Age BETWEEN 50 AND 69 THEN '50-69'
    WHEN Age >= 70 THEN '70+'
END AS Age_group

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY CASE
    WHEN Age BETWEEN 18 AND 29 THEN '18-29'
    WHEN Age BETWEEN 30 AND 49 THEN '30-49'
    WHEN Age BETWEEN 50 AND 69 THEN '50-69'
    WHEN Age >= 70 THEN '70+'
END
),
Totalcustomer AS
(
SELECT COUNT(*) AS Total_customer,

CASE
    WHEN Age BETWEEN 18 AND 29 THEN '18-29'
    WHEN Age BETWEEN 30 AND 49 THEN '30-49'
    WHEN Age BETWEEN 50 AND 69 THEN '50-69'
    WHEN Age >= 70 THEN '70+'
END AS Age_group

FROM dbo.Churn_Modelling

GROUP BY CASE
    WHEN Age BETWEEN 18 AND 29 THEN '18-29'
    WHEN Age BETWEEN 30 AND 49 THEN '30-49'
    WHEN Age BETWEEN 50 AND 69 THEN '50-69'
    WHEN Age >= 70 THEN '70+'
END
)
SELECT C.Age_group,
Total_customer,
Churned_customer,
Churned_customer * 100.0/Total_customer AS Churn_rate

FROM Churnedcustomer AS C

LEFT JOIN Totalcustomer AS T

ON C.Age_group = T.Age_group
