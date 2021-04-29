def yourMethod(names) # визначаю метод yourMethod
    result = '' # створив пусту змінну
    index = 0 # змінна з значенням 0
    while(index < names.length()) # поки ідекс менше довжини масива виконуєм
        result += "#{1 + index} #{names[index]}" # шаблонна строка (template string) дивитись файл template_string.rb
        #result += (1 + index).to_s() + ' ' + names[index] # додаю до змінної result 1 + значення з змінної index, перевожу в стрінгу, додаю пробіл та додаю елемент з масива за ідексом
        #result += (1 + index)... це скорочення result = result + (1 + index)...
        if(index + 1 < names.length()) # якщо index +1 < довжини масива names
            result +=  "\n" # додаю перенесення на нову строку, перенесення обовязково в двійних кавичках
        end   
        index = index + 1       
    end
    return result # повернути змінну result
end

#------------------------------------------------ 

names = ['Walter', 'Marussya', 'Viktor']
expectedResult = "1 Walter\n2 Marussya\n3 Viktor"

if(expectedResult == yourMethod(names)) 
    puts('Good job')
else
    puts('Something is not OK')
    p(yourMethod(names))
    p(expectedResult)
end