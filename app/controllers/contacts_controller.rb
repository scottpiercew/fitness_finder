class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you, and you will be the first to know about the launch date for The Quad!'
      redirect_to root_path
    else
      flash.now[:error] = 'Cannot send, please try again.'
      redirect_to root_path
    end
  end
end
