-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.

SELECT p."ProductName" AS "ProductName", c."CategoryName" as "CategoryName"
FROM "Product" AS "p"
JOIN "Category" AS "c"
ON p."CategoryId" = c."Id";

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.

SELECT o."Id" AS "Order Id",
s."CompanyName" AS "Shipper CompanyName"
from "Order" AS "o"
JOIN "Shipper" as "s"
on o."ShipVia" = s."Id"
WHERE o."OrderDate" < "2012-08-09";


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

SELECT p."ProductName" AS "Product",
o."quantity" AS "quantity"
 FROM "OrderDetail" AS "o"
 JOIN "Product" as "p"
 ON o."ProductId" = p."Id"
 WHERE o."OrderId" = 10251
 ORDER BY p."ProductName";

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All
-- columns should be labeled clearly. Displays 16,789 records.

SELECT o."Id" AS "OrderId",
 c."CompanyName" AS "CompanyName",
 e."LastName" AS "EmployeeLastName"
 FROM "Order" AS "o"
 left JOIN "Employee" AS "e"
 ON o."EmployeeId" = e."Id"
 JOIN "Customer" AS "c"
 ON o."CustomerId" = c."Id";
