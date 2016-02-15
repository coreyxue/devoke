module CheckinsHelper
	def get_end_date_of_month(year, month)
		return Date.civil(year.to_i, month.to_i, -1)
	end
	def get_month_date_range(year, month)
		pre_month = month
		pre_year = year
		if month.to_i - 1 == 0
			pre_month = 12
			pre_year = year.to_i - 1
		else
			pre_month = month.to_i - 1
		end
		return get_end_date_of_month(pre_year, pre_month), get_end_date_of_month(year.to_i, month.to_i)
	end
end