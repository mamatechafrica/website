class ContactMailerController < ApplicationMailer
  default from: "no-reply@mamatech.co.ke"

  def contact_email(name, email, message)
    @name = name
    @message = message
    @reply_to = email
    mail(to: "naijeria@mamatech.co.ke", subject: "New Contact Form Submission", reply_to: email)
  end
end