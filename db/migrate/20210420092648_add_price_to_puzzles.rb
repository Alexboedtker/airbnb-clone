class AddPriceToPuzzles < ActiveRecord::Migration[6.0]
  def change
    add_column :puzzles, :price, :integer
  end
end
