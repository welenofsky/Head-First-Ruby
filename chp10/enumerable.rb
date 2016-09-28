class WordSplitter

	include Enumerable

	attr_accessor :string

	# required for enumberable mixin
	def each
		string.split(" ").each do |word|
			yield word
		end
	end
end
