class MapsController < ApplicationController
  before_action :set_map, only: [:edit, :update, :destroy]

  def index
    @q = Map.ransack(params[:q])
    @maps = @q.result(distinct: true).order(:id)
    @events = Event.order(created_at: :desc).limit(3)
    @movies = Movie.order(created_at: :desc).limit(3)
  end

  def new
    if current_user.admin?
      @map = Map.new
    end
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
    @map = Map.find(params[:id])
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
    if current_user.admin?
      @map = Map.find(params[:id])
    end
  end

end
