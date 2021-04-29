@field = "_|_|__|_|_ | | ".chars #створили глобальну змінну, методом .chars розділили посимвольно запис в кавичках
@symbols = "X0".chars #зробили те саме що і строкою вище

def printField() #створили новий метод
    result = " A B C\n" #змінна з текством (шапкою поля)
    @field.each_with_index do |char, i| #перебираємо елементи змінної field і ?
        result += ((i + 1) / 5 + 1).to_s if (i % 5 == 0) 
        result += char
        result += "\n" if ((i + 1) % 5 == 0)
    end

    puts result
end

def target(x, y)
    x * 2 + 5 * y
end

def targetOcupied(x, y)
    return !'_ '.include?(getPlaceValue(x, y))
end

def getPlaceValue(x, y)
    @field[target(x, y)]
end

def makeMove(x, y, symbol)
    @field[target(x, y)] = symbol
end

def isGameFinished()
    3.times do |a|
        line = (0...3).to_a().map{|b| getPlaceValue(b, a)}.uniq
        if(line.length == 1 && @symbols.include?(line[0]))
            return true
        end

        row = (0...3).to_a().map{|b| getPlaceValue(a, b)}.uniq
        if(row.length == 1 && @symbols.include?(row[0]))
            return true
        end
    end

    diag = (0...3).to_a().map{|i| getPlaceValue(i, i)}.uniq
    if(diag.length == 1 && @symbols.include?(diag[0]))
        return true
    end

    diag = (0...3).to_a().map{|i| getPlaceValue(i, 2 - i)}.uniq
    if(diag.length == 1 && @symbols.include?(diag[0]))
        return true
    end
end

playerNames = []
2.times do |time|
    puts "Enter the name for player #{time + 1} (#{@symbols[time]})"
    playerNames << gets().chomp()
end

move = 0
while true
    printField()

    puts "#{playerNames[move]} make your move (by entering the target location)"
    target = gets().chomp()

    targetX = target[0]
    targetY = target[1].to_i - 1

    if (targetX.nil? || !"abc".include?(targetX) || targetY < 0 || targetY > 2)
        puts "Wrong move"
        next
    end

    targetX = "abc".index(targetX)

    if (targetOcupied(targetX, targetY))
        puts "This place is already ocupied"
        next
    end

    makeMove(targetX, targetY, @symbols[move])

    if(isGameFinished())
        printField()
        puts "Congratulations #{playerNames[move]}! You won!"
        exit()
    end

    move = 0 if((move+=1) > 1)
end