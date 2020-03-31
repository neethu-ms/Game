class User
  attr_reader :name, :score
  def initialize(name)
    @name = name 
    @score = 3  # score is life
  end

  def update_score
    @score -= 1
  end
end