class CompaniesController < ApplicationController
before_action :authenticate_user!

  def index
    @company = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create!(company_params)
    redirect_to company_path(@company), notice: "Your company was successfully added to The Quad!"
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to company_path(@company)
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end

  private
  def company_params
    params.require(:company).permit(:name, :company_type, :img_url)
  end
end
