class ReportsController < ApplicationController
  def new
    @report = Report.new

  end

  def create
    @report = Report.new(new_report_params)
    if @report.save
      flash[:notice] = "新規レポートを投稿しました。"
      redirect_to users_show_path
    else
      render :new
    end
  end

  def show
    @report = Report.find(params[:id])
  end

  def edit
    @report = Report.find(params[:id])
  end

  def update
    @report = Report.find(params[:id])
    if @report.update(uodate_report_params)
      flash[:notice] = "レポートを更新しました。"
      redirect_to users_show_path
    else
      render :edit
    end

  end

  def index
  end

  def destroy
    report = Report.find(params[:id])
    report.destroy
    flash[:notice] = "対象のレポートを削除しました。"
    redirect_to users_show_path
  end

  private

  def new_report_params
    params.require(:report).permit(:user_id, :title, :mountain_name, :elevation, :walking_time, :difficulty, :comment)
  end

  def uodate_report_params
    params.require(:report).permit(:user_id, :title, :mountain_name, :elevation, :walking_time, :difficulty, :comment)
  end

end
