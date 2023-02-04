class WorkoutTemplateMap < ApplicationRecord
  # belongs_to :account
  belongs_to :user_id, class_name: :Account
  belongs_to :workout_template_id, class_name: :WorkoutTemplate
end
