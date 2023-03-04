class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by({"email" => params["email"]})
    if @user
      redirect_to "/places"
    else
      redirect_to "/sessions/new"
    end
  end

  def destroy
  end
end
  