class Person

    def initialize name, bank_account=25, happiness=8, hygiene=8
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(number)
        @happiness = number
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness
        end 
    end

    def hygiene=(number)
        @hygiene = number
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene
        end 
    end

    def happy?
        greater(@happiness)
    end

    def clean?
        greater(@hygiene)
    end

    def greater attribute
        @attribute = attribute
        return true if @attribute > 7
        false
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -=3
        self.happiness +=2
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        friend.happiness +=3
        self.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation friend, topic
        
    end


end