WITH TotalCustomers AS
(
    SELECT
        Tenure,
        COUNT(*) AS Total_customers
    FROM dbo.Churn_Modelling
    WHERE Age BETWEEN 50 AND 69
    GROUP BY Tenure
),

ChurnedCustomers AS
(
    SELECT
        Tenure,
        COUNT(*) AS Churned_customers
    FROM dbo.Churn_Modelling
    WHERE Age BETWEEN 50 AND 69
      AND Exited = 1
    GROUP BY Tenure
)

SELECT
    T.Tenure,
    T.Total_customers,
    C.Churned_customers,
    C.Churned_customers * 100.0 / T.Total_customers AS Churn_rate
FROM TotalCustomers AS T
LEFT JOIN ChurnedCustomers AS C
    ON T.Tenure = C.Tenure
ORDER BY T.Tenure;