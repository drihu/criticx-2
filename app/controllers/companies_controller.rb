class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    render json: @companies
  end

  def update
    @company = Company.find(params[:id])
    if @company.update_attributes(company_params)
      render json: @company
    else
      render json: @company.errors, status: :unprocessable_entity
    end
  end

  def show
    @company = Company.find(params[:id])
    render json: @company
  end

  private
  def company_params
    params.require(:company).permit(:name, :description, :start_date, :country)
  end
end
