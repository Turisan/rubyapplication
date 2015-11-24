class ContactsController < ApplicationController
  def new
  @contact = Contact.new
  end

  def create
  @contact = Contact.new(allowed_params)
	
	if @contact.save
		redirect_to contacts_path
	else
		render 'new'
	end
  end

  def index
  @contacts = Contact.order("contact_name")
  end

  def show
  end

  def edit
  @contact = Contact.find(params[:id])
  end

  def update
  @contact = Contact.find(params[:id])
	
	if @contact.update_attributes(allowed_params)
		redirect_to contacts_path
	else
		render 'new'
	end
  end

  def delete
  @contact = Contact.find(params[:id])
	@contact.destroy
  end
  private
	def allowed_params
		params.require(:contact).permit(:id, :phone, :phone_type, :website,
		:email, :contact_name, :company_id)
	end
end
