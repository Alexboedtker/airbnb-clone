class ChangeRatingInPuzzles < ActiveRecord::Migration[6.0]
  def change
    change_column :puzzles, :rating, :float, default: 0 , null: false
  end
end
