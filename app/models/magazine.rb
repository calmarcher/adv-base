class Magazine < ActiveRecord::Base
  attr_accessible :client_id, :comment, :startmag, :stopmag, :price
	belongs_to :client
end
