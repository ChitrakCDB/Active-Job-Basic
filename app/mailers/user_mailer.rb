class UserMailer < ApplicationMailer
    def send_notification_mail(article)
        @article = article
        mail(to: User.pluck(:email),subject: 'Showcasing Active Job Demo for')
    end
end
