class Question < ActiveRecord::Base
  attr_accessible :answer_index, :difficulty, :text
  
  has_many :answer_options
  
  def next_question(user)
    q = Question.find(:first, :conditions => ["difficulty = ?", user.difficulty_level])
    q = Question.find(:first) if not q
    q
  end

end
