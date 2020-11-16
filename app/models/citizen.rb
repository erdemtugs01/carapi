class Citizen < ApplicationRecord
  has_many :vehicles

  validates :register_no, presence: true, length: { is: 10 }
  validates :first_name, presence: true, length: { maximum: 32 }
  validates :last_name, presence: true, length: { maximum: 32 }
end
