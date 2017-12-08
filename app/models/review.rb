class Review < ApplicationRecord
  belongs_to :maps, primary_key: "maps_id", foreign_key: "maps_id"
  belongs_to :users, primary_key: "email", foreign_key: "email"
end
