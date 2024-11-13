class ContactFormController < ApplicationController
  def create

    contact_form_params = params.require(:contact_form).permit(:name, :email, :topic, :message)
    
    ContactMailer.contact_email(contact_form_params[:name], contact_form_params[:email], contact_form_params[:message]).deliver_now
    
    flash[:success] = "Your message has been sent successfully!"
    redirect_to :root 
  end
end

