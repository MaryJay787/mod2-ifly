class ApplicationController < ActionController::Base

  def current_user
    user_id = session[:user_id]
    user_id && Flyer.find(user_id)
  end

  def authenticate!
    unless current_user
      flash[:info] = "You must create an account."
      redirect_to welcome_path
    end
  end

end
