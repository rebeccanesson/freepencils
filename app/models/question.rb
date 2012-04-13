class Question < ActiveRecord::Base
  attr_accessible :answer_index, :difficulty, :text
  
  has_many :answer_options
  
  def self.next_question(user)
    # q = Question.find(:first, :conditions => ["difficulty = ?", user.difficulty_level])
    # q = Question.find(:first) if not q
    qs = Question.all.reverse
    q = qs[rand(qs.length)]
    q
  end
  
  def check_answer(answer) 
    return answer == answer_index
  end

end
