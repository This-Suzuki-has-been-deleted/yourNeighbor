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

  def create
    report = params.require(:report).permit(:report_text).merge(email: current_user.email, report_type: )
  end
end
