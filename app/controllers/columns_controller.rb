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
end
