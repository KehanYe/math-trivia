class Player
  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives = @lives - 1
    puts "You lost a life. You have #{@lives}/3 lives left"
  end

  def alive?
    @lives <= 1
  end

end
