class SpacesController < ApplicationController
  before_action :set_space, only: %i[ show edit update destroy ]

  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to space_path(@space)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @reviews = @space.reviews
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
    redirect_to spaces_url, notice: "Space was successfully destroyed.", status: :see_other
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:name, :description, :location, :price, :photo)
  end
end
