class Order < ActiveRecord::Base
  attr_accessible :client_id, :order, :price, :startorder, :stoporder
	belongs_to :client
end
