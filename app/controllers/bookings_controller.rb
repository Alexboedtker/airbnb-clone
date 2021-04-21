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

    # redirect_to
  end


  private

  def booking_params
    params.require(:booking).params(:start_date, :end_date)
  end
end
