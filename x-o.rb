puts('Welcome, enter first name (user "X")')
firstName = gets().chomp()
puts('Enter second name (user "O")')
secondName = gets().chomp()

index = 0
result = ' '
move = ''
user = 1
a1 = '_'
a2 = '_'
a3 = ' '
b1 = '_'
b2 = '_'
b3 = ' '
c1 = '_'
c2 = '_'
c3 = ' '
winner1 = ['XXX']
winner2 = ['000']
#plaingField = ['  A B C', '1 _|_|_', '2 _|_|_', '3  | | ']
#plaingField = pF
pF = ['  A B C', '1 ', '2 ', '3 ', '|']
pf2 = []

puts('Game started')

while(index <= 6)
    result = (pF[0] + "\n" + pF[1] + a1 + pF[4] + b1 + pF[4] + c1 + "\n" + pF[2] +a2 + pF[4] + b2 + pF[4] + c2 + "\n" + pF[3] +a3 + pF[4] + b3 + pF[4] + c3)
    #result += "#{pF[0]} "\n" #{pF[1]} #{a1} #{pF[4]} #{b1} #{pF[4]} #{c1}"
    puts(result)
    
    if(user == 1)
        puts(firstName + ' make your move!')
    elsif(user == 2)
        puts(secondName + ' make your move!')
    end
    
    move = gets().chomp().to_s()
    pf2.push(move)
    
    print(pf2)

    wins1 = a1 + a2 + a3
    winner1.push(wins1)
    wins2 = b1 + b2 + b3
    winner1.push(wins2)
    wins3 = c1 + c2 + c3
    winner1.push(wins3)
    wins4 = a1 + b2 + c3
    winner1.push(wins4)
    wins5 = a3 + b2 + c1
    winner1.push(wins5)

    if(user == 1)
        if(move == 'a1')
            a1 = 'X'
            user = user + 1
        elsif(move == 'a2')
            a2 = 'X'
            user = user + 1
        elsif(move == 'a3')
            a3 = 'X'
            user = user + 1
        elsif(move == 'b1')
            b1 = 'X'
            user = user + 1
        elsif(move == 'b2')
            b2 = 'X'
            user = user + 1
        elsif(move == 'b2')
            b2 = 'X'
            user = user + 1
        elsif(move == 'b3')
            b3 = 'X'
            user = user + 1
        elsif(move == 'c1')
            c1 = 'X'
            user = user + 1
        elsif(move == 'c2')
            c2 = 'X'
            user = user + 1
        elsif(move == 'c3')
            c3 = 'X'
            user = user + 1
        end
        #if((a1 && a2 && a3) || (b1 && b2 && b3) || (c1 && c2 && c3) || (a1 && b2 && c3) || (a3 && b2 && c1) == 'X')
        if(winner1[1] == winner1[0] || winner1[2] == winner1[0] || winner1[3] == winner1[0] || winner1[4] == winner1[0] || winner1[5] == winner1[0])
            #puts(firstName + ' win!')
            #exit()
       end
    elsif(user == 2)
        if(move == 'a1')
            a1 = '0'
            user = user - 1
        elsif(move == 'a2')
            a2 = '0'
            user = user - 1
        elsif(move == 'a3')
            a3 = '0'
            user = user - 1
        elsif(move == 'b1')
            b1 = '0'
            user = user - 1
        elsif(move == 'b2')
            b2 = '0'
            user = user - 1
        elsif(move == 'b3')
            b3 = '0'
            user = user - 1
        elsif(move == 'c1')
            c1 = '0'
            user = user - 1
        elsif(move == 'c2')
            c2 = '0'
            user = user - 1
        elsif(move == 'c3')
            c3 = '0'
            user = user - 1
        end
       # if(a1 && a2 && a3 || b1 && b2 && b3 || c1 && c2 && c3 || a1 && b2 && c3 || a3 && b2 && c1 == '0')
        #if(wins1 || wins2 || wins3 || wins4 || wins5 == "0|0|0")
       #     puts(secondName + ' win!')
       #     exit()
       #end
    end

    #puts(wins1)
    #puts(winner1[1])
    #puts(winner1[0])
    #wins10 = winner1[1]
    #puts(wins10)
    #p(wins1)

    #p('1-e')
    #field = plaingField(index)
    #field += "#{1 + index} #{plaingField[index]}"
    #puts(plaingField[index])
    index = index + 1
end
#puts(result)