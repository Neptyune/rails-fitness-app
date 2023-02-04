class CreateTrainerMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :trainer_maps do |t|
      t.string :student_id
      t.string :trainer_id

      t.timestamps
    end
  end
end
