class Question < ApplicationRecord
  # include ActiveModel::Model
  # include ActiveModel::Conversion

   validates :title, :presence => true
   validates :text, :presence => true
  #
  #  def self.search(tag1) #ここでのself.はUser.を意味する
  #   if search
  #     where(['tag1 LIKE ?', "%#{tag1}%"]) #検索とnameの部分一致を表示。User.は省略
  #   else
  #     all #全て表示。User.は省略
  #   end
  # end
  #
  #  def persisted? ; false ; end
end
