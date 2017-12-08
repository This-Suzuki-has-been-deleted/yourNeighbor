class User < ApplicationRecord
  self.primary_key = "email_id"
  has_many :maps, foreign_key: "email"
  has_many :reviews, foreign_key: "email"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validaters :Users.email_id,
  #未入力チェック
  :presence => true
  #適切な文字か
  :format => {:with => /^([^@\s])@((?:[-a-z0-9]\.)[a-z]{2,})$/i}
  #唯一性チェック
  :uniqueness => true

  validaters :Users.name,
  #未入力チェック
  :presence => true
  #適切な文字か
  :format => {:with => /^([^@\s])@((?:[-a-z0-9]\.)[a-z]{2,})$/i}

  validaters :Users.password,
  #未入力チェック
  :presence => true
  #文字数チェック
  :length => {:minimum => 8, :maximum => 20}
  #入力された文字に決められたワードがあるか
  :inclusion => { :in => %w([a-z]) && %w([0-9]) && %w([A-Z]) }

  validaters : Users.userAnswer
  #未入力チェック
  :presence => true

            end
