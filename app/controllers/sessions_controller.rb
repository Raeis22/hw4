class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({"email" => params["email"]})
    if @user
      if @user["password"] == User.find_by({"password" => params["password"]})
        flash["notice"] = "You logged in!"
        redirect_to "/places"
      else
        flash["notice"] = "Wrong password!"
        redirect_to "/sessions/new"
      end
    else
      flash["notice"] = "Wrong email!"
      redirect_to "/sessions/new"
    end
  end

  def destroy
  end
end
  