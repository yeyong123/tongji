class Product < ActiveRecord::Base
  attr_accessible :name
	has_many :advisories

	before_destroy :referenced_by_any_advisory

	private 
		
	def referenced_by_any_advisory
		if advisories.empty?
			return true
		else
			errors.add(:base, "不能删除,有关联的产品")
			return false
		end
	end
end
