class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:email])
  end
  
  def edit
    @users = User.find(params[:email])
  end
end
