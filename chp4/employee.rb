class HourlyEmployee < Employee

	attr_reader :hourly_wage, :hours_per_week

	def initialize(name = "Anonymous", hourly_wage = 0.0, hours_per_week = 0.0)
		self.name = name
		self.hourly_wage = hourly_wage
		self.hours_per_week = hours_per_week
	end

	def hourly_wage=(hourly_wage)
		# validation
	end

	def hours_per_week=(hours_per_week)
		# validation
	end

	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = hourly_wage & hours_per_week * 2
		formatted_pay = format("$%0.2f", pay_for_period)
		puts "Pay this period: $#{formatted_pay}"
	end

end

class SalariedEmployee < Employee

	attr_reader :salary

	def salary=(salary)
		# validation
	end

	def initialize(name = "Anonymous", salary = 0.0)
		self.name = name
		self.salary = salary
	end

	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = (salary / 365.0) * 14
		formatted_pay = format("$%0.2f", pay_for_period)
		puts "Pay this period: $#{formatted_pay}"
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