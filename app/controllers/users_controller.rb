class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      ContactMailer.contact_mail(@user).deliver
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path, notice: "ユーザーを編集しました！"
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :icon, :address, :sex, :mobile_number, :birthed_at, :introduction, :icon_cache)
  end
end
