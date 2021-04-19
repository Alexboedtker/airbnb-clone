class PuzzlesController < ApplicationController
  def index
    @puzzles = Puzzle.all
  end

  def new
    @puzzle = Puzzle.new
  end

  def create
    @puzzle = Puzzle.new(puzzle_params)
    if @puzzle.save
      redirect_to puzzle_path(@puzzle)
    else
      render :new
    end
  end

  private

  def puzzle_params
    params.require(:puzzle).permit(:title, :size, :description)
  end
end
