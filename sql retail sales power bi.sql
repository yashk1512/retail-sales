use majorprojects;

--Total sales
SELECT 
    COUNT(DISTINCT [Order ID]) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales
    FROM Superstore;

--total profit
SELECT  
    COUNT(DISTINCT [Order ID] ) AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM Superstore;



SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM Superstore
GROUP BY Category;




SELECT 
    [Product Name],
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM
    Superstore
GROUP BY
    [Product Name]
ORDER BY
    Total_Sales DESC
 


SELECT 
    ROUND(SUM(Profit) / SUM(Sales) * 100, 2) AS Profit_Margin_Percentage
FROM Superstore;



SELECT 
    [Ship Mode],
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM Superstore
GROUP BY  [Ship Mode];







select  * from Superstore