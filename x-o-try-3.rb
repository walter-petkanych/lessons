puts('Welcome, enter first name (user "X")')
firstName = gets().chomp()
puts('Enter second name (user "O")')
secondName = gets().chomp()
index = 0
result = ''
move = ''
user = 1
winner = 'name'
$a1 = '_'
$a2 = '_'
$a3 = ' '
$b1 = '_'
$b2 = '_'
$b3 = ' '
$c1 = '_'
$c2 = '_'
$c3 = ' '
x = 'X'
o = 'O'
occupied = "Sorry, but this square is occupied, try again!"
#plaingField = pF
pF = ['  A B C', '1 ', '2 ', '3 ', '|']
puts('Game started!')

def myMethod (move)
    if(move == 'a1')
        $a1 = 'X'
    elsif(move == 'a2')
        $a2 = 'X'
    elsif(move == 'a3')
        $a3 = 'X'
    elsif(move == 'b1')
        $b1 = 'X'
    elsif(move == 'b2')
        $b2 = 'X'
    elsif(move == 'b3')
        $b3 = 'X'
    elsif(move == 'c1')
        $c1 = 'X'
    elsif(move == 'c2')
        $c2 = 'X'
    elsif(move == 'c3')
        $c3 = 'X'
    else
        puts('Sory, but blablabla' 'try again')
        return false
    end
    return true

end    
while(index < 9)
    result += "#{pF[0]}" "\n" "#{pF[1]}#{$a1}#{pF[4]}#{$b1}#{pF[4]}#{$c1}" "\n" "#{pF[2]}#{$a2}#{pF[4]}#{$b2}#{pF[4]}#{$c2}" "\n" "#{pF[3]}#{$a3}#{pF[4]}#{$b3}#{pF[4]}#{$c3}" "\n"
    puts(result)
    if(user == 1)
        puts(firstName + ' make your move!')
        move = gets().chomp()
        move.to_s()
        user = user + 1
        goNext = myMethod(move)
        if (!goNext)
            user = user - 1
            next
        end

    elsif(user == 2)
        puts(secondName + ' make your move!')
        move = gets().chomp()
        move.to_s() 
        user = user - 1
        if(move == 'a1')
            $a1 = 'O'
        elsif(move == 'a2')
            $a2 = 'O'
        elsif(move == 'a3')
            $a3 = 'O'
        elsif(move == 'b1')
            $b1 = 'O'
        elsif(move == 'b2')
            $b2 = 'O'
        elsif(move == 'b3')
            $b3 = 'O'
        elsif(move == 'c1')
            $c1 = 'O'
        elsif(move == 'c2')
            $c2 = 'O'
        elsif(move == 'c3')
            $c3 = 'O'
        elsif
            p('Sory, but  blablabla' 'try again')
            user = user + 1
            next
        end
    end
    if(($a1 + $a2 + $a3 == 'XXX') || ($b1 + $b2 + $b3 == 'XXX') || ($c1 + $c2 + $c3 == 'XXX') || ($a1 + $b2 + $c3 == 'XXX') || ($a3 + $b2 + $c1 == 'XXX') || ($a1 + $b1 + $c1 == 'XXX') || ($a2 + $b2 + $c2 == 'XXX') || ($a3 + $b3 + $c3 == 'XXX'))
        puts(result + "\n" + 'Congratulations ' + firstName + ' you won!')
        exit()
    elsif(($a1 + $a2 + $a3 == 'OOO') || ($b1 + $b2 + $b3 == 'OOO') || ($c1 + $c2 + $c3 == 'OOO') || ($a1 + $b2 + $c3 == 'OOO') || ($a3 + $b2 + $c1 == 'OOO') || ($a1 + $b1 + $c1 == 'OOO') || ($a2 + $b2 + $c2 == 'OOO') || ($a3 + $b3 + $c3 == 'OOO'))
        puts('Congratulations ' + secondName + ' you won!')
        puts(result)
        exit()
    end
    index = index + 1
end
puts('Sorry, but you are lose!')
puts(result)
exit()