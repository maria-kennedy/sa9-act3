require "oop_animal_class"

# note2self: use describe "#method" do ... end to test instance methods
# note2self: use describe ".method" do ... end to test class methods (methods called on the class itself, not an instance of the class like instance methods are)
# note2self: use let(:name) { ... } to create a new instance of the class for testing

# Rspec test for the Animal class
RSpec.describe Animal do
    #for testing
    let(:luna) {Animal.new("pug puppy", 20, "cheese")} # let block to create a new Animal object

    # class method tests
    describe ".initialize" do
        it "should create an Animal object with species, weight, and diet" do
            expect(luna.species).to eq("pug puppy")
            expect(luna.weight).to eq(20)
            expect(luna.diet).to eq("cheese")
        end
    end
    describe ".nickname" do
        it "should set and get the nickname of the animal" do
            luna.nickname = "Boofin snoofin"
            expect(luna.nickname).to eq("Boofin snoofin")
        end
    end

    describe "#eat" do
        it "should keep track of the animal's weight" do
            luna.eat("cheese", 3)
            expect(luna.weight).to eq(23)
        end
    end

    describe "#sleep" do
        it "should return string about the animal's nap" do
            luna.nickname = "Boofin snoofin"
            expect { luna.sleep }.to output("Boofin snoofin is taking a nap.\n").to_stdout
        end
    end
    describe "#move" do
        it "should return a string about animal species and where animal is going" do
            jellyjubilee = Animal.new("pegasus", 200, "rainbows")
            expect { jellyjubilee.move }.to output("The pegasus is going on a neighborhood patrol.\n").to_stdout
        end
    end
    describe "#move" do
        it "should return a string with animal nickname and where they are going" do
            jellyjubilee = Animal.new("pegasus", 200, "rainbows", "JJ")
            expect { jellyjubilee.move }.to output("JJ is going on a neighborhood patrol.\n").to_stdout
        end
    end
end
    
