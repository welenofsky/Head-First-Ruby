module AcceptsComments

	def comments
		@comments ||= []
	end

	def add_comment(comment)
		comments << comment
	end

end

class Clip

	attr_reader :comments

	def play
		puts "Playing #{object_id}..."
	end

end

class Video < Clip
	attr_accessor :resolution

	include AcceptsComments	
end

class Song < Clip
	attr_accessor :beats_per_minute

	include AcceptsComments	
end

class Photo
	include AcceptsComments
	def show
		puts "Display #{object_id}..."
	end
end
photo = Photo.new
photo.add_comment("Beautiful Colors")
photo.show

p photo.comments

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")
song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments