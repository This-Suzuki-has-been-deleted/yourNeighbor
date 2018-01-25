class ColumnsController < ApplicationController
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
    user = current_user
    column = params.require(:column).permit(:title, :text, user)
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
end
