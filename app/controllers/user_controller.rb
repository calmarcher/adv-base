class UserController < ApplicationController

before_filter :find_user, only: [ :show, :edit, :update, :destroy ]
#before_filter :access_control
    
    def index
    	@user = User.all
    end

	   
    def show   
    end
    	
    	
    def new
    	@user = User.new
    end
    
    
    	
    def edit
    	
    end
    
    	
    def create
    	@user = User.create(params[:user].merge(:status => 3))
    		if @user.errors.empty?
    			redirect_to user_path(@user)
    		else
    			render "new"
    		end	
    end
    
    
    def update
    	@user.update_attributes(params[:user])
    		if @user.errors.empty?
    			redirect_to user_path(@user)
    		else
    			render "edit"
    		end
    end
    
    
    def destroy
    	@user.destroy
    	redirect_to action: "index"
    end

	private
		def find_user
			@user = User.where(id: params[:id]).first
			
		end
		
	#	def access_control
	#		@user = User.where(id: params[:id]).first
	#		if @user.id>1
	#			render_403
	#		end
	#	end
end
