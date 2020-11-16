class Vehicle < ApplicationRecord
  belongs_to :citizen
  has_many :vehicle_services

  enum v_type: { A: 1, B: 2, C: 3, D: 4, E: 5, M: 6 }
end
