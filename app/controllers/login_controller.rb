class LoginController < ApplicationController
	def show
		
	end

	def log_in

	end	

	def index

	end

	def login_process		
			@login = LogIn.find_by_user_name(params['username'])
			if @login
				respond_to do |format|
						if @login.password == params['password']
							flash[:notice] = "log in success.........."
							session[:id] = @login[:user_id]
				  					format.html { redirect_to admin_index_path }
				  					format.json {head :no_content}
						else
							flash[:notice] = "password error.........."	
							redirect_to log_in_login_index_path  

						end
				end
			else
				flash[:notice] = "invalid user..."	
				redirect_to log_in_login_index_path 
			end
	end
end
