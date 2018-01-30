class ReportsController < ApplicationController
  def new
    @report=Report.new
  end

  def index
    @report=Report.all
  end

  def show
    @report=Report.find(params[:id])
  end
end
