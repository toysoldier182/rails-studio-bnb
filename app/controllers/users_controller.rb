class UsersController < ApplicationController
  def show
    @user = current_user
    @studios = Studio.where(studio.user == current_user)
  end

  def article_params
    params.require(:avatar).permit(:title, :body, :photo)
  end
end
  #user profile



