class Person

    def initialize name, bank_account=25, happiness=8, hygiene=8
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    end

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def min_max(attribute)
        @attribute = attribute
        if @attribute > 10
            @attribute = 10
        elsif @attribute < 0
            @attribute = 0
        else
            @attribute
        end 
    end

    def happiness=(number)
        @happiness = min_max(number)
    end

    def hygiene=(number)
        @hygiene = min_max(number)
    end

    def greater attribute
        @attribute = attribute
        return true if @attribute > 7
        false
    end

    def happy?
        greater(@happiness)
    end

    def clean?
        greater(@hygiene)
    end

    def get_paid salary
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene +=4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # def work_out
    #     self.hygiene -=3
    #     self.happiness +=2
    #     "♪ another one bites the dust ♫"
    # end

    def work_out
        self.hygiene -= 3
    end

    def call_friend

    end

end
