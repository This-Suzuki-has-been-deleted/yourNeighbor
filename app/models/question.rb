class Question < ApplicationRecord
belongs_to :user , Class_name => "User"
 foreign_key: "email"

end
