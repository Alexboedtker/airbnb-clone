class PuzzlesController < ApplicationController
  def index
    @puzzles = Puzzle.all
  end

  def show
    @puzzle = Puzzle.find(params[:id])
    @booking = Booking.new
  end

  def new
    @puzzle = Puzzle.new
  end

  def create
    @puzzle = Puzzle.new(puzzle_params)
    @puzzle.user = current_user
    if @puzzle.save
      redirect_to puzzles_path
    else
      render :new
    end
  end

  def my_puzzles
    @puzzles = Puzzle.where(user_id: current_user.id)
    @user = current_user
  end

  private

  def puzzle_params
    params.require(:puzzle).permit(:title, :size, :description, :photo, :price, :address)
  end
end
