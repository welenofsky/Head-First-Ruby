lines = []

File.open('votes.txt') do |file|
	lines = file.readlines
end

# 0 becomes default val if key doesn't exist
votes = Hash.new(0)

lines.each do |line|
	name = line.chomp
	name.upcase!
	votes[name] += 1
end

votes.each do |name, count|
	puts "#{name}: #{count}"
end
