SELECT CustomerName, sum(Price * Quantity) as sales
FROM OrderDetails as OD
join Products as P
on OD.ProductID = P.ProductID
join Orders as O
on OD.OrderID = O.OrderID
join Customers as C
on O.CustomerID = C.CustomerID
group by CustomerName
having sales >= 10000