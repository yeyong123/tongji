class Kind < ActiveRecord::Base
  attr_accessible :name
	has_many :advisories
	has_many :clues, through: :advisories

end
