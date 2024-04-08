class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    # @spaces = Space.all
    @spaces = Space.order("RANDOM()").limit(9)
  end
end
