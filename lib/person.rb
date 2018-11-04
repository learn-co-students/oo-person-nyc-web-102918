class Person

  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene #no change name.


  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(index)
    @happiness = index

    if @happiness  > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    # @happiness = 10 if @happiness > 10
    # @happiness =0 if @happiness < 0

    end
  end

  def hygiene=(index)
    @hygiene = index
    @hygiene = 10 if @hygiene > 10
    @hygiene =0 if @hygiene < 0
  end

  def happy?
    return true if self.happiness > 7
    return false
  end

  def clean?
    return true if self.hygiene > 7
    return false
  end

  def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4 if self.hygiene != 10
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.hygiene = 0 if self.hygiene <0
    self.happiness += 2

    self.happiness = 10 if self.happiness >10
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    self.happiness = 10 if self.happiness > 10
    friend.happiness = 10 if friend.happiness > 10
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness -= 2
      person.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == "weather"
      self.happiness += 1
      person.happiness += 1
      self.happiness = 10 if self.happiness > 10
      person.happiness = 10 if person.happiness >10
      return 'blah blah sun blah rain'
    else
      return "blah blah blah blah blah"

    end

  end
