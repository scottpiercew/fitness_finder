class EventsController < ApplicationController

  def index
    @company = Company.all
    @event = Event.all
  end

  def show

  end
  
  def new

  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end

end
