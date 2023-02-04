class CreateExcersiseTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :exercise_templates do |t|
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.references :exercise_type, null: false, foreign_key: true
      t.references :workout_template, null: false, foreign_key: true

      t.timestamps
    end
  end
end
