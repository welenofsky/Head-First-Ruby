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
	
	def move(destination)
		puts "Running to the #{destination}."
	end
	
end

class Cat < Animal

	def talk
		puts "Meow!"
	end

	def move(destination)
		puts "Running to the #{destination}."
	end

end

bird = Bird.new
dog = Dog.new
cat = Cat.new

bird.move("tree")
dog.talk
bird.talk
cat.move("House")