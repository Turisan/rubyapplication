class CompaniesController < ApplicationController
  def new
  @company = Company.new
  end

  def create
  @company = Company.new(allowed_params)
	
	if @company.save
		redirect_to companies_path
	else
		render 'new'
	end
  end

  def index
  @companies = Company.order("company_name")
  end

  def show
  end

  def edit
  @company = Company.find(params[:id])
  end

  def update
  @company = Company.find(params[:id])
	
	if @company.update_attributes(allowed_params)
		redirect_to companies_path
	else
		render 'new'
	end
  end

  def delete
  @company = Company.find(params[:id])
	@company.destroy
  end
  private
	def allowed_params
		params.require(:company).permit(:company_name, :company_hours, :resource_id)
	end
end
