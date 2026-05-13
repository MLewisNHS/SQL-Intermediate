SELECT
    od.Quantity
    ,od.UnitPrice
    ,od.Quantity
    ,od.UnitPrice * od.Quantity AS LineTotal    
    ,o.OrderDate
    ,c.CompanyName
    ,c.ContactName
    ,p.ProductName
    ,ca.CategoryName
FROM
    [Order Details] od
    LEFT JOIN Orders o ON od.OrderId = o.OrderId
    LEFT JOIN Customers c ON o.CustomerID = c.CustomerID
    LEFT JOIN Products p ON od.ProductID = p.ProductID
    LEFT JOIN Categories ca ON p.CategoryID = ca.CategoryID