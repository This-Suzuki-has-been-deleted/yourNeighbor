class Question < ApplicationRecord
self.primary_keys = :question_id
belongs_to :user, primary_keys: "email", foreign_key: "email"  

end
