Use sample_superstore;

/* 1.How many registered customer during 2014-2017? */
SELECT COUNT(DISTINCT(`Customer ID`)) no_of_registered_customer FROM sample_superstore;

/* 2.Calculate Frequency of each order id by each customer Name in descending order. */
SELECT `Order ID`,`Customer Name`, COUNT(`Order ID`) `Total Order ID` FROM sample_superstore
GROUP BY `Order ID`
ORDER BY COUNT(`Order ID`) DESC;

/* 3.Calculate Totals Sales of each customer name? */
SELECT `Customer Name` , sum(Sales) `Total Sales` FROM sample_superstore
GROUP BY `Customer Name`;

/* 4.Display No of Customers in each region in descending order. */
SELECT Region, COUNT(`Customer ID`) no_of_customers FROM sample_superstore
GROUP BY Region
ORDER BY COUNT(`Customer ID`) DESC;

/* 5.Find Sum Total Sales of Superstore */
SELECT  sum(Sales) `Total Sales` FROM sample_superstore;

/* 6.Find a region having maximum number of customers? */
SELECT Region, COUNT(`Customer ID`) max_no_of_customers FROM sample_superstore
GROUP BY Region
ORDER BY COUNT(`Customer ID`) DESC
LIMIT 1;

/* 7.Display the records for customers who live in state California and postal code 90032? */
SELECT *  FROM sample_superstore
WHERE State = 'California' AND `Postal Code` = 90032
GROUP BY `Customer Name`;



