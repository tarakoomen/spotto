class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space_id = params[:space_id]
    @booking.user = current_user
    if @booking.save!
      redirect_to bookings_path, notice: 'Booking was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @review = Review.new(space: @space)
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, notice: 'Booking was successfully destroyed.'
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start, :end)
  end
end
