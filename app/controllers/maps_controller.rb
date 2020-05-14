class MapsController < ApplicationController
  def index
    @maps = Map.all
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
    @map = Map.find(params[:id])
  end
end
