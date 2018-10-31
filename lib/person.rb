class Person

attr_accessor :bank_account, :happiness, :hygiene
attr_reader :name

def initialize(name, bank_account= 25 )
  @name = name
  @bank_account = bank_account
  @happiness = 8
  @hygiene = 8
end


def happiness=(number)
  if number >= 10
    @happiness = 10
  elsif number <= 0
    @happiness = 0
  else
    @happiness = number
      end
    end

    def hygiene=(number)
      if number >= 10
        @hygiene = 10
      elsif number <= 0
        @hygiene = 0
      else
        @hygiene = number
          end
        end

def happy?
 if @happiness > 7
 return true
  else
    false
  end
end

def clean?
 if @hygiene > 7
 return true
  else
    false
  end
end

def get_paid(number)
  @bank_account = number + @bank_account
  return "all about the benjamins"
end

def take_bath
self.hygiene = 4 + @hygiene
return "♪ Rub-a-dub just relaxing in the tub ♫"
end


def work_out
  self.happiness = 2 + @happiness
  self.hygiene = @hygiene - 3
  return "♪ another one bites the dust ♫"
end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

  def start_conversation(name, topic)
    if topic == "politics"
      self.happiness -= 2
      name.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      name.happiness += 1
      return "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
  end
end

new_name = Person.new(self)
end
