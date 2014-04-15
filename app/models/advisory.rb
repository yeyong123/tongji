class Advisory < ActiveRecord::Base
  attr_accessible :address,:sap,:time, :company, :content, :email, :fax, :mobel_phone, :name, :odd_type, :product_id, :region_id, :stem, :telphone,:province_id, :user_id
	delegate :pinyin_abbr, to: :province, prefix: true, allow_nil: true
	belongs_to :product
	belongs_to :region
	belongs_to :province
	belongs_to :user
	ODD_TYPE = ["公司","个人","老机会", "售后", "未录入"]
	STEM = ["来电咨询","在线咨询","后台订单","老机会","行业网站"]
	validates :odd_type, inclusion: ODD_TYPE
	validates :stem, inclusion: STEM

end
