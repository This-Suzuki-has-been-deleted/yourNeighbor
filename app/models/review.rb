class Review < ApplicationRecord
  belongs_to :maps, foreign_key: "maps_id"
  belongs_to :users. foreign_key: "email"
end
