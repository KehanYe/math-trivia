class Question

  attr_reader :answer 

  def initialize
    @num = Array.new(2){ rand(1...30) }
    @answer = @num.sum
  end

  def to_s
    "What is #{@num[0]} + #{@num[1]} = ❓"
  end
end