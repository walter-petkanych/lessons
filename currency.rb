puts('how much for one dollar?')
dollar_price = gets().to_i()

puts('what is the price')
price = gets().to_i()

total = (dollar_price * price).to_s()
puts('we need to pay ' + total)