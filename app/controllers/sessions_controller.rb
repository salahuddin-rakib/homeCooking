class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    user = User.find_by(name: params[:name])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      respond_to do |format|
        format.html { redirect_to posts_url }
        format.js
      end

    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to posts_url, notice: "Logged out"
  end
end
