puts('enter your name')
name = gets()
puts('happy birthday ' + name)

puts('what year is now?')
year = gets()
puts('what is the year you are boarned')
boarned = gets()
age = year.to_i - boarned.to_i
puts('you are ' + age.to_s)