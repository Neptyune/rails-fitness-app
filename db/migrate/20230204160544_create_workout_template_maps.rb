class CreateWorkoutTemplateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :workout_template_maps do |t|
      # t.references :account, null: false, foreign_key: true
      # t.references :workout_template, null: false, foreign_key: true
      t.integer :workout_template_id
      t.integer :user_id


      t.timestamps
    end
  end
end
