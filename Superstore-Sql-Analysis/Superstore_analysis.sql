create database store;
select * from superstore_clean LIMIT 10; 
/* Top 10 cities by total sales */
select City, SUM(Sales) as Total_sales
from superstore_clean
group by City
order by Total_sales DESC;

/* Total profit by Category */
select Category, SUM(Profit) as Total_Profit
from superstore_clean
group by Category
order by Total_Profit DESC;


/* Monthly sales trend*/
SELECT DATE_FORMAT(`Order Date`, '%Y-%m') AS Month, SUM(Sales) AS Monthly_Sales
FROM Superstore_clean
GROUP BY Month
ORDER BY Month;

/*Most frequently ordered products*/
Select `Product Name`, count(*) as orders
from superstore_clean
group by `Product Name`
order by orders DESC;

/*Profit Vs Discount Analysis*/
SELECT Discount, ROUND(AVG(Profit), 2) AS Avg_Profit
FROM superstore_clean
GROUP BY Discount
ORDER BY Discount;




