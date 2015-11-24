class UsertypesController < ApplicationController
  def new
	@usertype = Usertype.new
  end

  def create
	@usertype = Usertype.new(allowed_params)
	
	if @usertype.save
		redirect_to usertypes_path
	else
		render 'new'
	end
  end

  def index
	@usertypes = Usertype.order("admin_user")
  end

  def show
  end

  def edit
	@usertype = Usertype.find(params[:id])
  end

  def update
	@usertype = Usertype.find(params[:id])
	
	if @usertype.update_attributes(allowed_params)
		redirect_to usertypes_path
	else
		render 'new'
	end
  end

  def delete
	@usertype = Usertype.find(params[:id])
	@usertype.destroy
  end
  private
	def allowed_params
		params.require(:usertype).permit(:id, :admin_user, :company_user, 
		:basic_user, :ability_id)
	end
end
