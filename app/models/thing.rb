class Thing < ActiveRecord::Base
  attr_accessible :product, :adcont, :adcontmane
	belongs_to :trader
end
