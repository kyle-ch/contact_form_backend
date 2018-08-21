class ContactMailer < ApplicationMailer
  default from: ENV["SENDER_EMAIL"]
  layout 'mailer'

  def new_email
    @mail = params[:mail]
    puts "EMAIL SENT TO: #{ENV["RECIPIENT_EMAIL"]}"
    mail(to: ENV["RECIPIENT_EMAIL"], subject: 'You have a new notification.')
  end
end
