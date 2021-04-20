class CreatePuzzles < ActiveRecord::Migration[6.0]
  def change
    create_table :puzzles do |t|
      t.string :title
      t.integer :size
      t.text :description
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
