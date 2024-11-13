class PagesController < ApplicationController
  def home
  end

# Handles the submission of the contact form by extracting parameters,
# sending an email using the ContactMailer, and redirecting to the root path
# with a success notice.
  def submit_contact
    @name = params[:name]
    @email = params[:email]
    @topic = params[:topic]
    @message = params[:message]

    ContactMailer.contact_email(name, email, topic, message).deliver_now

    flash[:notice] = "Your message has been sent successfully!"
    redirect_to root_path
  end
end
