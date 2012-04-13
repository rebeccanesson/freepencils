class AnswerOption < ActiveRecord::Base
  attr_accessible :position, :question_id, :text
  
  belongs_to :question
  acts_as_list :scope => :question
  
end
