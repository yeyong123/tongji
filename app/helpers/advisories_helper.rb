module AdvisoriesHelper
	def today
		Advisory.today
	end

	def yester_day
		Advisory.by_month
	end

end
