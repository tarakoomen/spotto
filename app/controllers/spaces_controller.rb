class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def show
    @space = Space.find(params[:id])
    # @favourite = Favourite.new
    # @booking = Booking.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def space_params
    params.require(:space).permit(:location, :price, :available, :name, :description)
  end
end
