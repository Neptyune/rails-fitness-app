class CreateExcersises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.string :notes
      t.references :workout, null: false, foreign_key: true
      # t.references :excersises
      t.timestamps
    end
  end
end
