class ContactMailer < ApplicationMailer
  default to: "naijeria@gmail.com",
  from: "no-reply@mamatech.co.ke"

  def contact_email(name, email, topic, message)
    mail(
      from: "no-reply@mamatech.co.ke",
      reply_to: email_address_with_name(email, name),
      subject: topic,
      body: message
    )
  end
end
