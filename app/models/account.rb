class Account < ApplicationRecord
  has_secure_password
  has_many :trainer_maps
  validates :username, :email, uniqueness: true
end
