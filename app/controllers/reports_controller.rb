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
    if check.save
      redirect_to column_path, notice: '登録しました。'
    else
      redirect_to colmun_path, notice: '登録に失敗しました。'
    end
  end
end
