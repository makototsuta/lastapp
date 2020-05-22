class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]

  def index
    @experiences = Experience.all
    danger_level = Experience.select(:danger_level)
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      redirect_to experiences_path, notice: "心霊体験を投稿しました！"
    else
      render :new
    end
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def destroy
    @experience.destroy
    redirect_to experiences_path, notice:"イベントを削除しました！"
  end

  def edit
  end

  def update
    if @experience.update(experience_params)
      redirect_to experiences_path, notice: "イベントを編集しました！"
    else
      render :edit
    end
  end

  private
  def experience_params
    params.require(:experience).permit(:title, :content, :icon, :icon_cache, :outline, :danger_level, :number_of_incident, :procedure)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end

end
