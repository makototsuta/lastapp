class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @q = Event.ransack(params[:q])
    @events = @q.result(distinct: true)
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to events_path, notice: "イベントを作成しました！"
    else
      render :new
    end
  end

  def show
    if user_signed_in?
      @event = Event.find(params[:id])
      @favorite_event = current_user.favorite_events.find_by(event_id: @event.id)
    else
      @event = Event.find(params[:id])
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice:"イベントを削除しました！"
  end

  def edit
  end

  def update
    if @event.update(event_params)
      redirect_to events_path, notice: "イベントを編集しました！"
    else
      render :edit
    end
  end

  private
  def event_params
    params.require(:event).permit(:title, :content, :icon, :icon_cache, :organizer_id, :day_time_at, :participant_number, :address, :outline, :user_id)
  end

  def set_event
    begin
      @event = current_user.events.find(params[:id])
    rescue
      redirect_to events_url
    end
  end

end
