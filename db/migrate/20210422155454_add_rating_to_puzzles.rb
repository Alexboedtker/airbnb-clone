class AddRatingToPuzzles < ActiveRecord::Migration[6.0]
  def change
    add_column :puzzles, :rating, :integer
  end
end
