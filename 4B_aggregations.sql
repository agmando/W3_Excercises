USE northwind;


-- What is the price of the cheapest item that Northwind sells?

SELECT MIN(UnitPrice) AS CheapestItemPrice
FROM Products;

-- What is the average price of items that Northwind sells?

SELECT AVG(UnitPrice) AS AveragePrice
FROM Products;

-- What is the price of the most expensive item that Northwind sells?

SELECT MAX(UnitPrice) AS MostExpensiveItemPrice
FROM Products;

-- What is the sum of all the employee's salaries?

SELECT SUM(Salary) AS TotalSalary
FROM Employees;

-- Which employee makes the highest salary, and which employee makes the lowest?

SELECT FirstName, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees)
OR salary = (SELECT MIN(salary) FROM employees);

-- What is the supplier ID of each supplier and the number of items they supply? (You can answer this query by only looking at the products table.)

SELECT SupplierID, COUNT(ProductID) AS NumberOfProducts
FROM Products
GROUP BY SupplierID;

-- What is the category ID of each category and the average price of each item in the category? (You can answer this query by only looking at the products table.)

SELECT CategoryID, AVG(UnitPrice) AS AveragePrice
FROM Products
GROUP BY CategoryID;

/** For suppliers that provide at least 5 items to Northwind, what is the supplier ID of each supplier and the number of items they supply? (Again, you can answer this query by
only looking at the products table.) **/

SELECT SupplierID, COUNT(ProductID) AS NumberOfProducts
FROM Products
GROUP BY SupplierID
HAVING COUNT(ProductID) >= 5;

/**List the product id, product name, and inventory value (calculated by multiplying unit
price by the number of units on hand). Sort the results in descending order by value. If
two or more have the same value, order by product name.**/

SELECT ProductID, ProductName, (UnitPrice * UnitsInStock) AS InventoryValue
FROM Products
ORDER BY InventoryValue DESC, ProductName ASC;


