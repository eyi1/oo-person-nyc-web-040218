#
require 'pry'

class Person

  attr_accessor :bank_account #(can read and write)
  attr_reader :name, :happiness, :hygiene #can only read
  # attr_writer #can only write/change - storage

  def initialize (name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
  end

  # def bank_account #(getter method)
  #   @bank_account
  # end
  #
  # def happy? #getter method: writer
  #   @happiness > 7 ? true : false
  # end
  #
  def happiness=(points) #setter method: reader
    @happiness = points
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end
  #
  # end
  # def take_bath
  #
  # end
  def hygiene=(num)
    @hygiene = num
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end


  def clean?
    if @hygiene > 7
      true
    else
      false
  end
end

def happy?
  if @happiness > 7
    true
  else
    false
end
end


  def get_paid (salary_amt)
    @bank_account += salary_amt
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

  def call_friend (friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"

  end

  def start_conversation (friend, topic)
     if topic == "politics"
       self.happiness -= 2
       friend.happiness -=2
       return "blah blah partisan blah lobbyist"
     elsif topic == "weather"
       self.happiness += 1
       friend.happiness += 1
       return "blah blah sun blah rain"
     else
       return 'blah blah blah blah blah'
     end
  end


end



# valuable = Person.new("EJ")
# valuable.get_happy = 10






















































#self
