class User < ApplicationRecord
  has_many :tattoos
  
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
