class EventsController < ApplicationController

  def index
    @company = Company.all
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create!(event_params)
    redirect_to company_event_path
    @company = Company.all
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private
  def event_params
    params.require(:event).permit(:name, :event_type, :location, :company_id, :start_time, :end_time)
  end

end
