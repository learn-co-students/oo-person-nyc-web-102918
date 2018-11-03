class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = happiness

  end

  def happiness
    if @happiness < 0
      @happiness = 0
    elsif @happiness > 10
      @happiness = 10
    else
      @happiness
    end

  end

end
