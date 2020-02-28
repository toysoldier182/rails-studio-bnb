class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user_id: params[:user_id])
  end

  def show; end

  def new
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new
  end

  def create
    @studio = Studio.find(params[:studio_id])
    @booking = Booking.new(validate_booking)
    @booking.studio = @studio
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path(current_user)
    else
      render :new
    end
  end

  def edit; end

  def update
    @booking.update(validate_booking)
    respond_to do |format|
      format.js { render "change_color", locals: { id: @booking.id, approval: @booking.approval } }
      format.html { redirect_to profile_path(current_user) }
    end
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
