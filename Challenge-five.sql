--5. Select detail of order 2031 displaying:
    --a. Order Id
   -- b. Customer name
   -- c. OrderLine Product name
  --  d. OrderLine Quantity
   -- e. OrderLine Product Price
Select L.OrderID, C.Name 'Company', P.name 'Product name', L.Quantity, Format(P.Price, 'c') as Price
From Customers c
Join Orders O
on C.id = O.Customerid
Join OrderLines L
on O.id = L.Orderid
Join Products P
on P.id = L.Productid
Where l.Orderid = 2031;




