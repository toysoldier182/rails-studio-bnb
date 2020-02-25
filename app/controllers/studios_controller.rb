class StudiosController < ApplicationController
  before_action :find_studio, only: [:show, :edit, :destroy]

  def index
    @studios = Studio.all
  end

  def show; end

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
    @studio = Studio.update(studio_params)
    redirect_to studio_path(@studio)
    raise
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
    params.require(:studio).permit(:name, :location, :price)
  end
end
