puts('Hello, enter expenses, end with 0')
expenses = [] #створюю змінну пустий масив

while(true) #вічний цикл
    expens = gets().to_f() #отримую значення і записую в змінну
    break if(expens == 0) #зупиняю цикл якщо значення змінної = 0
    expenses.push(expens) #додаю в масив введене значення
end
index = 0
sum = 0

while(index < expenses.length()) #поки індекс < довжини масива
    #p(expenses[index])
    sum = sum + expenses[index] #додаю значення елемента масива за індексом
    index = index + 1 #збільшую індекс
end

puts('Total ' + sum.to_s()) #вивожу загальну суму
puts('Average ' + (sum / expenses.length()).to_s()) #вивожу середню суму