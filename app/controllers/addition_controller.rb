class AdditionController < ApplicationController

  def new
    @addition = Addition.new
  end

  def create
    @addition = Addition.create(params[:addition])

       if @addition.errors.empty?
    			redirect_to addition_path(@addition)
    		else
    			render "new"
    		end
  end

  def edit
    @addition = Addition.where(:client_id => params[:addition] )
  end

  def update
    @addition.update_attributes(params[:addition])

      if @addition.errors.empty?
    			redirect_to addition_path(@addition)
    		else
    			render "edit"
    		end
  end

  def destroy
    	@addition.destroy
    	redirect_to action: "index"
  end

end
