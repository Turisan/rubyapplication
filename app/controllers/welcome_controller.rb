class WelcomeController < ApplicationController
layout 'index'
  def index
	@resources = Resource.order("resource_name")
  end
end
