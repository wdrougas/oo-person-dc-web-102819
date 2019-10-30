require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @hygiene = 8
        @happiness = 8
        @bank_account = 25
        @@all << self
    end

    def self.all
        @@all
    end

    def bank_account
        @bank_account
    end
    
    def happiness=(happiness_level)
        @happiness= happiness_level
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def happiness
        @happiness
    end
    
    def hygiene=(hygiene_level)
        @hygiene = hygiene_level
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def hygiene
        @hygiene
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
     return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
       if topic == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return 'blah blah partisan blah lobbyist'
        end
        if topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end
