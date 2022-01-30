class Relationship < ApplicationRecord
  belongs_to :client, class_name: User
  belongs_to :artist, class_name: User
end
