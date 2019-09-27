Select Cast(RL.ID as char) as 'Id', R.Description, R.Status, U.Username, P.Name, RL.Quantity, Cast(P.Price as nvarchar(10)) as 'Price', (RL.Quantity * P.Price) as 'Subtotal'

	from Requests R
	join RequestLines RL
		on R.id = RL.RequestID
	Join Products P
	 on RL.ProductID = P.Id
	Join Users U
		on U.id = R.Userid
	Where R.id = 1
union
Select '', '', '', '', '', '', 'Total:', Sum(Rl.Quantity * P.Price) As 'Total'
	from Requests R
	join RequestLines RL
		on R.id = RL.RequestID
	Join Products P
	 on RL.ProductID = P.Id
	Join Users U
		on U.id = R.Userid
		Where R.id = 1
	Group by r.Id, R. Description
	gorder by id desc