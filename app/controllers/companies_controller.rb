class CompaniesController < ApplicationController
  before_action :get_company, only: [:show]

  def index
    @companies = Company.all
  end

  def show
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    redirect_to company_path(@company)
  end

  private
  def get_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:company_name, :company_desc, :dollars)
  end
end
