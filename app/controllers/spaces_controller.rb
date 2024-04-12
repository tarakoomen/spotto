class SpacesController < ApplicationController
  # before_action before_action :authenticate_user!
  before_action :set_space, only: %i[ show edit update destroy ]

  def index
    if params[:query].present?
      @spaces = Space.search_by_name_location_and_price(params[:query])
    else
      @spaces = Space.all
    end
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to my_spaces_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @review = Review.new(booking: @booking)
  end

  def edit
  end

  def update
    if @space.update(space_params)
      redirect_to @space, notice: "This space was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @space.destroy!
    redirect_to my_spaces_url, notice: "Space was successfully destroyed.", status: :see_other
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :location, :price, :photo)
  end
end

def index
  @movies = Movie.all
  if params[:query].present?
    @movies = @movies.where(title: params[:query])
  end
end
