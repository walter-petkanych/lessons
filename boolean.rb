puts('Скільти тобі років')
age = gets().to_i()
puts('Чи є хронічні хвороби "yes/no"')
has_sycnes = (gets().chomp() == 'yes') #тут дужки не обовязкові
puts('Чи є гроші "yes/no"')
has_money = gets().chomp() == 'yes'
puts('який зараз рік?')
year = gets().to_i()

is_age_ok = age >= 18
is_year_ok = year <= 1985

if(is_age_ok && has_money && (!has_sycnes || is_year_ok)
    puts('Ви можете курити!')
else
    puts('Вам не можна курити!')
    
    puts('Недостатній вік') if(!is_age_ok)
    puts('Не ті часи') if(has_sycnes && !is_year_ok)
    puts('Немає грошей') if(!has_money)
    puts('У вас є хронічні захварювання') if(has_sycnes)
end