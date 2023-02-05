class AddExerciseTypesToExercises < ActiveRecord::Migration[7.0]
  def change
    add_reference :exercises, :exercises_types
  end
end
