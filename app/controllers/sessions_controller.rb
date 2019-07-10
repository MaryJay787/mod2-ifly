class SessionsController <ApplicationController

  def new
  end

  def create
    @flyer = Flyer.find_by(user_name: params[:user_name])
    if @flyer && @flyer.authenticate(params[:password])
      session[:user_id] = @flyer.id
      flash[:info] = "Login Successful!"
      redirect_to flyer_path(@flyer)
    else
      @error = "Incorrect username or password."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to flyers_path
  end

end
