class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :profile_image, :classification

  has_many :tattoos
end
