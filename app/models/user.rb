class User < ApplicationRecord
  self.primary_key = "email"
  validates :userName, length: { maximum: 50 }



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
