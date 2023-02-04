class CreateWorkoutTemplates < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_templates do |t|
      t.string :name
      t.integer :public
      t.string :day_of_week
      # t.references :workout_template_map, null: false, foreign_key: true

      t.timestamps
    end
  end
end
