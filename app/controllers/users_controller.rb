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
    user = User.find_by(email: params[:email])
    users = params.require(:user).permit(:username,:user_type)
    User.where('email=?',user.email).update(users)
    redirect_to users_path, notice: '更新しました。'
  end

  def destroy
    User.find_by(email: params[:email]).destroy
    flash[:success] = "削除されました。"
    redirect_to users_path
  end
end
