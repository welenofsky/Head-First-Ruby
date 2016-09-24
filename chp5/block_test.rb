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
