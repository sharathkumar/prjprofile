class AdminController < ApplicationController

	def show
		@admin_details = User.find_by_id(session[:id])
		@user = User.all
	end

	def index

	end

	def edit
		
	end	
	
end
