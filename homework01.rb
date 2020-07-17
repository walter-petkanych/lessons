puts('Hello, enter the first size in meters')
size_one = gets().to_i

puts('enter the second size in meters')
size_second = gets().to_i

total = (size_one * size_second).to_s
puts('the size of your plot is ' + total + ' squre meters')