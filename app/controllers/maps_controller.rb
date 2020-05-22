class MapsController < ApplicationController
  before_action :set_map, only: [:show, :edit, :update, :destroy]

  def index
    @maps = Map.all
    @events = Event.order(created_at: :desc).limit(3)
    @movies = Movie.order(created_at: :desc).limit(3)
  end

  def new
    @map = Map.new
  end

  def create
    @map = Map.new(map_params)
    if @map.save
      redirect_to maps_path, notice: "心霊スポットを投稿しました！"
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @map.destroy
    redirect_to maps_path, notice:"マップを削除しました！"
  end

  def edit
  end

  def update
    if @map.update(map_params)
      redirect_to maps_path, notice: "マップを編集しました！"
    else
      render :edit
    end
  end

  private
  def map_params
    params.require(:map).permit(:name, :address, :horror_level, :content, :icon, :icon_cache)
  end

  def set_map
    @map = Map.find(params[:id])
  end

end
