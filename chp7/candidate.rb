class Candidate
	attr_accessor :name, :age, :occupation, :hobby, :birthplace
	# The hash defaults are called "Keyword Arguments", new in ruby 2.0
	def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace: "Sleepy Creek")
		self.name = name
		self.age = age
		self.occupation = occupation
		self.hobby = hobby
		self.birthplace = birthplace
	end
end

## Notes
# "you should use symbols as keys whenever you’re working with a hash parameter; it’s more efficient."

## These are all equiv definitions.
#candidate = Candidate.new("Amy Nguyen", { age => 37, occupation => "Engineer", hobby => "Lacrosse" })
#candidate = Candidate.new("Amy Nguyen", age => 37, occupation => "Engineer", hobby => "Lacrosse")
candidate = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer", hobby: "Lacrosse")

p candidate