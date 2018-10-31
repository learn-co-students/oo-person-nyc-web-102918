class Person
  # attr stuff
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8

  end

  def hygiene=(points)
    if points >= 10
      @hygiene = 10
    elsif points <= 0
      @hygiene = 0
    else
      @hygiene = points
    end
  end

  def happiness=(points)
    if points >= 10
      @happiness = 10
    elsif points <= 0
      @happiness = 0
    else
      @happiness = points
    end
  end

  def happy?
    if self.happiness > 7
      true
    else
      false
    end
  end

  def clean?
    if self.hygiene > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    new_hygiene = @hygiene + 4
    self.hygiene=(new_hygiene)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end


  def work_out
    new_hygiene = @hygiene - 3
    new_happiness = @happiness + 2
    self.hygiene=(new_hygiene)
    self.happiness=(new_happiness)
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend_happiness = friend.happiness + 3
    caller_happiness = @happiness + 3
    friend.happiness=(friend_happiness)
    self.happiness=(caller_happiness)
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_to_start, topic)
    if topic == "politics"
      other_person_happiness = person_to_start.happiness - 2
      my_happiness = @happiness - 2
      person_to_start.happiness=(other_person_happiness)
      self.happiness=(my_happiness)
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      other_person_happiness = person_to_start.happiness + 1
      my_happiness = @happiness + 1
      person_to_start.happiness=(other_person_happiness)
      self.happiness=(my_happiness)
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
