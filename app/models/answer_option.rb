class AnswerOption < ActiveRecord::Base
  attr_accessible :position, :question_id, :text
end
