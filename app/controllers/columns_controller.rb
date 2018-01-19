class ColumnsController < ApplicationController
  def index
    @column = Column.all
  end

  def show
    id = params[:id]
  end

  def new
    @column = Column.new
  end

  def create
    column = params.require(:column).permit(:title, :text)
    Column.create(column)
  end
end
