class MagazineController < ApplicationController
before_filter :find_mag, only: [ :show, :edit, :update, :destroy ]

def index
    	@magazine = Magazine.all
    end


    def show

      if @magazine.client_id.nil?
  @msg = "No client found for this order"
      else
      @clie = @magazine.client
     @msg= @clie.name
      end
    end


    def new
    	@magazine = Magazine.new
    end



    def edit

    end


    def create

      @magazine = Magazine.create(params[:magazine])
    		if @magazine.errors.empty?
    			redirect_to magazine_path(@magazine)
    		else
    			render "new"
    		end
    end


    def update

    	@magazine.update_attributes(params[:magazine])
    		if @magazine.errors.empty?
    			redirect_to magazine_path(@magazine)
    		else
    			render "edit"
    		end
    end


    def destroy
    	@magazine.destroy
    	redirect_to action: "index"
    end

	private
		def find_mag
			@magazine = Magazine.where(id: params[:id]).first

		end

end
