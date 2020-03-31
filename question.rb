class Question 
  attr_accessor :total, :question_string, :answer

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    @total = num1 + num2
    @question_string = "What does #{num1} + #{num2} equal?"
  end

  def get_answer
    @answer = gets.chomp()
  end

  def validate_answer
     @answer.to_i == @total
  end 
end