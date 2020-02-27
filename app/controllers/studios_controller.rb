class StudiosController < ApplicationController
  before_action :find_studio, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @studios = Studio.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @studio = Studio.new
  end

  def create
    @studio = Studio.new(studio_params)
    @studio.user = current_user
    if @studio.save
      redirect_to studio_path(@studio)
    else
      render :new
    end
  end

  def edit; end

  def update
    @studio.update(studio_params)
    redirect_to studio_path(@studio)
  end


  def destroy
    @studio.destroy
    redirect_to studios_path
  end

  private

  def find_studio
    @studio = Studio.find(params[:id])
  end

  def studio_params
    params.require(:studio).permit(:name, :location, :price, photos: [])
  end
end
