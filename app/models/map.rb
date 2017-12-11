class Map < ApplicationRecord
  self.primary_keys = :maps_id, :email
  belongs_to :users, primary_key: "email,", foreign_key: "email"
  has_many :revews, foreign_key: "maps_id"
end
