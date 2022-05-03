class Turn_Manager

  def initialize(player)
    @player_turn = player
    @question = Question.new
    @answer = @question.answer
    current_turn
  end 

  def current_turn
    puts "#{@player_turn.name} is now playing."
    puts "Answer this question #{@question.question}"

    if answer?
      @player_turn.lives -= 1
      puts "#{@player_turn} lost a life"
    else 
      puts "#{@player_turn} survives another round"
    end
    
  end
  
end