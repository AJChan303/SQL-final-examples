Select RL.ID, R.Description, R.Status, U.Username, P.Name, RL.Quantity, P.Price, (RL.Quantity * P.Price) as 'Subtotal'

	from Requests R
	join RequestLines RL
		on R.id = RL.RequestID
	Join Products P
	 on RL.ProductID = P.Id
	Join Users U
		on U.id = R.Userid
	Where R.id = 1