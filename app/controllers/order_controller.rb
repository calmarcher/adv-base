class OrderController < ApplicationController

  before_filter :find_order, only: [ :show, :edit, :update, :destroy ]

def index
    	@order = Order.all
    end

	   
    def show
      
      if @order.client_id.nil?
  @msg = "No client found for this order"
      else
      @clie = @order.client
     @msg= @clie.name
      end
    end
    	
    	
    def new
    	@order = Order.new
    end
    
    
    	
    def edit
    	
    end
    
    	
    def create
    	
      @order = Order.create(params[:order].merge(:startorder => Date.today))
    		if @order.errors.empty?
    			redirect_to order_path(@order)
    		else
    			render "new"
    		end	
    end
    
    
    def update
      
    	@order.update_attributes(params[:order])
    		if @order.errors.empty?
    			redirect_to order_path(@order)
    		else
    			render "edit"
    		end
    end
    
    
    def destroy
    	@order.destroy
    	redirect_to action: "index"
    end

	private
		def find_order
			@order = Order.where(id: params[:id]).first
			
		end

end
