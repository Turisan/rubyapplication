Rails.application.routes.draw do

  #get 'sessions/new'

 # get 'sessions/create'

 # get 'sessions/destroy'
  

  
 # get 'admin' => 'admin#index'
 # controller :sessions do
#	get 'login' => :new
#	post 'login' => :create
#	delete 'logout' => :destroy
#  end
  
 # root 'admin#index'

#************* tested *******************
	root 'welcome#index'
	
	resources :companyaddresses
	
  get 'companyaddresses/new'

  get 'companyaddresses/create'

  get 'companyaddresses/index'

  get 'companyaddresses/show'

  get 'companyaddresses/edit'

  get 'companyaddresses/update'

  get 'companyaddresses/delete'


	resources :contacts
  get 'contacts/new'

  get 'contacts/create'

  get 'contacts/index'

  get 'contacts/show'

  get 'contacts/edit'

  get 'contacts/update'

  get 'contacts/delete'


	resources :companies
	
  get 'companies/new'

  get 'companies/create'

  get 'companies/index'

  get 'companies/show'

  get 'companies/edit'

  get 'companies/update'

  get 'companies/delete'


	resources :resources
  get 'resources/new'

  get 'resources/create'

  get 'resources/index'

  get 'resources/show'

  get 'resources/edit'

  get 'resources/update'

  get 'resources/delete'


	resources :users
  get 'users/new'

  get 'users/create'

  get 'users/index'

  get 'users/show'

  get 'users/edit'

  get 'users/update'

  get 'users/delete'


	resources :usertypes
  get 'usertypes/new'

  get 'usertypes/create'

  get 'usertypes/index'

  get 'usertypes/show'

  get 'usertypes/edit'

  get 'usertypes/update'

  get 'usertypes/delete'
  
   

	resources :loginabilities

  get 'loginabilities/new'

  get 'loginabilities/create'

  get 'loginabilities/index'

  get 'loginabilities/show'

  get 'loginabilities/edit'

  get 'loginabilities/update'

  get 'loginabilities/delete'

  get 'loginabilities/destroy'

 
	resources :addresses
  get 'addresses/new'

  get 'addresses/create'

  get 'addresses/index'

  get 'addresses/show'

  get 'addresses/edit'

  get 'addresses/update'

  get 'addresses/delete'
  
#******* end tested ***************************


#	match ':controller(/:action(/:id))', :via => [:get, :post]
 
#********** Drinks  testing ******************
#resources :drinks
 # get 'drinks/index'

  #get 'drinks/show'

  #get 'drinks/new'

  #get 'drinks/create'

  #get 'drinks/edit'

  #get 'drinks/update'

  #get 'drinks/delete'

  #get 'drinks/destroy'
  

  
end
