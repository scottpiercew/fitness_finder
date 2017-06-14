class PagesController < ApplicationController

  def landing
    @contact = Contact.new
  end

end
