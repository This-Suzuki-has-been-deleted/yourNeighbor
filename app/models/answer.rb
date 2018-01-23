class Answer < ApplicationRecord
  belongs_to :users, primary_key: "email", foreign_key: "email"
end
