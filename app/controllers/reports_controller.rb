class ReportsController < ApplicationController
  def new
    @report = Report.new

  end

  def create
    report = Report.new(new_report_params)
    if errors.any?
      flash[:alert] = "新規レポートの投稿に失敗しました。すべての項目が入力必須です。"
      render :users_show_path
    else
      report.save
      flash[:notice] = "新規レポートを投稿しました。"
      redirect_to users_show_path
    end
  end

  def show
  end

  def edit
  end

  def index
  end

  def update
  end

  def destroy
  end

  private

  def new_report_params
    params.require(:report).permit(:user_id, :title, :mountain_name, :elevation, :walking_time, :difficulty, :comment)
  end

end
