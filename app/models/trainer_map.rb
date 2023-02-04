class TrainerMap < ApplicationRecord
  # belongs_to :trainer_map

  belongs_to :user_id, class_name: 'Account'
  belongs_to :trainer_id, class_name: 'Account'


  #todo not sure about this code
  # accepts_nested_attributes_for :user_id, :trainer_id
end
