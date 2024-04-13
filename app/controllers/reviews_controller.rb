class ReviewsController < ApplicationController
  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.booking = @booking
    # TO DO: add reference to user_id in reviews table @review.user = current_user
    if @review.save
      redirect_to space_path(@booking.space_id)
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
    params.require(:review).permit(:content, :rating, :booking_id)
  end
end
