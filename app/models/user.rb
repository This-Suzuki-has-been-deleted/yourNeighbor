class User < ApplicationRecord
  self.primary_key = "email"
  validates :username, length: { maximum: 50 }
  validates :user_type, length: { maximum: 50 }
  def to_param
    email
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
