--3. Select all the orders for customer 1029 and display all columns
Select * From Customers C
Join Orders O
on C.id = O.Customerid
Where Customerid = 1029