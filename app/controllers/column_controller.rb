class ColumnController < ApplicationController
  def index
    @column = Column.all
  end

  def show
    id = params[:id]
  end
end
