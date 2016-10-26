1.  SELECT CategoryName 
	FROM Categories

2.  SELECT ContactName, CustomerID, CompanyName, City 
	FROM Customers
	WHERE city = 'London'

3.  SELECT *
	FROM Suppliers
	WHERE ContactTitle IN ('Sales Representative', 'Marketing Manager') and Fax IS NOT NULL

4.  SELECT CustomerID, RequiredDate, Freight
	FROM Orders 
	WHERE RequiredDate between '1-Jan-1997' and '1-Jan-1998' and Freight < 100

5.  SELECT CompanyName, ContactName, Country
	FROM Customers 
	WHERE Country IN ('Mexico','Germany', 'Sweden')

6.  SELECT count (Discontinued)
	FROM Products

7.  SELECT CategoryName, Description
	FROM Categories
	WHERE CategoryName LIKE 'Co%'

8.	SELECT CompanyName, City, PostalCode, Country
	FROM Suppliers
	WHERE Address LIKE '%rue%'
	ORDER BY CompanyName ASC

9.	SELECT ProductID, Quantity
	FROM [Order Details]

10.	SELECT c.ContactName, c.Address, s.CompanyName
	FROM Customers c, Shippers s
	WHERE s.CompanyName = 'Speedy Express'

11. SELECT CompanyName,ContactName, ContactTitle, Region
	FROM Suppliers

12.	SELECT p.ProductName, c.CategoryName
	FROM Products p, Categories c
	WHERE c.CategoryName = 'Condiments'

13. SELECT c.ContactName
	FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
	WHERE o.CustomerID IS NULL

14. INSERT INTO Shippers (CompanyName)
	VALUES ('Amazon')

15. UPDATE Shippers
	SET CompanyName = 'Amazon Prime Shipping'
	WHERE CompanyName = 'Amazon'

16.	SELECT s.CompanyName, ROUND(SUM(o.Freight), 0) 
	AS AverageTotalFreight
	FROM Orders o, Shippers s
	GROUP BY s.CompanyName

17.	SELECT LastName +', ' + FirstName 
	AS DisplayName
	FROM Employees

18.	INSERT INTO Customers(CustomerID, ContactName,CompanyName)
	VALUES ('HAD11','Hadjir Mashiri','HadjirInc')
	INSERT INTO Orders(CustomerID, ShipName)
	VALUES ('HAD11', 'Grandmas Boysenberry Spread')

19. DELETE FROM Customers
	WHERE CustomerID = 'HAD11'
	DELETE FROM Orders
	WHERE CustomerID = 'HAD11'

20. SELECT ProductName, UnitsInStock
	FROM Products
	WHERE UnitsInStock > 100
