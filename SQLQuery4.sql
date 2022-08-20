USE Northwind

-- Targil 1

SELECT p.ProductName,p.QuantityPerUnit FROM Products p

-- Targil 2

SELECT p.ProductID,p.ProductName FROM Products p
WHERE p.Discontinued = 'False'

-- Targil 3

SELECT p.ProductID,p.ProductName FROM Products p
WHERE p.Discontinued = 'True'

-- Targil 4

SELECT p.ProductName,p.UnitPrice FROM Products p
ORDER BY p.UnitPrice DESC

-- Targil 5

SELECT p.ProductID,p.ProductName,p.UnitPrice FROM Products p
WHERE p.Discontinued = 'False' AND p.UnitPrice < 20

-- Targil 6

SELECT p.ProductID,p.ProductName,p.UnitPrice FROM Products p
WHERE p.UnitPrice BETWEEN 15 AND 25

-- Targil 7

SELECT p.ProductName,p.UnitPrice FROM Products p
WHERE p.UnitPrice > (SELECT AVG(pa.UnitPrice) AS Average FROM Products pa)

-- Targil 8

SELECT TOP 10(p.UnitPrice),p.ProductName FROM Products p
ORDER BY p.UnitPrice DESC

-- Targil 9

SELECT COUNT(p.ProductName) AS CheckStatus FROM Products p
GROUP BY p.Discontinued

-- Targil 10

SELECT p.ProductName,p.UnitsOnOrder,p.UnitsInStock FROM Products p
WHERE p.UnitsInStock < p.UnitsOnOrder