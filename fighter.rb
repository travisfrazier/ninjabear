class Fighter #parent class for our ninja and bear classes
    
    attr_reader :name #in order to access we need this, methods are an island
    attr_accessor :health, :power #this is so we can change these as we go along the program

    def initialize(name, health, power)
        @name = name
        @health = health
        @power = power
    end

    def attack(enemy) #argument of who he is attacking
        enemy.lose_health(self.power) #.self is already exising in ruby 
    end

    def lose_health(power_attacker)
        self.health -= power_attacker
    end

end

# bob = Fighter.new("bob", 100, 3)
# rocky = Fighter.new("rocky", 100, 65)

# puts rocky.attack(bob)
# puts bob.inspect #see bobs stats after the fight 
