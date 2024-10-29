USE northwind;

-- Write a query to list the product id, product name, and unit price of every product that Northwind sells.

SELECT ProductID, ProductName, UnitPrice
FROM Products;


-- What are the products that we carry where the unit price is $7.50 or less?

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice <= 7.50;


-- What are the products that we carry where we have no units on hand, but 1 or more units are on backorder?

SELECT ProductID, ProductName, UnitsInStock, UnitsOnOrder
FROM Products
WHERE UnitsInStock = 0
AND UnitsOnOrder > 0;


-- Examine the products table. How does it identify the type (category) of each item sold? Write a query to list all the seafood items we carry.

SELECT ProductID, ProductName
FROM Products
WHERE CategoryID = (
SELECT CategoryID
FROM Categories
WHERE CategoryName = 'Seafood'
);


-- What employees have "manager" in their titles?

SELECT EmployeeID, FirstName, LastName, Title
FROM Employees
WHERE Title LIKE '%Manager%';


-- Examine the products table. How do you know what supplier supplies each product?Write a query to list all of the items that "Tokyo Traders" supplies to Northwind

SELECT ProductID, ProductName
FROM Products
WHERE SupplierID = (
SELECT SupplierID
FROM Suppliers
WHERE CompanyName = 'Tokyo Traders'
);


