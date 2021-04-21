class DeletePhotoFromPuzzle < ActiveRecord::Migration[6.0]
  def change
    remove_column :puzzles, :photo, :string
  end
end
