puts('Welcome, enter first name (user "X")')
firstName = gets().chomp()
puts('Enter second name (user "O")')
secondName = gets().chomp()
index = 0
result = ''
move = ''
user = 1
winner = 'name'
a1 = '_'
a2 = '_'
a3 = ' '
b1 = '_'
b2 = '_'
b3 = ' '
c1 = '_'
c2 = '_'
c3 = ' '
x = 'X'
o = 'O'
occupied = "Sorry, but this square is occupied, try again!"
#plaingField = pF
pF = ['  A B C', '1 ', '2 ', '3 ', '|']
field = ['a1', 'a2', 'a3', ' b1', 'b2', 'b3', 'c1', 'c2', 'c3']
#whatItIs = ['a1', '1a', 'A1', '1A', 'a2', '2a', 'A2', '2A', 'a3', '3a', 'A3', '3A', 'b1', '1b', 'B1', '1B', 'b2', '2b', 'B2', '2B', 'b3', '3b', 'B3', '3B', 'c1', '1c', 'C1', '1C', 'c2', '2c', 'C2', '2C', 'c3', '3c', 'C3', '3C']
puts('Game started!')
while(index < field.length())
    result += "#{pF[0]}" "\n" "#{pF[1]}#{a1}#{pF[4]}#{b1}#{pF[4]}#{c1}" "\n" "#{pF[2]}#{a2}#{pF[4]}#{b2}#{pF[4]}#{c2}" "\n" "#{pF[3]}#{a3}#{pF[4]}#{b3}#{pF[4]}#{c3}" "\n"
    puts(result)
    p('перед іф юзер 1')
    while(user == 1)
        puts(firstName + ' make your move!')
        move = gets().chomp()
        move.to_s()
        user = user + 1
        if(move == 'a1')
            if((x == a1) || (o == a1))
                puts(occupied)
                #next
            elsif(a1 != x && o)
                a1 = 'X'
            end
        elsif(move == 'a2')
            if(a2 == x && o)
                puts(occupied)
            elsif(a2 != x && o)
                a2 = 'X'
            end
        elsif(move == 'a3')
            if(a3 == x && o)
                puts(occupied)
            elsif(a3 != x && o)
                a3 = 'X'
            end
        elsif(move == 'b1')
            if(b1 == x && o)
                puts(occupied)
            elsif(b1 != x && o)
                b1 = 'X'
            end
        elsif(move == 'b2')
            if(b2 == x && o)
                puts(occupied)
            elsif(b2 != x && o)
                b2 = 'X'
            end
        elsif(move == 'b3')
            if(b3 == x && o)
                puts(occupied)
            elsif(b3 != x && o)
                b3 = 'X'
            end
        elsif(move == 'c1')
            if(c1 == x && o)
                puts(occupied)
            elsif(c1 != x && o)
                c1 = 'X'
            end
        elsif(move == 'c2')
            if(c2 == x && o)
                puts(occupied)
            elsif(c2 != x && o)
                c2 = 'X'
            end
        elsif(move == 'c3')
            if(c3 == x && o)
                puts(occupied)
            elsif(c3 != x && o)
                c3 = 'X'
            end
        else
            p('Sory, but  blablabla' 'try again')
            user = user + 1
            next
        end
    end
    while(user == 2)
        p('після іф юзер 2')
        puts(secondName + ' make your move!')
        move = gets().chomp()
        move.to_s() 
        user = user - 1
        if(move == 'a1')
            if((x == a1) || (o == a1))
                puts(occupied)
                #next
            elsif(a1 != x && o)
                a1 = 'O'
            end
        elsif(move == 'a2')
            if(a2 == x && o)
                puts(occupied)
            elsif(a2 != x && o)
                a2 = 'O'
            end
        elsif(move == 'a3')
            if(a3 == x && o)
                puts(occupied)
            elsif(a3 != x && o)
                a3 = 'O'
            end
        elsif(move == 'b1')
            if(b1 == x && o)
                puts(occupied)
            elsif(b1 != x && o)
                b1 = 'O'
            end
        elsif(move == 'b2')
            if(b2 == x && o)
                puts(occupied)
            elsif(b2 != x && o)
                b2 = 'O'
            end
        elsif(move == 'b3')
            if(b3 == x && o)
                puts(occupied)
            elsif(b3 != x && o)
                b3 = 'O'
            end
        elsif(move == 'c1')
            if(c1 == x && o)
                puts(occupied)
            elsif(c1 != x && o)
                c1 = 'O'
            end
        elsif(move == 'c2')
            if(c2 == x && o)
                puts(occupied)
            elsif(c2 != x && o)
                c2 = 'O'
            end
        elsif(move == 'c3')
            if(c3 == x && o)
                puts(occupied)
            elsif(c3 != x && o)
                c3 = 'O'
            end
        else
            p('Sory, but  blablabla' 'try again')
            user = user + 1
            next
        end
    end
    
    index = index + 1

    if((a1 + a2 + a3 == 'XXX') || (b1 + b2 + b3 == 'XXX') || (c1 + c2 + c3 == 'XXX') || (a1 + b2 + c3 == 'XXX') || (a3 + b2 + c1 == 'XXX'))
        puts(result + "\n" + 'Congratulations ' + firstName + ' you won!')
        exit()
    elsif((a1 + a2 + a3 == 'OOO') || (b1 + b2 + b3 == 'OOO') || (c1 + c2 + c3 == 'OOO') || (a1 + b2 + c3 == 'OOO') || (a3 + b2 + c1 == 'OOO'))
        puts(result + "\n" + 'Congratulations ' + secondName + ' you won!')
        exit()
    end

end
puts(result + "\n" + 'Sorry, but you are lose!')
exit()