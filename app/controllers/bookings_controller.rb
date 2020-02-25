class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  # def index
  #   @bookings = Booking.all
  # end
  def index
    @bookings = Booking.where(user_id: @user)
  end

  def show; end

  def new
    @booking = Booking.new
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @user = User.find(params[:user_id])
    @booking = Booking.new(validate_booking)
    @booking.user = @user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def edit; end

  def update
    @booking = Booking.update(validate_booking)
  end

  def destroy
    @booking.delete
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def validate_booking
    params.require(:booking).permit(:description, :approval, :booking_date_start, :booking_date_end)
  end

end
