class ExerciseTemplate < ApplicationRecord
  belongs_to :excersise_type
  belongs_to :workout_template
end
