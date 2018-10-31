#First you need to create a person class that is initialized with a name that cannot be changed.

class Person

attr_accessor :bank_account, :happiness, :hygiene

attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(points)
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def hygiene=(points)
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
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
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness +=1
      person.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
  end
end

end
# your code goes here
