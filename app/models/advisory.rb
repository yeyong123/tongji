class Advisory < ActiveRecord::Base
  attr_accessible :address,:sap,:time, :company, :content, :email, :fax, :mobel_phone, :name, :odd_type, :product_id, :region_id, :stem, :telphone,:province_id, :user_id, :clue_id, :kind_id
	delegate :pinyin_abbr, to: :province, prefix: true, allow_nil: true
	belongs_to :product
	belongs_to :region
	belongs_to :province
	belongs_to :clue
	belongs_to :kind
	belongs_to :user

end
