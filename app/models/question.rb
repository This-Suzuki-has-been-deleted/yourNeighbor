class Question < ApplicationRecord
self.primary_keys = :question_id
  belongs_to :users, primary_key: "email", foreign_key: "email"

end
