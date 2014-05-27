class Clue < ActiveRecord::Base
  attr_accessible :name
	has_many :advisories
	has_many :kinds, through: :advisories
end
