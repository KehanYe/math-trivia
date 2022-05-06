require_relative './Question'
require_relative './Player'

class Turn

  def initialize(player)
    @player = player
    @question = Question.new
  end 

  def compare_guess(guess)
    if @question.answer == guess
      puts "Correct ✅ #{@player} survives another round"
    else 
      @player.lose_life
      puts "Wrong answer 💀 #{@player} lost a life"
    end
  end
  
  def execute
    puts "#{@player.name} is now playing."
    puts "Answer this question #{@question.to_s}"

    print "\n Player Answer: "
    @input = $stdin.gets.chomp.to_i

    compare_guess(@input)
  end

  def to_s
    "New Turn".center(30, "-")
  end

end