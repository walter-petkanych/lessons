puts('Enter the maximum value')
value = gets().chomp().to_i()

sum = 1
f1 = 0
f2 = 1

while(sum <= value)
    if(sum <= 0)
        puts('ERROR')
        exit
    elsif(value <= 2)
        puts('ERROR the number entered is too small!')
        exit
    end 
    puts(sum)
    sum = (f1 + f2)
    f1 = f2
    f2 = sum
end

