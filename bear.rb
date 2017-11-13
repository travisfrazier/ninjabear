require_relative 'fighter' 

class Bear < Fighter #Bear class is inherting from the Fighter class
    
    def initialize(name, health, power)
        super(name, health, power)
    end

    def attack(enemy)
        puts "I'm a bear, this going to hurt"
        enemy.lose_health(self.power)
    end

end

