class Citizen < ApplicationRecord
  has_many :vehicles

  validates :register_no, presence: true, length: { is: 10 }
  validates :first_name, presence: true, length: { less_than_or_equal_to: 32 }
  validates :last_name, presence: true, length: { less_than_or_equal_to: 32 }
end
