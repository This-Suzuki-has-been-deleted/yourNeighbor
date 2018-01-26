class Map < ApplicationRecord
  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Map.where("map_name like '%" + word + "%'")
    else
      Map.all #全て表示。
    end
  end
end
