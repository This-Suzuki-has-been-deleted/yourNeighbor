class Map < ApplicationRecord
  belongs_to :users, foreign_key: "email"
  has_many :revews, foreign_key: "maps_id"
end
