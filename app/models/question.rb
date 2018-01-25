class Question < ApplicationRecord
self.primary_keys = :question_id
belongs_to :user, primary_key: "e-mail", foreign_key: "e-mail"  

end
