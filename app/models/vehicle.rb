class Vehicle < ApplicationRecord
  belongs_to :citizen
  has_many :vehicle_services

  enum v_type: { A: 1, B: 2, C: 3, D: 4, E: 5, M: 6 }

  validates_presence_of :make
  validates_presence_of :model
  validates :vin, presence: true, length: { maximum: 17 }
  validates :v_type, presence: true
  validates :manufactured, length: { is: 4 }
  validates_presence_of :imported
end
