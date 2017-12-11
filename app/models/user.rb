class User < ApplicationRecord
  self.primary_key = "email"
  has_many :maps, foreign_key: "email"
  has_many :reviews, foreign_key: "email"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
