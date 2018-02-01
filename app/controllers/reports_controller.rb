class ReportsController < ApplicationController
  def new
    @report=Report.new
    @report_id = params[:id]
    @report_type = params[:report_type]
  end

  def index
    @report=Report.all
  end

  def show
    @report=Report.find(params[:id])
  end

  def create
    report = params.require(:report).permit(:report_text).merge(report_email: current_user.email)
    check = Report.create(report)
    path = Pathname.new(report.report_type)
    if check.save
      redirect_to path, notice: '通報しました。'
    else
      redirect_to path, notice: '通報に失敗しました。'
    end
  end
end
