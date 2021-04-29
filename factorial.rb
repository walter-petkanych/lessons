puts('Enter a value')
value = gets().chomp().to_i()

sum = 1
index = 0

while(index < value)
    index = index + 1  
    sum = (index * sum)
end

puts('Your factorial = ' + sum.to_s())