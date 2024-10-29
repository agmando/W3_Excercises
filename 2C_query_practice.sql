USE northwind;

-- List the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
ORDER BY c.CategoryName ASC, p.ProductName ASC;


-- List the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName AS SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName ASC;


-- List the product id, product name, unit price, category name, and supplier name of every product. Order by product name.

SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName, s.CompanyName AS SupplierName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
JOIN Suppliers s ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName ASC;


-- List the order id, ship name, ship address, and shipping company name of every order that shipped to Germany.

SELECT o.OrderID, o.ShipName, o.ShipAddress, sh.CompanyName AS ShippingCompanyName
FROM Orders o
JOIN Shippers sh ON o.ShipVia = sh.ShipperID
WHERE o.ShipCountry = 'Germany';


-- List the order id, order date, ship name, ship address of all orders that ordered "Sasquatch Ale"

SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';

