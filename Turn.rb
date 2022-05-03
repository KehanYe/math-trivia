class Turn

  def initialize(player)
    @player = player
    @question = Question.new
    # @answer = @question.answer
  end 

  #behaviours/methods

  def guess
    print "\n Player Answer: "
    @input = $stdin.gets.chomp.to_i

    if input?(@answer)
      puts "\nCorrect ✅ [ENTER to Continue]"
      STDIN.getc
    else 
      @player.lose_life
      puts "\nWrong answer 💀 [ENTER to Continue]]"
      STDIN.getc
    end

  end

  def execute #maybe switch to go
    puts "#{@player.name} is now playing."
    puts "Answer this question #{@question.question}"

    if answer?
      @player.lives -= 1
      puts "#{@player} lost a life"
    else 
      puts "#{@player} survives another round"
    end

  end
  
  def to_s
    "New Turn".center(15, "-")
  end

end