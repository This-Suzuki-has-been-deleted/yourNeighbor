class User < ApplicationRecord
  self.primary_key = "email"
  has_many :maps, foreign_key: "email"
  has_many :reviews, foreign_key: "email"
  has_many :questions, foreign_key: "email"
  has_many :answers, foreign_key: "email"
  validates :userName, presence: true, length: { maximum: 50 }



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
