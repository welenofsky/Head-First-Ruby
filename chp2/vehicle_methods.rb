# These methods are like puts and print in the sense that they are included
# in the top-level execution envireonment like puts and print.
# this means that they do not have to specify a receiver for the methods

def accelerate
	puts "Stepping on the gas"
	puts "Speeding up"
end

def sound_horn
	puts "Pressing the horn button"
	puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
	puts "Turning on #{brightness} headlights"
	puts "Watch out for deer!"
end

sound_horn
accelerate
use_headlights("high-beam")
