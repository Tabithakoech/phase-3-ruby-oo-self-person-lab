# your code goes here
class Person
    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        @happiness = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def hygiene=(num)
        @hygiene = if num > 10
            10
        elsif num < 0
            0
        else
            num
        end
    end

    def happy?
        @happiness > 7 ? true : false 
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(amount)
        @bank_account += amount
        return 'all about the benjamins'
    end

    def take_bath
        self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
       if topic == "politics"
        [self, friend].each {|person| person.happiness -= 2}
        'blah blah partisan blah lobbyist'
       elsif topic == "weather"
        [self, friend].each {|person| person.happiness += 1}
        'blah blah sun blah rain' 
       else
        'blah blah blah blah blah' 
       end
    end
end


















# class Person
#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         @hygiene = 8
#     end
#     def happiness=(value)
#         @happiness = value
#         if @happiness < 0
#             @happiness = 0
#         elsif @happiness > 10
#             @happiness = 10
#         end
#     end
#     def happiness
#         @happiness
#     end
#     def hygiene=(value)
#         @hygiene = value
#         if @hygiene < 0
#             @hygiene = 0
#         elsif @hygiene > 10
#             @hygiene = 10
#         end
#     end
#     def hygiene
#         @hygiene
#     end
#     def bank_account=(value)
#         @bank_account = value
#         if @bank_account < 0
#             @bank_account = 0
#         elsif @bank_account > 100
#             @bank_account = 100
#         end
#     end
#     def bank_account
#         @bank_account
#     end
#     def get_paid(salary)
#         self.bank_account += salary
#     end     
#     def take_bath   
#         self.hygiene += 4
#     end 
#     def work_out
#         self.hygiene -= 3
#         self.happiness += 2
#     end
#     def call_friend(friend)
#         self.happiness += 3
#         friend.happiness += 3
#     end
#     def go_to_the_movies
#         self.happiness -= 2
#         self.hygiene -= 1
#     end
    





# end