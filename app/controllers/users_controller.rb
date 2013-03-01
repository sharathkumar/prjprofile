class UsersController < ApplicationController

	def new
	  @user = User.new  
	  @login = LogIn.new
	end

	def create               
	  @user = User.new(params[:user])
	  @login = @user.build_log_in(params[:log_in])
		respond_to do |format|
	  				if @user.save
	  					#render :text => @user.errors.to_yaml and return 
	  					flash[:notice] = "User Information saved"
	  					#redirect_to log_in_login_path 
	  					format.html { redirect_to log_in_login_index_path }
	  					format.json { head :no_content }	  					
	  				else
	  					#render :text => @user.errors.to_yaml and return 
	  					flash[:notice] = "User Information not saved"
	  					format.html {render "new"}
	  				end
		end
	end

    def show
    end

    def destroy
    	@users = User.find(params[:id])
    	@users.destroy
    	redirect_to admin_path
    end

    def edit
    end




end
