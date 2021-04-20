class AddPhotoToPuzzles < ActiveRecord::Migration[6.0]
  def change
    add_column :puzzles, :photo, :string
  end
end
