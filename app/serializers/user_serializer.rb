class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :classification, :profile_image

  has_many :tattoos
end
