require './question'
class Game
  attr_accessor :current_user
 
  def play
    user1 = User.new("Player 1")
    user2 = User.new("Player 2")
    @current_user = user1
    while (user1.score != 0 && user2.score != 0) do
    question = Question.new
    puts "#{current_user.name}:#{question.question_string}"
    answer = question.get_answer
    is_correct = question.validate_answer
    if(!is_correct)
      current_user.update_score
      puts "#{current_user.name}: Seriously? No."
    else
     puts "#{current_user.name}: YES! You are correct."
    end

    if @current_user == user1
      @current_user = user2
    else
      @current_user = user1
    end

    puts "------------------------ NEW TURN -------------------------------"
    end
   puts "#{@current_user.name} + wins a score of  #{@current_user.score} /3"
   puts "------------------------- GAME OVER ------------------------------"
   puts "Good bye !"    
  end

end