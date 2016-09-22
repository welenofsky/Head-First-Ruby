class HourlyEmployee < Employee

	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage=(hourly_wage)
		# validation
	end

	def hours_per_week=(hours_per_week)
		# validation
	end

	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = (salary / 365.0) * 14
		pay_for_period = format("%0.2f", pay_for_period)
		puts "Pay this period: $#{pay_for_period}"
	end

end

class SalariedEmployee < Employee

	attr_reader :salary

	def salary=(salary)
		# validation
	end

	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = (salary / 365.0) * 14
		pay_for_period = format("%0.2f", pay_for_period)
		puts "Pay this period: $#{pay_for_period}"
	end

end

class Employee

	attr_reader :name, :salary

	def name=(name)
		if name == ""
			raise "Name cannot be blank!"
		end
		@name = name
	end

	def salary=(salary)
		if salary < 0
			raise "A salary of #{salary} isn't valid!"
		end
		@salary = salary
	end

end