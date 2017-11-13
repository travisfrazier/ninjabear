require_relative 'fighter'

class Ninja < Fighter

    def initialize(name, health, power)
        super(name, health, power)
    end

    def attack(enemy)
        puts "I'm the golden child"
        enemy.lose_health(self.power)
    end

end

# ninja = Ninja.new("kevin", 5000, 1)
# bear = Fighter.new("stacie", 100, 80)

# puts ninja.attack(bear)
# puts bear.attack(ninja) #the actual attack 

# puts ninja.inspect
# puts bear.inspect #.inspect after the fight to see where they are at