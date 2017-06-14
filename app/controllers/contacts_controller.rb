class ContactsController < ApplicationController

  def index
    render :layout => 'landing'
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash[:notice] = t('contacts.delivery')
      redirect_to root_path
    else
      flash.now[:error] = t('contacts.error')
      render :new
    end
  end
end
