class PagesController < ApplicationController
  def home
  end

  def submit_contact
    @name = params[:name]
    @email = params[:email]
    @topic = params[:topic]
    @message = params[:message]

    ContactMailer.contact_email(@name, @email, @topic, @message).deliver_now

    flash[:notice] = "Your message has been sent successfully!"
    redirect_to root_path
  end
end
