class Question < ApplicationRecord
  def self.search(search) #self.でクラスメソッドとしている
    if search
      Question.where("(tag1 like ?)",search).or("(tag2 like ?)",search).or("(tag3 like ?)" ,search)
    else
      Question.all #全て表示。
    end
  end
end
