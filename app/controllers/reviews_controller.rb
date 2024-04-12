class ReviewsController < ApplicationController
  # before_action :authenticate_user!

  def new
    # @space = Space.find(params[:space_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    # @space = Space.find(params[:space_id])
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    if @review.save
      redirect_to space_path(@space)
    else
      render "bookings/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to booking_path(@review.booking)
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
