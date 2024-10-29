USE northwind;

-- Write a query to list the product id, product name, and unit price of every product. This time, display them in ascending order by price.

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;

-- What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC;

/**What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price. 
If two or more have the same price, list those in  ascending order by product name. **/

SELECT ProductID, ProductName, UnitPrice, UnitsInStock
FROM Products
WHERE UnitsInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;

-- Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID.

SELECT COUNT(DISTINCT CustomerID) AS TotalDistinctCustomers
FROM Orders;

/**Write a query against the orders table that displays the total number of distinct customers who have placed orders, by customer ID,
 for each country where orders have been shipped.**/
 
SELECT ShipCountry, COUNT(DISTINCT CustomerID) AS DistinctCustomers
FROM Orders
GROUP BY ShipCountry;
 
-- What are the products that we carry where we have no units on hand, but 1 or more units of them are on backorder? Order them by product name.

SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0
AND UnitsOnOrder > 0
ORDER BY ProductName ASC;

-- List the distinct job titles in employees.

SELECT DISTINCT Title
FROM Employees;

-- What employees have a salary that is between $2000 and $2500? Order them by job title.

SELECT EmployeeID, FirstName, LastName, Title, Salary
FROM Employees
WHERE Salary BETWEEN 2000 AND 2500
ORDER BY Title ASC;

