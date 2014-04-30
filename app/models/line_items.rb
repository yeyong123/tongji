class LineItems < ActiveRecord::Base
  attr_accessible :product_id, :province_id
	belongs_to :product
	belongs_to :provnice
end
