class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # @spaces = Space.order("RANDOM()").limit(9)
    @spaces = Space.all
  end

  def my_spaces
    @spaces = Space.where(user_id: current_user)
  end
end
