puts('Welcome, enter first name (user "X")')
firstName = gets().chomp()
puts('Enter second name (user "O")')
secondName = gets().chomp()
index = 0
variants = ['a1=X', 'a1=O', 'a2', 'a2=O', 'a3=X', 'a3=O', 'b1=X', 'b1=O', 'b2=X', 'b2=O', 'b3=X', 'b3=O', 'c1=X', 'c1=O', 'c1=X', 'c2=O', 'c2=X', 'c3=O']
moves = ['a1', 'a2', 'a3', ' b1', 'b2', 'b3', 'c1', 'c2', 'c3']
field = ['  A B C', '1 ', '2 ', '3 ', '|']