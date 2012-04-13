class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!
  before_filter :set_current_user
  
  def after_sign_in_path_for(resource)
      redirect_to questions
  end
  
  def set_current_user
    @current_user = current_user
  end
  
end
