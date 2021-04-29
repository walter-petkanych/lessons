
index = 1
age_sum = 0
times = 6

while(index <= times)
    puts('Enter age ' + index.to_s())
    index = (index + 1)
    age_sum = age_sum + gets().chomp().to_f()

end

puts(age_sum / times)