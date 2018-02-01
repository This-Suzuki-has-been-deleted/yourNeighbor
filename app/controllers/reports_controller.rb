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
    report = params.require(:report).permit(:report_text,:report_type,:report_id).merge(report_email: current_user.email)
    check = Report.create(report)
    if check.save
      case check.report_text
        when "column" then
          redirect_to columns_path, notice: '通報しました。'
        when "question" then
          redirect_to questions_path, notice: '通報しました。'
        when "map" then
          redirect_to maps_path, notice: '通報しました。'
        else
          redirect_to maps_path, notice: '不明なエラーが発生しました。'
      end
    else
      redirect_to columns_path, notice: '通報に失敗しました。'
    end
  end
end
