require_relative './Turn'

class Game

  def initialize(names)
    @player1 = Player.new(names[0])
    @player2 = Player.new(names[1])
  end

  def self.instruct
    puts "New Game".center(30, "-")
    puts "Instructions:"
    puts "Answer the math question correctly."
    puts "If you get the question wrong you will lose a life."
    puts "You start with 3 lives, once you run out you lose the match."
  end
  
  def start
    current_player = @player1
    while @player1.alive? && @player2.alive?
      Turn.new(current_player).execute
      puts "SCORE: #{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      current_player == @player1 ? current_player = @player2 : current_player = @player1
    end
    self.finish
  end
  
  def finish
    if @player1.alive? 
      puts "#{@player1.name} has won the game!"
    end
    if @player2.alive?
      puts "#{@player2.name} has won the game!"
    end
    puts "Game Finished!"
  end

end