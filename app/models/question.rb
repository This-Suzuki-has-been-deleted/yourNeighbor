class Question < ApplicationRecord
   validates :title, :presence => true
   validates :text, :presence => true
   def self.search(search) #ここでのself.はUser.を意味する
    if search
      where(['tag1 LIKE ? OR tag2 LIKE ? OR tag3 = ?', "%#{search}%" , "%#{search}%" , "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
    else
      all #全て表示。User.は省略
    end
  end
end
