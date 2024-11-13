class ContactMailer < ApplicationMailer
  default to: "naijeria@gmail.com",
  from: "no-reply@demomailtrap.com"

  def contact_email(name, email, topic, message)
    mail(
      "reply-to": email_address_with_name(email, "#{name}"),
      topic: "#{topic}",
      body: message
    )

  end
end
