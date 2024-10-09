class ContactMailer < ApplicationMailer
  default to: 'naijeria@mamatech.co.ke'  # Replace with your email

  def contact_email(name, email, message)
    @name = name
    @message = message
    mail(from: email, subject: 'New Contact Form Message')
  end
end

