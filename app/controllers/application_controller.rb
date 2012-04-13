class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :set_current_user
  
  def after_sign_in_path_for(resource)
      questions_path
  end
  
  def set_current_user
    @current_user = current_user
    if @current_user && !@current_user.pencil_count
      @current_user.pencil_count = 0
      @current_user.save
    end
  end
  
end
