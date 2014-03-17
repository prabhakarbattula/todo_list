class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save

    redirect_to user_path(@user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    redirect_to user_path(@user.id)
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all.order('name')
  end

  def destroy
    @user = User.find(params[:id])
    @user.delete

    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:name, :sex, :phone)
  end

end
