class Question < ApplicationRecord
  belongs_to :user, primary_key => "email"
  belongs_to :user, foreign_key => "email"
end
