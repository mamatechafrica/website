class ContactMailerController < ApplicationMailer
  default from: "no-reply@mamatech.co.ke"

  def contact_email(name, email, topic, message)
    @name = name
    @topic = topic
    @message = message
    @reply_to = email
    mail(
      to: "naijeria@mamatech.co.ke",
      from: email,
      subject: "#{topic}", reply_to: email)
  end
end
