class ClientController < ApplicationController

before_filter :find_client, only: [ :show, :edit, :update, :destroy ]
#before_filter :access_control
    
    def index
    	@client = Client.all
    end

	   
    def show
     
    end
    	
    	
    def new
    	@client = Client.new
    end
    
    
    	
    def edit
    	
    end
    
    	
    def create
    	@client = Client.create(params[:client])
    	@add = @client.additions.create
       if @client.errors.empty?
    			redirect_to client_path(@client)
    		else
    			render "new"
    		end	
    end
    
    
    def update
    	@client.update_attributes(params[:client])
    
      if @client.errors.empty?
    			redirect_to client_path(@client)
    		else
    			render "edit"
    		end
    end
    
    
    def destroy
    	@client.destroy
    	redirect_to action: "index"
    end

	private
		def find_client
			@client = Client.where(id: params[:id]).first
			
		end
		
	#	def access_control
	#		@user = User.where(id: params[:id]).first
	#		if @user.id>1
	#			render_403
	#		end
	#	end
end
