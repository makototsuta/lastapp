class ContactMailer < ApplicationMailer
  def contact_mail(favorite_event, user)
    @favorite_event = favorite_event
    @user = user
    mail to: @user.email, subject: "イベント参加確認メール"
  end

  def owner_mail(favorite_event, user)
    @favorite_event = favorite_event
    @user = user
    mail to: @favorite_event.event.user.email, subject: "イベント参加確認メール"
  end

  def contact_cancel_mail(favorite_event, user)
    @favorite_event = favorite_event
    @user = user
    mail to: @user.email, subject: "イベントキャンセルメール"
  end

  def owner_cancel_mail(favorite_event, user)
    @favorite_event = favorite_event
    @user = user
    mail to: @favorite_event.event.user.email, subject: "イベントキャンセル確認メール"
  end
end
