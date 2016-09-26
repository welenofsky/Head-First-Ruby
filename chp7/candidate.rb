class Candidate
	attr_accessor :name, :age, :occupation, :hobby, :birthplace
	def initialize(name, options)
		self.name = name
		self.age = options[:age]
		self.occupation = options[:occupation]
		self.hobby = options[:hobby]
		self.birthplace = options[:birtplace]
	end
end

## Notes
# "you should use symbols as keys whenever you’re working with a hash parameter; it’s more efficient."

## These are all equiv definitions.
#candidate = Candidate.new("Amy Nguyen", { age => 37, occupation => "Engineer", hobby => "Lacrosse" })
#candidate = Candidate.new("Amy Nguyen", age => 37, occupation => "Engineer", hobby => "Lacrosse")
candidate = Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer", hobby: "Lacrosse")

p candidate