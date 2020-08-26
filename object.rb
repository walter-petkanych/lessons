#object  це 
class User #визначення класа
    @name #змінна класу
    @surname
    def set_name(name) #методи класу
        @name = name #присвоєння значення змінніц класу
    end
    def set_surname(surname)
        @surname = surname
    end
    def get_name()
        return @name
    end
    def get_surname()
        return @surname
    end
    def get_full_name()
        return "#{get_name} #{get_surname} 1"
    end
end
user = User.new() #створення обєкта (екземпляра) класу
user.set_name('Walter') # виклик метода класу
user.set_surname('Petkanych')
#puts(user.get_name + user.get_surname)
puts("#{user.get_name} #{user.get_surname}")
puts(user.get_full_name())
class EnhancedUser < User #розширення класу (насклідує всі метади батьківського класу)
    @nick_name
    def set_nick_name(nick_name)
        @nick_name = nick_name
    end
    def get_nick_name()
        return @nick_name
    end
    def get_full_name() # перевизначення метода класу
        return "#{super} #{get_nick_name}" #виклик оригінального методу батьківського класу
    end
end
user = EnhancedUser.new()
user.set_name('Walter')
user.set_surname('Petkanych')
user.set_nick_name('Silwer')
puts(user.get_full_name())