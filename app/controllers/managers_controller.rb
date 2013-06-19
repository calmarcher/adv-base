class ManagersController < ApplicationController

before_filter :find_manager, only: [ :show, :edit, :update, :destroy ]
#before_filter :access_control

    def index
    	@manager = Manager.all
    end


    def show
      if @manager.client_id.nil? && @manager.user_id.nil?
  @msg = "No client found for this order"
      else
      @clie = @manager.client
     @client= @clie.name
     @us = @manager.user
     @user = @us.login
      end
    end


    def new
    	@manager = Manager.new
    end



    def edit

    end


    def create
    	@manager = Manager.create(params[:manager])
    		if @manager.errors.empty?
    			redirect_to manager_path(@manager)
    		else
    			render "new"
    		end
    end


    def update
    	@manager.update_attributes(params[:manager])
    		if @manager.errors.empty?
    			redirect_to manager_path(@manager)
    		else
    			render "edit"
    		end
    end


    def destroy
    	@manager.destroy
    	redirect_to action: "index"
    end

	private
		def find_manager
			@manager = Manager.where(id: params[:id]).first

		end

	#	def access_control
	#		@user = User.where(id: params[:id]).first
	#		if @user.id>1
	#			render_403
	#		end
	#	end



end
