SELECT COUNT(IsActiveMember) AS Active_member

FROM dbo.Churn_Modelling

WHERE IsActiveMember = 1

SELECT COUNT(IsActiveMember) AS Non_Active_member

FROM dbo.Churn_Modelling

WHERE IsActiveMember = 0


WITH Churnedcustomer AS 
(
SELECT COUNT(Exited) AS Churned_customer,

CASE
    WHEN IsActiveMember = 1 THEN 'Áctive'
    WHEN IsActiveMember = 0 THEN 'Non-Active'
END AS Active_Status

FROM dbo.Churn_Modelling

WHERE Exited = 1

GROUP BY CASE
    WHEN IsActiveMember = 1 THEN 'Áctive'
    WHEN IsActiveMember = 0 THEN 'Non-Active'
END 
),
Totalcustomer AS
(
SELECT COUNT(*) AS Total_customer,

CASE
    WHEN IsActiveMember = 1 THEN 'Áctive'
    WHEN IsActiveMember = 0 THEN 'Non-Active'
END AS Active_Status

FROM dbo.Churn_Modelling

GROUP BY CASE
    WHEN IsActiveMember = 1 THEN 'Active'
    WHEN IsActiveMember = 0 THEN 'Non-Active'
END
)
SELECT C.Active_Status,
Total_customer,
Churned_customer,
Churned_customer * 100.0/Total_customer AS Churn_rate

FROM Churnedcustomer AS C

LEFT JOIN Totalcustomer AS T

ON C.Active_Status = T.Active_Status

