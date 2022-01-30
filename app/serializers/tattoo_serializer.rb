class TattooSerializer < ActiveModel::Serializer
  attributes :id, :price, :time

  belongs_to :user
  has_many :images
end
