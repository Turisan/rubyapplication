class ResourcesController < ApplicationController
  def new
  @resource = Resource.new
  end

  def create
  @resource = Resource.new(allowed_params)
	
	if @resource.save
		redirect_to resources_path
	else
		render 'new'
	end
  end

  def index
  @resources = Resource.order("resource_name")
  end

  def show
  end

  def edit
  @resource = Resource.find(params[:id])
  end

  def update
  @resource = Resource.find(params[:id])
	
	if @resource.update_attributes(allowed_params)
		redirect_to resources_path
	else
		render 'new'
	end
  end

  def delete
  @resource = resource.find(params[:id])
	@resource.destroy
  end
  private
	def allowed_params
		params.require(:resource).permit(:id, :resource_name, :resource_type,
		:description, :user_id)
	end
end
