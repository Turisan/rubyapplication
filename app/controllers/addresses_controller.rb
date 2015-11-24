class AddressesController < ApplicationController
layout false
  def new
	@address = Address.new
  end

  def create
	@address = Address.new(allowed_params)
	
	if @address.save
		redirect_to addresses_path
	else
		render 'new'
	end
  end

  def index
	@addresses = Address.order("company_id")
  end

  def show
	@address = Address.find(params[:id])
  end

  def edit
	@address = Address.find(params[:id])
  end

  def update
	@address = Address.find(params[:id])
	
	if @address.update_attributes(allowed_params)
		redirect_to addresses_path
	else
		render 'new'
	end
  end

  def delete
 # byebug
	@address = Address.find(params[:id])
	@address.destroy
#	redirect_to addresses_path
  end
  private
	def allowed_params
		params.require(:address).permit(:id, :company_id, :street1, 
		:street2, :city, :state, :zip, :country, :geo_tag)
	end	
end
