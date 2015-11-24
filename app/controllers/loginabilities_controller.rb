class LoginabilitiesController < ApplicationController
  def new
	@login = Loginability.new
  end

  def create
	@login = Loginability.new(allowed_params)
	
	if @login.save
		redirect_to loginabilities_path
	else
		render 'new'
	end
  end

  def index
	@logins = Loginability.order("login")
  end

  def show
  end

  def edit
	@login = Loginability.find(params[:id])
  end

  def update
	@login = Loginability.find(params[:id])
	
	if @login.update_attributes(allowed_params)
		redirect_to loginabilities_path
	else
		render 'new'
	end
  end

  def delete
  end

  def destroy
  end
  private
	def allowed_params
		params.require(:loginability).permit(:id, :login, :password, 
		:readaccess, :createaccess, :editaccess, :deleteaccess)
	end		
end
