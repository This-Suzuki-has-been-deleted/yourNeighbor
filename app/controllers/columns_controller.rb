<<<<<<< current
class ColumnsController < ApplicationController
  before_action :auth_user, {only: [:destroy]}
  def index
    @column = Column.all
  end

  def show
    @column = Column.find(params[:id])
  end

  def new
    @column = Column.new

  end

  def create
    column = params.require(:column).permit(:title, :text, :email).merge(email: current_user.email)
    check = Column.create(column)
    if check.save
      redirect_to columns_path, notice: '登録しました。'
    else
      redirect_to columns_path, notice: '登録に失敗しました。'
    end
  end

  def destroy
    Column.find(params[:id]).destroy
    flash[:success] = "削除されました。"
    redirect_to columns_path
  end

  # URL直打ちによる不正なアクセスに対応
  def auth_user
    column = Column.find(params[:id])
    if current_user.user_type != "admin" || current_user.email != column.email
      flash[:notice] = "権限がありません"
      redirect_to columns_path
    end
  end

end
=======
class ColumnsController < ApplicationController
  before_action :auth_user, {only: [:destroy]}
  def index
    @column = Column.all
  end

  def show
    @column = Column.find(params[:id])
  end

  def new
    @column = Column.new

  end

  def create
    column = params.require(:column).permit(:title, :text, :email).merge(email: current_user.email)
    check = Column.create(column)
    if check.save
      redirect_to columns_path, notice: '登録しました。'
    else
      redirect_to columns_path, notice: '登録に失敗しました。'
    end
  end

  def destroy
    Column.find(params[:id]).destroy
    flash[:success] = "削除されました。"
    redirect_to columns_path
  end

  # URL直打ちによる不正なアクセスに対応
  def auth_user
    column = Column.find(params[:id])
    if current_user.user_type != "admin" && current_user.email != column.email
      flash[:notice] = "権限がありません"
      redirect_to columns_path
    end
  end

end
>>>>>>> before discard
