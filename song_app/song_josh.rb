  
class Song
attr_reader :title, :artist, :duration, :lyrics

def initialize(title, artist, duration, lyrics)
  @title = title
  @artist = artist
  @duration = duration
  @lyrics = lyrics
  end

  def play
    `say #{@lyrics}`
  end

  def friendly_duration
    minutes = @duration / 60
    seconds = @duration % 60

    "#{minutes} minutes, #{seconds} seconds." #this is an implicit return, will be returned with method
  end

end

# Driver code
# song = Song.new("the right stuff", "vanilla ice", 134, "I got the right stuff, baby")

# p song.title
# p song.artist
# p song.duration
# p song.lyrics
# p song.friendly_duration
# p song.play
