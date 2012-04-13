class QuestionsController < ApplicationController
  
  def index
    @question = Question.next_question(@current_user)
  end
  
end
