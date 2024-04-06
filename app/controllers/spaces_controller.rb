class SpacesController < ApplicationController
  def index
    @spaces = Space.where(user_id: current_user)
      if @spaces.any?
        link_to "My Car Space listings", spaces_path
      else
        "You currently don't have any car spaces listed. Do you want to create a new listing?"
        link_to "Create a new listing", new_space_path
      end
  end

  def new
    @space = Space.new
  end

  def show
    @space = Space.find(params[:id])
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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def space_params
    params.require(:space).permit(:name, :description, :location, :price)
  end
end
