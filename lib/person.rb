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
    end

    def happy?
        if @happiness > 7
            true
        else
            false
            # binding.pry
        end
    end

    # def clean?
    # end

end
