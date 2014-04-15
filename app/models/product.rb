class Product < ActiveRecord::Base
  attr_accessible :name
	has_many :advisories
end
