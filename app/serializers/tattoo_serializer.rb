class TattooSerializer < ActiveModel::Serializer
  attributes :id, :price, :time

  belongs_to :user
end
