


class Animal
    attr_accessor :species, :weight, :diet, :nickname

    # attributes of animal
    def initialize(species, weight, diet, nickname = nil)
        @species = species
        @weight = weight
        @diet = diet
        @nickname = nickname
    end

    # methods of animal
    def eat(food, how_much) #takes 2 parameters
        puts "The #{@species} is eating a #{food} snack."
        @weight += how_much
    end
    
    def sleep
        if @nickname != nil
            puts "#{@nickname} is taking a nap."
        else
            puts "The #{@species} is taking a nap."
        end
    end

    def move
        if @nickname != nil
            puts "#{@nickname} is going on a neighborhood patrol."
        else
            puts "The #{@species} is going on a neighborhood patrol."
        end
    end
end



luna = Animal.new("pug puppy", 20, "cheese")
jellyjubilee = Animal.new("pegasus", 200, "rainbows", "JJ")



# puts "Species: #{luna.species}"
# puts "Weight: #{luna.weight}"
# luna.eat("cheese", 3)
# puts "Weight: #{luna.weight}"
# luna.eat("puppy birthday breakfast", 2)
# puts "Weight: #{luna.weight}"
# luna.move

# puts "Species: #{jellyjubilee.species}"
# jellyjubilee.move
# jellyjubilee.sleep

# # set nickname
# luna.nickname = "Boofin snoofin"
# puts "Nickname: #{luna.nickname}"

# # change nickname
# luna.nickname = "Mighty and Brave Protector of the House"
# puts "Alt nickname: #{luna.nickname}"
