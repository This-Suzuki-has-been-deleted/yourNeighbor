class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find_by(email: params[:email])
  end

  def edit
    @users = User.find_by(email: params[:email])
  end

  def update
    users = params.require(:user).permit(:username,:userType)
    User.where('email=?',@users.email).update(users)
    redirect_to users_path, notice: '更新しました。'
  end

  def destroy
    User.find_by(email: params[:email]).destroy
    flash[:success] = "削除されました。"
    redirect_to users_path
  end
end
