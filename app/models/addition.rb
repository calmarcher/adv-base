class Addition < ActiveRecord::Base
  attr_accessible :client_id, :cont, :contname, :email
	belongs_to :client
end
