require_relative 'bear' 
require_relative 'ninja'

class Battle

    attr_reader :fighter1, :fighter2

    def initialize(fighter1, fighter2)
        @fighter1 = fighter1
        @fighter2 = fighter2
    end

    def fight
        @fighter1.attack(@fighter2)
        @fighter2.attack(@fighter1)
        
        fight_narrative
        battle_status
    end

    def fight_narrative
        puts "This is an epic battle for the ages. #{@fighter1.name} has show great strength and tenacity. However, #{@fighter2.name} is even tougher. Time will tell who shall win!"
    end

    def battle_status
        puts "#{@fighter1.name} has #{@fighter1.health} health left"
        puts "#{@fighter2.name} has #{@fighter2.health} health left"
    end

end

bear = Bear.new("Berry", 100, 12)
ninja = Ninja.new("Nina", 120, 10)

battle = Battle.new(bear, ninja)

5.times do
    battle.fight
end
