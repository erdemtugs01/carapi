class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  
  include DeviseTokenAuth::Concerns::User

  has_many :vehicles
  enum role: { admin: 1, police: 2, insurance: 3, service: 4, api: 5 } 
end
