class SessionsController < ApplicationController
  skip_before_action :authorize, only: %i{new create}
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to home_index_path, notice: "Logged In"
    else
      flash.now.alert = "Email ou senha inválido"
      render "new"
   end
 end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out!"
  end
end
