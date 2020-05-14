class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
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
end
