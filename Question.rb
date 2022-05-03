class Question

  def initialize
    @int_one = rand(1...20)
    @int_two = rand(1...20)
    @answer = @int_one + @int_two
  end

  def to_s
    "What is #{@int_one} + #{@int_two} = ❓"
  end
end