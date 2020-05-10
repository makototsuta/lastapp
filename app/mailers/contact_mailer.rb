class ContactMailer < ApplicationMailer
  def contact_mail(user)
    @user = user
    mail to: "makoto1850@gmail.com", subject: "ユーザー登録確認メール"
  end
end
