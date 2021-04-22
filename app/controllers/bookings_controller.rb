class BookingsController < ApplicationController

  def new
    @puzzle = Puzzle.find(params[:puzzle_id])
    @booking = Booking.new
  end

  def create
    @puzzle = Puzzle.find(params[:puzzle_id])
    @booking = Booking.new(booking_params)
    @booking.puzzle = @puzzle
    @booking.user = current_user
    @booking.save

    redirect_to my_bookings_path
  end

  def my_bookings
    @bookings = Booking.where(user_id: current_user.id)
    @user = current_user
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
