class Client < ActiveRecord::Base
  attr_accessible :name, :address, :coming, :comments
	has_one :user, :through => :manager
	has_one :manager
  has_many :additions
	accepts_nested_attributes_for :additions, :allow_destroy => true
  has_many :orders
	has_many :magazines
end
