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
	def has_user_checked_in_today?(user)
		return user.checkins.find_by_date(Date.current)
	end
	def chart_data
		today = Date.today
		date_data = {}
		today.downto(today - 30).reverse_each {|d| date_data[d]=0}
		date_count_from_db = Checkin.select("'date', count(*) as count").where("date in (?)", date_data.keys).group("'date'")
		date_count_from_db.each {|d| date_data[d.date] = d.count}
		data = {
			labels: date_data.keys,
			datasets: [
			    {
			    	label: "How everyone were doing in the last 30 days (number of checkins per day)",
			        backgroundColor: "rgba(220,220,220,0.5)",
			        borderColor: "rgba(244, 66, 66,1)",
			        data: date_data.values
			    }
			]
		}
	end
	def chart_options
		options= {
			responsive: true,
			fontSize: 1,
			maintainAspectRatio: false,
			scaleFontColor: "rgba(220,220,220,0.5)",
			scales: {
	            yAxes: [{
	            	#display: false,
	            	ticks: {
                    	#max: 5,
                    	min: 0,
                    	stepSize: 1
                	}
	            }]
	        }
		}
	end
end