class QuestionsController < ApplicationController
  
  def index
    @question = Question.next_question(@current_user)
  end
  
  def check_answer
    p params
    @question = Question.find(params["question"])
    p @question
    @res = @question.check_answer(params["answer"].to_i)
    p @res
    if @res
      @current_user.pencil_count += 1
      @current_user.save
    end
    redirect_to :action => :index
  end
  
end
