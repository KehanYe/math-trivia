class Questions

  attr_accessor :answer #not sure if this is necessary yet

  def initialize()
    @int_one = rand(1...20)
    @int_tw0 = rand(1...20)
  end

  def question(player)
    puts "Asking #{player}: #{@int_one} + #{@int_tw0} = ❓"
    @answer = @int_one + @int_two
  end
  
  def answer()
    print "\nanswer: "
    @input = $stdin.gets.chomp.to_i
    
    if input?(@answer)
      puts "\nCorrect ✅ [ENTER]"
      STDIN.getc
    else 
      puts "\nWrong answer 💀 [ENTER]"
      STDIN.getc
    end

  end

end