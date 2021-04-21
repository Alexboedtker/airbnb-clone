class AddCoordinatesToPuzzles < ActiveRecord::Migration[6.0]
  def change
    add_column :puzzles, :address, :string
    add_column :puzzles, :latitude, :float
    add_column :puzzles, :longitude, :float
  end
end
