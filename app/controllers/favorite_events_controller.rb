class FavoriteEventsController < ApplicationController
  def create
    favorite_event = current_user.favorite_events.create(event_id: params[:event_id])
    redirect_to events_url, notice: "#{favorite_event.event.user.name}さんのブログをお気に入り登録しました"
  end
  def destroy
    favorite_event = current_user.favorite_events.find_by(id: params[:id]).destroy
    redirect_to events_url, notice: "#{favorite_event.event.user.name}さんのブログをお気に入り解除しました"
  end
end
