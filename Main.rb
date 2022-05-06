require_relative './Game'

Game.instruct

def getPlayerNames
  names = []
  puts "Player 1 please enter your name"
  names << $stdin.gets.chomp

  puts "Player 2 please enter your name"
  names << $stdin.gets.chomp
end

game = Game.new(getPlayerNames)

game.start

