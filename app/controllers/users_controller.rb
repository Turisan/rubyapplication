class UsersController < ApplicationController
#	before_action :set_user, only: [:show, :edit, :update, :destroy]
#	skip_before_action :authorize, only: [:new, :create, :index]
	
  def new
  @user = User.new
  end

  def create
	@user = User.new(allowed_params)
	
	if @user.save
		redirect_to users_path
	else
		render 'new'
	end
  end

  def index
	@users = User.order("user_name")
  end

  def show
  end

  def edit
	@user = User.find(params[:id])
  end

  def update
	@user = User.find(params[:id])
	
	if @user.update_attributes(allowed_params)
		redirect_to users_path
	else
		render 'new'
	end
  end

  def delete
	@user = User.find(params[:id])
	@user.destroy
  end
  private
	def allowed_params
		params.require(:user).permit(:id, :user_name, :user_password, 
		:userType_id)
	end
end
