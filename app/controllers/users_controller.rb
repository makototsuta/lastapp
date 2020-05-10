class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update]
  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      ContactMailer.contact_mail(@user).deliver  ##追記
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
