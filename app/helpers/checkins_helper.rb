module CheckinsHelper
	def get_end_date_of_month(year, month)
		return Date.civil(year.to_i, month.to_i, -1)
	end
	def get_beginning_date_of_month(year, month)
		return Date.civil(year.to_i, month.to_i, 1)
	end
	def get_month_date_range(year, month)

		return get_beginning_date_of_month(year, month), get_end_date_of_month(year.to_i, month.to_i)
	end
	def get_beginning_wday(year, month)
		return Date.civil(year.to_i, month.to_i, 1).wday
	end
end