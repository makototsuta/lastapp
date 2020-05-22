class FavoriteEventsController < ApplicationController
  def create
    @user = current_user
    favorite_event = current_user.favorite_events.create(event_id: params[:event_id])
    ContactMailer.contact_mail(favorite_event, @user).deliver
    ContactMailer.owner_mail(favorite_event, @user).deliver
    redirect_to events_url, notice: "#{favorite_event.event.title}を参加登録しました"
  end
  def destroy
    @user = current_user
    favorite_event = current_user.favorite_events.find_by(id: params[:id]).destroy
    ContactMailer.contact_cancel_mail(favorite_event, @user).deliver
    ContactMailer.owner_cancel_mail(favorite_event, @user).deliver
    redirect_to events_url, notice: "#{favorite_event.event.title}の参加をキャンセルしました"
  end
end
