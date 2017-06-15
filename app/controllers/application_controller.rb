class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  rescue_from ActiveRecord::RecordNotFound, with: :couldnt_find_record
  rescue_from NoMethodError, with: :no_method_error

  def after_sign_in_path_for(resource)
  companies_path
  end

  private
  def couldnt_find_record
    redirect_to root_url, notice: "Sorry, It appears that record doesn't exist!"
  end
  def no_method_error
    redirect_to root_url, notice: "The developer is working on this issue."
  end
end
