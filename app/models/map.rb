class Map < ApplicationRecord
  self.primary_keys = :maps_id
  has_many :revews, foreign_key: "maps_id"
end
