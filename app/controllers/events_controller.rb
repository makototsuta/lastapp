class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @events = Event.all
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
    @event = Event.find(params[:id])
  end

end
