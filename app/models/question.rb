class Question < ApplicationRecord
belongs_to :user, primary_key: "e-mail", foreign_key: "e-mail"  

end
