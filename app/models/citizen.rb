class Citizen < ApplicationRecord
  has_many :citizen_vehicles
  has_many :vehicles, through: :citizen_vehicles

  validates :register_no, presence: true, length: { is: 10 }
  validates :first_name, presence: true, length: { maximum: 32 }
  validates :last_name, presence: true, length: { maximum: 32 }
end
