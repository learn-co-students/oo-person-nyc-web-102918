# your code goes here
require "pry"

class Person
  attr_reader :name
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25.00
    @happiness = 8
    @hygiene = 8
  end

  def happiness
    @happiness
  end

  def happiness=(happiness_level)
    if happiness_level < 0
      @happiness = 0
    elsif happiness_level > 10
      @happiness = 10
    else
      @happiness = happiness_level
    end
  end

  def hygiene
    @hygiene
  end

  def hygiene=(hygiene_level)
    if hygiene_level < 0
      @hygiene = 0
    elsif hygiene_level > 10
      @hygiene = 10
    else
      @hygiene = hygiene_level
    end
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      person.happiness = person.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end


end
