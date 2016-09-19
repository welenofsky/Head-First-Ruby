class Animal

	attr_reader :name, :age

	def name=(name)
		if name == ""
			raise "Name cannot be blank!"
		else
			@name = name
		end
	end

	def age=(age)
		if(age < 0)
			raise "An age of #{age} isn't valid!"
		else
			@age = age
		end
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end

	def move(destination)
		puts "Running to the #{destination}."
	end

	def to_s
		puts "#{@name} the #{self.class.name.downcase} is #{@age} years old"
	end

end


class Bird < Animal
	
	def talk
		puts "Chirp! Chirp!"
	end
	
	def move(destination)
		puts "Flying to the #{destination}."
	end

end

class Dog < Animal

	def talk
		puts "Bark!"
	end

end

class Cat < Animal

	def talk
		puts "Meow!"
	end

end

class Armadillo < Animal

	def move(destination)
		puts "#{@name} unrolls!"
		super
	end

end
