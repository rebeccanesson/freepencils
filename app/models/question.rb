class Question < ActiveRecord::Base
  attr_accessible :answer_index, :difficulty, :text
  
  has_many :answer_options
end
