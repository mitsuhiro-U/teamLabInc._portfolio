class UsersController < ApplicationController

  before_action :authenticate_user!

  def show
    @user = current_user
    @reports = current_user.reports
  end

  def edit
    @user = current_user
  end

  def update
    user = current_user
    if user.update(user_params)
      flash[:notice] = "ユーザー情報を編集しました。"
      redirect_to users_edit_path
    else
      flash[:alert] = "ユーザー情報を編集に失敗しました。"
      render :users_edit_path
    end
  end

  def withdrawal
  end

  def withdrawal_update
    user = current_user
    user.update(is_active: false)
    reset_session
    flash[:notice] = "退会処理が完了しました"
    redirect_to top_path
  end

  private

  def user_params
    params.require(:user).permit(:nickname)
  end

end
