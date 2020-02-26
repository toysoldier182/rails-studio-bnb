class UsersController < ApplicationController
  def show
    @user = current_user
    @studios = Studio.where(user_id: @user)
    @bookings = Booking.where(studio_id: @studios)
  end

  def article_params
    params.require(:avatar).permit(:title, :body, :photo)
  end
end
  #user profile



