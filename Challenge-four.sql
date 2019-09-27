  --Select order with id of 2022 displaying:
   -- a. Order Date
   -- b. Customer name
   -- c. Customer city
   -- d. Customer state
   -- e. All the OrderLines for that order
Select * from Customers;
Select * from orders;
Select * from OrderLines;

Select Name, City, State, OrderID, ProductID, Quantity
From Customers C
Join Orders O
on C.id = O.Customerid
Join Orderlines L
on o.id = L.orderid
Where L.Orderid =2022;