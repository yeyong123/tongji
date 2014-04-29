module AdvisoriesHelper
	def today
		Advisory.today
	end

	def yester_day
		Advisory.by_month
	end

	def week
		Advisory.past_week
	end

end
