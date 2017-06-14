class PagesController < ApplicationController

  def landing
    render :layout => 'landing'
    @contact = Contact.new
  end

end
