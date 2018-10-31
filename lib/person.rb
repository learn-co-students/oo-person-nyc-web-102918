
require 'pry'

class Person

  attr_accessor :hygiene, :happiness, :bank_account

  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def hygiene=(points)
    if points > 10
      @hygiene = 10
    elsif points < 0
      @hygiene = 0
    else
      @hygiene = points
    end
    @hygiene
  end

  def happiness=(points)
    if points > 10
      @happiness = 10
    elsif points < 0
      @happiness = 0
    else
      @happiness = points
    end
    @happiness
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    #accept a salary amount and add this to the person's bank
    #account. Then the method should
    #return the string "all about the benjamins".
    @bank_account = salary + @bank_account
    return "all about the benjamins"
  end

  def take_bath
    #should increment the person's hygiene points by four
    #and return the string "♪ Rub-a-dub just relaxing in the tub ♫"
    # new_hygiene = @hygiene += 4
    # self.hygiene=(new_hygiene)
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    #should increment the person's happiness by two points,
    #decrease their hygiene by three points,
    #and return the Queen lyrics, "♪ another one bites the dust ♫".
    # new_happy = @happiness += 2
    # new_hygiene = @hygiene -= 3
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(caller)
    #method should accept another instance of the Person class,
    #or "friend". The method should increment the caller
    #and the callee's happiness points by three.
    #If Stella calls her friend Felix, the method should return "Hi Felix! It's Stella. How are you?"
    self.happiness += 3
    caller.happiness += 3
    return "Hi #{caller.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      person.happiness -= 2
      self.happiness -=2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness += 1
      self.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
