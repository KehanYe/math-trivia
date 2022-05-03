require_relative './Player'
require_relative './Question'
require_relative './Turn'

class Game

  def initialize
    # variables to track
    @player1 = player1
    @player2 = player2
  end

  #behaviours/methods
  # instruct
  # start
  # finish

  def player1
    puts "Player 1 please enter your name"
    name = $stdin.gets.chomp
    player1 = Player.new(name)
  end

  def player2
    puts "Player 2 please enter your name"
    name = $stdin.gets.chomp
    player1 = Player.new(name)
  end

  def instruct
    puts "New Game".center(15, "-")
    puts "Instructions:"
    puts "Answer the math question correctly."
    puts "If you get the question wrong you will lose a life."
    puts "You start with 3 lives, once you run out you lose the match."
  end
  
  def start
    current_player = @player1
    while @player1.alive && player2.alive
      Turn.new(current_player)
      puts "SCORE: #{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      current_player == @player1 ? current_player = player2 : current_player = player1
    end
  end
  
  def finish
    if !@player1.alive? 
      puts "#{player2}" has won the game!
    end
    if !@player2.alive?
      puts "#{player1}" has won the game!
    end
    puts "Game Finished!"
  end

end