while(true)
    #вітання
    puts('Hello, enter a')
    #отримую значення, конвертую в цифру і присвоюю значення змінній
    a = gets().chomp().to_f()
    puts('enter b')
    b = gets().chomp().to_f()
    puts('enter c')
    c = gets().chomp().to_f()

    #перевіряю що значееня змінної "а" дорівнює "0" і вивожу помилку
    if(a == 0)
        puts('ERROR')
        #exit()
        next()
        #TODO після цього треба зупинити програму!
    end

    #вираховую значення дискримінанту
    d = ((b ** 2) - (4 * a * c))
    #вивожу значення дискримінанту
    puts(d)

    #якщо значення "Д" більше "0" то вираховую оба "Х"
    if(d > 0)
        #вираховую "Х1"
        x1 = ((-b + Math.sqrt(d)) / (2 * a))
        #вираховую "Х2"
        x2 = ((-b - Math.sqrt(d)) / (2 * a))
        puts('D = ' + d.to_s())
        puts('X1 = ' + x1.to_s())
        puts('X2 = ' + x2.to_s())

    #якщо значення "Д" дорівнює "0" то вираховую один "Х"
    elsif(d == 0)
        x1 = ((-b + 0) / (2 * a))
        x2 = ((-b - 0) / (2 * a))
        puts('D = ' + d.to_s())
        puts('X1 = ' + x1.to_s())
        puts('X2 = ' + x2.to_s())   

    #в інших випадках виводить цей текст
    else
        puts('D < 0')
    end
end