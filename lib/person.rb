

class Person

attr_accessor :bank_account
attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness= happiness
    @hygiene = hygiene
  end

  def happiness=(level)
    if level>10
      @happiness = 10
    elsif level < 0
      @happiness = 0
    else
      @happiness = level
    end
  end

  def hygiene=(level)
    if level>10
      @hygiene = 10
    elsif level < 0
      @hygiene = 0
    else
      @hygiene = level
    end
  end

  def happy?
    if self.happiness >7
      return true
    else
      return false
    end
  end

  def clean?
    if self.hygiene >7
      return true
    else
      return false
    end
  end

    def get_paid(salary)
      self.bank_account += salary
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

    def call_friend(person_instance)
      self.happiness +=3
      person_instance.happiness +=3
      "Hi #{person_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)

      if topic == "politics"
        self.happiness -=2
        person.happiness -=2
        return "blah blah partisan blah lobbyist"
      elsif topic == "weather"
        self.happiness +=1
        person.happiness +=1
      return  "blah blah sun blah rain"

      else
        return "blah blah blah blah blah"
      end

    end

end
