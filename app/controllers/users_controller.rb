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
end
