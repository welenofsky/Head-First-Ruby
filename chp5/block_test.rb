def my_method(&my_block)
	puts "We're in method, about to invoke your block!"
	my_block.call
	puts "We're back in the method!"
end

my_method do
	puts "We're in the block!"
end

my_method do
	puts "It's a block party!"
end

my_method do
	puts "Woooo!"
end


def give(&my_block)
	my_block.call("2 turtle doves", "1 partridge")
end

give do |present1, present2|
	puts "My method gave to me..."
	puts present1, present2
end
