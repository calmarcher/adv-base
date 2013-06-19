class User < ActiveRecord::Base
  attr_accessible :login, :pass, :status
	has_many :client, :through => :managers
end
