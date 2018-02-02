class Question < ApplicationRecord
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Question.where("(tag3 like ?)","%"+search+"%")
    else
      Question.all #全て表示。
    end
  end
end
