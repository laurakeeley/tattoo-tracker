class User < ApplicationRecord
  has_many :tattoos
  has_many :artist_relationships, class_name: "Relationship", foreign_key: "artist_id"
  has_many :client_relationships, class_name: "Relationship", foreign_key: "client_id"
  has_many :artists, through: :artist_relationships, source: :artist
  has_many :clients, through client_relationships, source: :client
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
