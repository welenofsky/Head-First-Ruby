class Employee

	attr_reader :name, :salary

	def name=(name)
		@name = name
	end

	def salary=(salary)
		@salary = salary
	end

	def initialize(name = "Anonymous", salary = 0.0)
		if name == ""
			raise "Name cannot be blank!"
		end

		if salary < 0
			raise "A salary of #{salary} isn't valid!"
		end

		@name = name
		@salary = salary
	end

	def print_pay_stub
		puts "Name: #{name}"
		pay_for_period = (@salary / 365.0) * 14
		pay_for_period = format("%0.2f", pay_for_period)
		puts "Pay this period: $#{pay_for_period}"
	end

end
