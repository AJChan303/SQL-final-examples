Declare @index int = 0;
Declare @sum int = 0;

While @index <= 15
Begin
	Set @sum = @sum + @index;
	Set @index = @index + 1;
End
Print 'The sum of 1 to 15 is ' + Cast(@sum as nvarchar(10));