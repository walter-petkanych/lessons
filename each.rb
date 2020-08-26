array = ['Walter', 'Marussya', 'Viktor']

index = 0
while(index < array.length())

    puts(array[index])
    index = index + 1
end
#each перебирає елементи по черзі
array.each do |element|
    puts(element)
end
array.each {|element| puts(element)} # це скорочення де фігурні дужки використовуються замість do та end якщо все влазить в одну строку

#map видозмінює кожен елемент масива
newarray = array.map do |element|
    'Hello ' + element
end
p(newarray)
