class AddUserToPuzzles < ActiveRecord::Migration[6.0]
  def change
    add_reference :puzzles, :user, null: false, foreign_key: true
  end
end
