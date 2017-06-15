class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to root_path, notice: "Thank you, and you will be the first to know about the launch date for The Quad!"
    else
      redirect_to root_path, error: "Cannot send, please try again."
    end
  end
end
