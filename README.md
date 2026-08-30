# Customer Churn Analysis

-----

## Table of Contents

- [Project Overview](#project-overview)
- [Business Problem](#business-problem)
- [Business Objective](#business-objective)
- [Business Question](#business-question)
- [Dataset Description](#dataset-description)
- [Tools & Technologies Used](#tools--technologies--used)
- [Data Preparation & ETL](#data-preparation--etl)
- [Dashboard Overview](#dashboard-overview)
- [Key Insights](#key-insights)
- [Recommendations](#recommendations)
- [Conclusion](#conclusion)


## Project Overview
Customer retention is important for banks because losing customers can affect long-term business performance. This project analyzes customer churn data to identify the customer segments with the highest churn rates and understand the patterns associated with customer attrition.
Using SQL Server, I analyzed customer data across factors such as age, gender, activity status, number of products, tenure, and geography. Power BI was then used to transform the analysis into an interactive dashboard that highlights key churn metrics and allows users to explore different customer segments.
The analysis provides insights into high-risk customer groups and supports recommendations aimed at strengthening customer relationships and improving retention.

-----

## Business Problem
Customer churn is a key challenge for banks because losing customers can affect business performance and long-term customer relationships. However, without understanding which customers are more likely to leave, it can be difficult to develop effective retention strategies.

-----

## Business Objective 

The objectives of this project are to:
- Analyze customer churn patterns across different customer characteristics. 
- Identify customer segments with higher churn rates. 
- Examine how factors such as age, gender, activity status, number of products, tenure, and geography relate to customer churn. 
- Develop an interactive Power BI dashboard to monitor and explore churn patterns. 
- Provide actionable recommendations that can help the bank strengthen customer retention.

------

## Business Question

SQL Server was used to explore the dataset, validate business requirements, and answer key business questions before developing the Power BI dashboards. 
The Business questions answered during the analysis Include:

- Which age group has the highest customer churn rate? 
- How does the number of products held by customers relate to churn? 
- Does customer churn vary by gender? 
- How does customer activity status relate to churn? 
- How does customer tenure relate to churn? 
- Which geography has the highest customer churn rate? 



------

## Dataset Description

The dataset used in this project contains Banking Customer Information designed for Churn analysis. It includes customer’s information used to analyze customer churn patterns across different customer characteristics. 

### Dataset Source
The dataset was obtained from Kaggle and is publicly available for learning, analysis, and portfolio projects.

**Source**: https://www.kaggle.com/datasets/shantanudhakadd/bank-customer-churn-prediction

### Dataset Features

The dataset includes the following key attributes:
- Customer ID
- Credit Score
- Geography
- Age
- No of Products
- Gender
- Tenure
- Balance
- Estimated Salary
- IsActiveMember
- Exited

The  **Exited** column serves as the target variable, where:
- 1 = Exited
- 0 = Stayed

The dataset was explored and analyzed using **SQL Server** before being imported into **Power BI** for data modeling, DAX calculations, and interactive dashboard development.

---------

## Tools & Technologies Used
The following tools and technologies were used throughout this project
| Tool | Purpose |
|------|---------|
|**SQL Server** | Explore and analyze the customer churn data, Calculate churn rates across different customer segments, Investigate relationships between customer characteristics and churn, and Validate the findings used in the dashboard |
|**Power BI** | Create the customer churn KPIs, Build interactive visuals, Add slicers for customer segmentation, and Develop the final interactive churn dashboard |
|**Power Query** | Data transformation, and preparation within Power BI |
|**Power Point** | Wireframe, and Design Planning |


---------

 ## Data Preparation & ETL
 
The customer churn dataset was prepared before analysis and visualization. The preparation process ensured that the data was suitable for SQL analysis and Power BI reporting.

### Data Preparation Process
- Data import: The customer churn dataset was imported into SQL Server for analysis.
- Data cleaning: The dataset was reviewed to ensure the information used for analysis was consistent and suitable for calculations.
- Data transformation: Relevant customer attributes were prepared for analysis, including age groups and activity status.
- Data validation: SQL queries were used to check customer counts, churned customers, and churn rates across different segments.
- Power BI preparation: The prepared data was connected to Power BI, where the required measures and dashboard visuals were created.
  
**ETL Flow**: 
Raw Customer Data → Cleaning & Transformation → SQL Analysis & Validation → Power BI → Interactive Dashboard
This section explains how the data moved from the original dataset to the final dashboard without going too deep into technical details.

------

## Dashboard Overview

The Power BI dashboard was designed to provide a clear overview of customer churn and allow users to explore churn patterns across different customer segments.

### Dashboard Components:

#### Key Performance Indicators (KPIs)
The dashboard includes four main KPIs:
- Total Customers 
- Churned Customers 
- Stayed Customers 
- Churn Rate
These provide a quick summary of the bank's overall customer retention performance.

#### Interactive Filters:
Users can filter the dashboard by:
- Age Group 
-	Gender 
- Geography 
- Activity Status
This allows users to focus on specific customer segments and compare their churn patterns.

#### Churn Analysis Visuals:
The dashboard contains six visuals examining:
- Churn Rate by Age Group
- Churn Rate by Number of Products
- Churn Rate by Gender
- Churn Rate by Activity Status
- Churned Customers by Tenure
- Churn Rate by Geography 

These visuals provide a view of where customer churn is concentrated and which customer segments require greater retention attention.

### Dashboard Preview 
<img width="1358" height="753" alt="Customer Churn Dashboard" src="https://github.com/user-attachments/assets/4ba1de8c-2b63-41c5-b985-917dfea5e197" />

--------

## Key Insights

The analysis identified several customer segments with notably different churn patterns.

- Customers aged **50–69** recorded the highest churn rate at **49.76%**, significantly higher than all other age groups
- Customers with 3–4 products recorded the highest churn rates. However, these groups represent relatively few customers compared with customers holding 1–2 products, so the rates should be interpreted with this context in mind
- Female customers recorded a higher churn rate than male customers, and this difference remained across both active and inactive customers. Female customers with multiple products also showed particularly high churn rates, although some of these groups contained relatively few customers
- Inactive customers recorded a **26.85%** churn rate, compared with **14.27%** among active customers, indicating that customer engagement is associated with retention
- New customers recorded the highest churn rate at **23.00%**, suggesting that the early stage of the customer relationship is an important period for retention
- Germany recorded the highest churn rate at **32.44%**, nearly twice the churn rate observed in Spain **(16.67%)** and France **(16.15%)**

The analysis shows that churn is concentrated among particular customer segments, with age, activity status, product ownership, gender, tenure, and geography revealing different levels of customer retention risk.

--------

## Recommendations
Based on the findings from the analysis, the following actions are recommended:

#### Strengthen Relationships with High-Risk Age Groups:
The bank should pay closer attention to customers aged **50–69** by understanding their needs and providing a stronger customer experience to improve retention.

#### Monitor Customers with Multiple Products:
Customers holding 3–4 products should receive closer attention because they recorded the highest churn rates. The bank should ensure that these customers' product needs are being met and provide appropriate support.

#### Improve Engagement with Female Customers:
The bank should strengthen relationships with female customers, particularly inactive female customers and those with multiple products, by better understanding their needs and engagement patterns.

#### Re-engage Inactive Customers:
The bank should develop strategies to increase engagement among inactive customers through regular communication, personalized offers, and relevant banking services.

#### Strengthen Early Customer Retention:
Since new customers recorded the highest churn rate across tenure groups, the bank should improve onboarding and early-stage engagement to establish stronger relationships from the beginning.

#### Develop Targeted Strategies for Germany:
Germany recorded the highest geographical churn rate at **32.44%**. The bank should pay closer attention to customers in this market and develop retention strategies based on their specific needs and customer experience.

- Overall Recommendation:
The bank should adopt a targeted retention approach rather than applying the same strategy to all customers. Priority should be given to customer segments showing higher observed churn, while strengthening customer relationships, engagement, and understanding of customer needs.

-------

## Conclusion

This project analyzed customer churn patterns to identify the customer segments that may require greater retention attention. The analysis found that churn varies across different customer characteristics, with customers aged **50–69** recording the highest churn rate at **49.76%**. Inactive customers also recorded a considerably higher churn rate than active customers, while female customers showed higher churn than male customers across both activity levels. Customers with 3–4 products recorded exceptionally high churn rates, although these groups represented relatively few customers. Germany also recorded the highest geographical churn rate at **32.44%**, while new customers had the highest churn rate across the tenure groups at **23.00%**.
Overall, the findings show the importance of understanding customers at a segment level when addressing churn. The recommendations provided focus on strengthening customer relationships, improving engagement, understanding customer needs, and prioritizing segments with higher observed churn.








