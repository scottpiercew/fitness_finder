class EventsController < ApplicationController
before_action :authenticate_user!

  def index
    @company = Company.all
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
    @company = Company.find(params[:company_id])
  end

  def create
    @company = Company.find(params[:company_id])
    @event = @company.events.create!(event_params)
    redirect_to company_event_path(@company, @event), notice: "Your class was successfully added to The Quad!"
  end

  def edit
    @company = Company.find(params[:company_id])
    @event = Event.find(params[:id])
  end

  def update
    @company = Company.find(params[:company_id])
    @event = Event.find(params[:id])
    @event.update!(event_params)
    redirect_to company_event_path(@company, @event)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to companies_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :event_type, :location, :company_id, :start_time, :end_time)
  end

end
