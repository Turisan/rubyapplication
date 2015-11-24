class CompanyaddressesController < ApplicationController
  def new
  @companyaddress = Companyaddress.new
  end

  def create
  @companyaddress = Companyaddress.new(allowed_params)
	
	if @companyaddress.save
		redirect_to companyaddresses_path
	else
		render 'new'
	end
  end

  def index
  @companyaddresses = Companyaddress.order("company_id")
  end

  def show
  end

  def edit
  @companyaddress = Companyaddress.find(params[:id])
  end

  def update
  @companyaddress = Companyaddress.find(params[:id])
	
	if @companyaddress.update_attributes(allowed_params)
		redirect_to companyaddresses_path
	else
		render 'new'
	end
  end

  def delete
  @companyaddress = Companyaddress.find(params[:id])
	@companyaddress.destroy
  end
  private
	def allowed_params
		params.require(:companyaddress).permit(:id, :company_id, :address_id)
	end
end
